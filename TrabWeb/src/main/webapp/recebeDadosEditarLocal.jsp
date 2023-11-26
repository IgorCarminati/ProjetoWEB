<%@page import="controllers.LocalController"%>
<%@page import="models.Local"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

  String id = request.getParameter("id");
  String nome = request.getParameter("nome");
  String rua = request.getParameter("rua");
  String numero = request.getParameter("numero");
  String bairro = request.getParameter("bairro");
  String cidade = request.getParameter("cidade");
  String uf = request.getParameter("uf");
  String cep = request.getParameter("cep");
  
  Local lc = new Local(Integer.parseInt(id), nome, rua, numero, bairro, cidade, uf, cep);
   
  LocalController lcController = new LocalController();
  if(lcController.alterar(lc)){
	  response.sendRedirect("./consultaLocal.jsp");
  } 
 
%>