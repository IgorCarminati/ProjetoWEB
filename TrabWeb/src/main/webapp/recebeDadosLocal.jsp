<%@page import="controllers.LocalController"%>
<%@page import="models.Local"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
  String nome = request.getParameter("nome");
  String rua = request.getParameter("rua");
  String numero = request.getParameter("numero");
  String bairro = request.getParameter("bairro");
  String cidade = request.getParameter("cidade");
  String uf = request.getParameter("uf");
  String cep = request.getParameter("cep");
  /*out.print(nome + " " + email);*/
  
  Local lc = new Local();
  lc.setNome(nome);
  lc.setRua(rua);
  lc.setNumero(numero);
  lc.setBairro(bairro);
  lc.setCidade(cidade);
  lc.setUf(uf);
  lc.setCep(cep);
  
  LocalController lcController = new LocalController();
  if(lcController.salvar(lc)){
	  response.sendRedirect("./consultaLocal.jsp");
  }else{
	  out.print("deu ruim");
  }
  
 /*int idade = Integer.parseInt(request.getParameter("idade"));
  
  String msg = "maior";
  if(idade < 18){
	  msg = "menor";
  }
  
  out.print("Seu nome é: " + nome + " vc tem " + idade + " e vc é " + msg);*/
%>