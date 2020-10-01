<%-- 
    Document   : marca
    Created on : 28/09/2020, 22:45:33
    Author     : i14i34500w10
--%>

<%@page import="javax.swing.table.DefaultTableModel" %>
<%@page import="Modelos.Marca" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Marca</title>
    </head>
    <body>
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
            <form action="marca_sr" method="post" class="form-group">
                <h1>Formulario Clientes</h1>
                <label><b>ID Marca</b></label>
                <input type="text" name="id_marca" id="id_marca" value="0" class="form-control" readonly >
                <label ><b>Marca</b></label>
                <input type="text" name="Marca_nombre" id="Marca_nombre" class="form-control" placeholder="Example: ingeniero" required  >
                <br>
                <button name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary">Agregar</button>
                <button name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-primary">Modificar</button>
                <button name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-primary">Eliminar</button>
            </form>
             <table class="table table-striped resposive">
        <thead class="responsive">
      <tr>
        <th>Marca</th>
      
      </tr>
    </thead>
    <tbody id="tbl_marca">
        <% 
       Marca marcas =  new Marca();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = marcas.leer_marca();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-ide=" + tabla.getValueAt(t,0) + ">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
            out.println("</tr>");
        
        }
        %>
    </tbody>
    </table>
             
             
             
             
         </div>
                
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>        

    </body>
</html>
