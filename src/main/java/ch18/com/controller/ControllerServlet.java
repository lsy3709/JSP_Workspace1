package ch18.com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch18.com.model.LoginBean;

public class ControllerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");		

		String id = request.getParameter("id");
		String password = request.getParameter("passwd");

		//DTO 형식 처럼 사용되는 객체.
		// 입력 받은 id , 패스워드를 임시로 저장 해두는 역할.
		LoginBean bean = new LoginBean();
		bean.setId(id);
		bean.setPassword(password);
		
		// request 내장객체 key: bean , value : bean 실제 객체가 들어 있음. 
		request.setAttribute("bean", bean);

		// bean 객체  내부에 validate() 메서드가 있음. 
		// 하드 코딩이고, 패스워드: admin 으로 하면, true 반환 메서드.
		boolean status = bean.validate();

		// 간단한 유효성 체크를 통과한 후. 뷰에 값을 전달하는 역할. 
		if (status) {
			// mvc_success.jsp 뷰 페이지를 rd 라는 객체에 담아서. 
			// 전달하는 역할. 
			// 뷰로 전달한다.  (request , response 두개의 객체를 전달합니다.)
			// 그러면 뷰에서 해당 객체에 담겨진 데이터를 꺼내서 사용하는 형식. 
			RequestDispatcher rd = request.getRequestDispatcher("mvc_success.jsp");
			// 결과 
			// 웹브라우저에서는 해당 뷰페이지의 정보만 불러오게되고.
			// 해당 URL 주소는 변화가 없음. 
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("mvc_error.jsp");
			rd.forward(request, response);
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
