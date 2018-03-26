<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	          <link href="bootsrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="bootsrap/js/bootstrap.min.js"></script>

<title>Ajouter un ingredient</title>
		
         <script type="text/javascript">
         	$(document).ready(function() {

    var wrapper         = $(".input_fields_wrap"); //Fields wrapper
    var add_button      = $(".add_field_button"); //Add button ID
    
    var x = 1; //initlal text box count
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
         var max_fields      = document.getElementById("num").value; //maximum input boxes allowed
         if(max_fields==null || max_fields<=0) alert("Entrer un nombre valide !!");
         else{
        for(x=0;x < max_fields; x++){ //max input box allowed
            //text box increment
            $(wrapper).append('<div style="margin-top: 10px;"><div class="form-group" ><label for="Nom">Nom :</label><input type="text" class="form-control" id="nom" style="width: 200px;"></div><div class="form-group"><label for="stock">Stock min :</label><input type="number" class="form-control" id="stock" style="width: 200px;"></div><div class="form-group"><label for="Quantite">Quantite :</label><input type="number" class="form-control" id="quantite" style="width: 200px;"></div><div class="form-group"><label for="Prix">Prix :</label><input type="number" class="form-control" id="prix" style="width: 200px;"></div><div class="form-group"><label for="Jour">Jour :</label><input type="date" class="form-control" id="jour" style="width: 200px;"></div></div>'); //add input box
        }}
    });
    
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
    })
});
         	    	$(document).ready(function() {

    var wrapper         = $(".modifier_ingred"); //Fields wrapper
    var add_button      = $(".modifier_button"); //Add button ID
    
    var x = 1; //initlal text box count
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
         var max_fields      = document.getElementById("num1").value; //maximum input boxes allowed
         if(max_fields==null || max_fields<=0) alert("Entrer un nombre valide !!");
         else{
        for(x=0;x < max_fields; x++){ //max input box allowed
            //text box increment
            $(wrapper).append('<div style="margin-top: 10px;"><div class="form-group"><label for="Nom">Nom :</label> <input type="text" class="form-control" id="nom"> </div> <div class="form-group"> <label for="Quantite">Quantite :</label> <input type="number" class="form-control" id="quantite"></div><div class="form-group"><label for="Prix">Prix :</label><input type="number" class="form-control" id="prix"> </div><div class="form-group">   <label for="Jour">Jour :</label>   <input type="date" class="form-control" id="jour"></div></div>'); //add input box
        }}
    });
    
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
    })
});
         </script>
<style type="text/css">
	.banner{
		width: 100%;
		height: 100px;

	}


</style>
</head>
<body>
	     <%@ include file="header.jsp" %>

  	<h1 class="text-center">Ajouter des Ingredients</h1><br>
  	<div style="margin-left: 25px;">
  		 	    <div class="col" style="float: left;">
  		<label for="num" >Entrer le nombre d'ingredient a ajouter :</label>
  	</div>
  		    <div class="col" style="float: left;margin-top: -5px;margin-left: 20px">
  		<input class="form-control"  type="number" name="num" id="num" style="width: 70px;">
  	</div>
  		    <div class="col" style="float: left;margin-left: 20px;margin-top: -5px">
  		<button class="add_field_button btn btn-info">Ajouter</button>
  	</div>
  	<div style="clear: left;"></div>
  
  	</div><br>
  	<form class="form-inline text-center" action="Ajouter_Ingred" >
  	<div class="input_fields_wrap well">		
  <div class="form-group ">
    <label for="Nom">Nom :</label>
    <input type="text" class="form-control" id="nom" style="width: 200px;">
  </div>
  <div class="form-group">
    <label for="stock">Stock min :</label>
    <input type="number" class="form-control" id="stock" style="width: 200px;">
  </div>
  <div class="form-group">
    <label for="Quantite">Quantite :</label>
    <input type="number" class="form-control" id="quantite" style="width: 200px;">
  </div>
   <div class="form-group">
    <label for="Prix">Prix :</label>
    <input type="number" class="form-control" id="prix" style="width: 200px;"> 
  </div>
   <div class="form-group">
    <label for="Jour">Jour :</label>
    <input type="date" class="form-control" id="jour" style="width: 200px;">
  </div>
</div><br>
  <button type="submit" class="btn btn-default col-sm-2 " style="margin-left: 35%;">Submit</button>
      

</form>
<br><br>
 	<h1 class="text-center">Modifier des Ingredients</h1><br>
 	<div style="margin-left: 25px;">
  		 	    <div class="col" style="float: left;">
  		<label for="num" >Entrer le nombre d'ingredient a modifier :</label>
  	</div>
  		    <div class="col" style="float: left;margin-top: -5px;margin-left: 20px">
  		<input class="form-control"  type="number" name="num1" id="num1" style="width: 70px;">
  	</div>
  		    <div class="col" style="float: left;margin-left: 20px;margin-top: -5px">
  		<button class="modifier_button btn btn-info">Modifier</button>
  	</div>
  	<div style="clear: left;"></div>
  
  	</div><br>
 		
  	<form class="form-inline text-center " action="Ajouter_Ingred" >
  		<div class="modifier_ingred well col-sm-10 col-sm-offset-1">
  <div class="form-group">
    <label for="Nom">Nom :</label>
    <input type="text" class="form-control" id="nom">
  </div>
  
  <div class="form-group">
    <label for="Quantite">Quantite :</label>
    <input type="number" class="form-control" id="quantite">
  </div>
   <div class="form-group">
    <label for="Prix">Prix :</label>
    <input type="number" class="form-control" id="prix">
  </div>
   <div class="form-group">
    <label for="Jour">Jour :</label>
    <input type="date" class="form-control" id="jour">
  </div>
</div><br>
  <button type="submit" class="btn btn-default col-sm-2" style="margin-left: 35%;">Submit</button>
</form>
     <%@ include file="bar.jsp" %>

</body>
</html>