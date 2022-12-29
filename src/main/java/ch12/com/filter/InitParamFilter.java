package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter {
	private FilterConfig filterConfig = null;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter02 초기화...");
		this.filterConfig = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)	throws IOException, ServletException {
		System.out.println("Filter02 수행...");

		//filter02.jsp 에서 입력받은 내용.
		//뷰에 입력된 정보를 가지고온 아이디와 패스워드.
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");

		//param1, param2 : web.xml 에서 설정된 파라미터 값들.
		String param1 = filterConfig.getInitParameter("id22");
		String param2 = filterConfig.getInitParameter("passwd22");

		String message;

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();

		// 뷰에서 입력된 값 id, passwd
		// web.xml에서 불러온 파라미터 값을 param1,param2 재할당. 
		// 비교하는 알고리즘. 
		if (id.equals(param1) && passwd.equals(param2))
			message = "로그인 성공했습니다.";
		else
			message = "로그인 실패했습니다.";

		writer.println(message);

		filterChain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		System.out.println("Filter02 해제..");
	}
}
