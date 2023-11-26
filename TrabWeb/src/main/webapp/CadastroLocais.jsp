<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Locais</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
<div class="container">
        <%@ include file="./menu.jsp" %>
	    
		<h1 class="text-center mt-5 mb-5">Cadastrar Locais</h1>
		<form action="recebeDados.jsp" method="POST">
			<div>
				<label class="form-label">Informe Nome</label> <input
					class="form-control" type="text" placeholder="Informe nome"
					name="nomeL" id="nomeL">
			</div>
            <div class="mt-3">
                <label class="form-label">Informe Rua</label> 
                <input class="form-control" type="text" placeholder="Informe rua" name="rua">
            </div>
            <div class="mt-3">
                <label class="form-label">Informe Número</label> 
                <input class="form-control" type="number" placeholder="Informe numero" name="numero">
            </div>
            <div class="mt-3">
                <label class="form-label">Informe Bairro</label> 
                <input class="form-control" type="text" placeholder="Informe bairro" name="bairro">
            </div>
            <div class="mt-3">
                <label class="form-label">Informe UF</label> 
                <input class="form-control" type="text" placeholder="Informe uf" name="uf">
            </div>
            <div class="mt-3">
                <label class="form-label">Informe CEP</label> 
                <input class="form-control" type="text" placeholder="Informe cep" name="cep">
            </div>
            <div class="mt-5 d-flex justify-content-between">
               <button onclick="validaDados()" class="btn btn-outline-primary">Enviar</button>
               <input type="reset" class="btn btn-outline-danger" />
            </div>	
		</form>
	</div>
	<script>
	    function validaDados(){	    	
	    	event.preventDefault();
	           var inputNome =  document.getElementById("nome");
	           var inputCep = document.getElementById("cep");
	           var inputRua = document.getElementById("rua");
	           var inputNumero = document.getElementById("numero");
	           var inputBairro = document.getElementById("bairro");
	           var inputCidade = document.getElementById("cidade");
	           var inputEstado = document.getElementById("estado");
	           
	           if(inputNome.value == ''){
	                alert("Informe o nome")
	                inputNome.focus()
	                return
	           }
	           if(inputCep.value == ''){
	           	alert("Informe o CEP")
	           	inputEmail.focus()
	           	return
	           }
	           if(inputRua.value == ''){
		           	alert("Informe a rua")
		           	inputEmail.focus()
		           	return
		       }
	           if(inputNumero.value == ''){
		           	alert("Informe o número")
		           	inputEmail.focus()
		           	return
		       }
	           if(inputBairro.value == ''){
		           	alert("Informe o bairro")
		           	inputEmail.focus()
		           	return
		       }
	           if(inputCidade.value == ''){
		           	alert("Informe o cidade")
		           	inputEmail.focus()
		           	return
		       }
	           if(inputEstado.value == ''){
		           	alert("Informe o estado")
		           	inputEmail.focus()
		           	return
		       }
	          document.getElementsByTagName("form")[0].submit() // Se tudo estiver preenchido, envia o formulário
	       }
	        
	        
	</script>
</body>
</html>