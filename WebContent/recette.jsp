<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

      <script type="text/javascript">
         	$(document).ready(function() {

    var wrapper         = $(".input_fields_wrap"); //Fields wrapper
    var add_button      = $(".add_field_button"); //Add button ID
    
    var x = 1; //initlal text box count
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
        
         var max_fields      = document.getElementById("num").value; //maximum input boxes allowed
         if(max_fields==null || max_fields<=0){alert("saisir un nombre valide");}
         else{
        for(x=0;x < max_fields; x++){ //max input box allowed
            //text box increment
            $(wrapper).append('<div style="margin-top: 10px" class="form-inline"><div class="form-group "><label for="Nom">Nom d\'ingredient:</label><input type="text" class="form-control" id="nom" style="width: 200px;"></div><div class="form-group"><label for="Quantite">Quantite d\'ingredient :</label><input type="number" class="form-control" id="quantite" style="width: 200px;">	</div></div>'); //add input box
        }}
    });
    
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
    })
});</script>

<title>Les recettes </title>
</head>
<body>
     <%@ include file="header.jsp" %>
     <%@ include file="bar.jsp" %>

      	<h1 class="text-center" >Ajouter des recettes</h1><br>

      	  	 	<form autocomplete="off" class=" text-center" action="Ajouter_recette" >
      	  	 		<div class="form-inline">
  <div class="form-group ">
    <label for="Nom">Nom de recette :</label>
    <input type="text" class="form-control" id="nom" required style="width: 200px;">
  </div>
  <div class="form-group">
    <label for="stock">Prix de vente :</label>
    <input type="number" class="form-control" id="stock" required style="width: 200px;">
  </div>
  	  <div class="form-group">
  		<label for="num" > nombre d'ingredients  :</label>
  		<input class="form-control"  type="number" name="num" id="num" style="width: 70px;">
  	</div>
  	      	  		<button class="add_field_button btn btn-info" type="button">Ajouter</button>
</div>
  	<div class="input_fields_wrap well col-sm-offset-2 col-sm-8">	
  		      	  	 		<div class="form-inline">
  	<div class="form-group ">
    <label for="Nom">Nom d'ingredient:</label>
    <input type="text" class="form-control" id="nom" style="width: 200px;">
  </div>

  <div class="form-group">
    <label for="Quantite">Quantite d'ingredient :</label>
    <input type="number" class="form-control" id="quantite" style="width: 200px;">	
</div>
</div>
</div><br>
  <button type="submit" class="btn btn-default col-sm-2 " style="margin-left: 35%;">Submit</button>
      

</form>

</body>
</html>