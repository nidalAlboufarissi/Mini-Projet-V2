<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jQuery Autocomplete</title>
<script src="http://code.jquery.com/jquery-1.7.js"
    type="text/javascript"></script>
<script
    src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
    type="text/javascript"></script>
<link
    href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
    rel="stylesheet" type="text/css" />
<STYLE TYPE="text/css" media="all">
.ui-autocomplete { 
    position: absolute; 
    cursor: default; 
    height: 200px; 
    overflow-y: scroll; 
    overflow-x: hidden;}
</STYLE>

<script type="text/javascript">
$(document).ready(function() {
    $("input#autoText").autocomplete({
        width: 300,
        max: 10,
        delay: 100,
        minLength: 1,
        autoFocus: true,
        cacheLength: 1,
        scroll: true,
        highlight: false,
        source: function(request, response) {
            $.ajax({
                url: "AjaxRequest",
                dataType: "json",
                data: request,
                select: function(event, ui) {
                    $("input#autoText").val(ui.item.value);
                   },
                success: function( data, textStatus, jqXHR) {
                    console.log( data);
                    var items = data;
                    var dataArray=[];
                    $.each(items ,function(i,obj){
                    	dataArray.push([obj.nom]);
                    });
                    response(dataArray);
                },
                error: function(jqXHR, textStatus, errorThrown){
                     console.log( textStatus);
                }
            });
        }

    });
});
   
</script>
</head>
<body>
    <h1>jQuery Autocomplete Example</h1>
    <p>In this example we will have an input box that will provide
        suggestions using autocomplete( url or data, options ) and Ajax
        request.</p>
    <form name="as400samplecode" action="" method="get">

        <table>

            <tr>
                <td><input id="autoText" maxlength="20" />
                </td>
            </tr>

        </table>

    </form>
</body>
</html>