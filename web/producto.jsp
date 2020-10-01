<%-- 
    Document   : producto
    Created on : 30/09/2020, 14:00:59
    Author     : i14i34500w10
--%>
<%@page import="java.util.HashMap"%>
<%@page import="Modelos.Marca"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <style>
            div{
                margin-left: 230px;
                margin-right: 230px;
            }
            
            h1{
                text-align: center;
                
            }
            div.table{
               margin-right: 100px;
            }
        </style>
    </head>
    <body>
              <br>
   <ul class="nav nav-tabs">
   <li class="nav-item">
   <a class="nav-link active" href="">F</a>
   </li>
   <li class="nav-item">
   <a class="nav-link" href="index.jsp">Regresar Pagina Principal</a>
   </li>
   <li class="nav-item">
   <a class="nav-link" href="#">Link</a>
   </li>
   <li class="nav-item">
   <a class="nav-link disabled" href="#">Disabled</a>
   </li>
   </ul>
       <br> 
       <div>
           <form action="" method="post" class="form-group" enctype="multipart/form-dat">
                <h1>Formulario Productos</h1>
                <label><b>ID producto</b></label>
                <input type="text" name="id_marca" id="id_marca" value="0" class="form-control" readonly >
                <label ><b>producto(*)</b></label>
                <input type="text" name="Marca_nombre" id="Marca_nombre" class="form-control" placeholder="Example: ingeniero" required  >
                 <label ><b>Marca(*)</b></label>
                 <select name="select_marca" id="select_marca" class="form-control">
                     <%
                        Marca marca = new Marca();       
                       HashMap<String,String> tabla = marca.select_marca();
                       for(String i:tabla.keySet()){
                      out.println("<option value='" + i + "'>" + tabla.get(i) + "</option>");
                     }

                      %>
                     
                 </select>
                <label ><b>Descripcion(*)</b></label>
                <input type="text" name="Marca_nombre" id="Marca_nombre" class="form-control" placeholder="Example: ingeniero" required  >
                <label ><b>Imagen de la Marca(*)</b></label>
                <input type="file" name="Marca_nombre" id="Marca_nombre" class="form-control" placeholder="Example: ingeniero" required  >
                <label ><b>Precio del Costo(*)</b></label>
                <input type="number" step="any"  name="Marca_nombre" id="Marca_nombre" class="form-control" placeholder="Example: ingeniero" required  >
                <label ><b>Precio de venta(*)</b></label>
                <input type="number" step="any"  name="Marca_nombre" id="Marca_nombre" class="form-control" placeholder="Example: ingeniero" required  >
                <label ><b>Existencia(*)</b></label>
                <input type="number" step="any"  name="Marca_nombre" id="Marca_nombre" class="form-control" placeholder="Example: ingeniero" required  >
                <label ><b>Fecha de Ingreso del Produto(*)</b></label>
                <input type="date"  name="Marca_nombre" id="Marca_nombre" class="form-control" placeholder="Example: ingeniero" required  >
                <br>
  
                
                
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>             
    </body>
</html>
