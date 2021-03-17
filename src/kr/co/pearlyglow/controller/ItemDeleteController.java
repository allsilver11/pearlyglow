package kr.co.pearlyglow.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.peralyglow.DAO.itemsDAO;

@WebServlet("/itemDeleteController")
public class ItemDeleteController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int iNum = Integer.parseInt(req.getParameter("iNum"));
		itemsDAO dao = itemsDAO.getInstance();
		
		int n1 = dao.deleteImg(iNum);
		int n2 = dao.delete(iNum);
		
		resp.sendRedirect(req.getContextPath() + "/stockController");
	}
}
