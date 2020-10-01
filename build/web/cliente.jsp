<%-- 
    Document   : cliente
    Created on : 28/09/2020, 11:22:33
    Author     : i14i34500w10
--%>
<%@page import="javax.swing.table.DefaultTableModel" %>
<%@page import="Modelos.Clientes" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente</title>

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
   
        
        
   <ul class="nav nav-tabs">
  <a class="navbar-brand" href="index.jsp">
  <img src="spiderman.jpg" alt="logo" style="width:40px;">
  </a>    
       
   <li class="nav-item">
   <a class="nav-link active" href="Empleados.jsp">F</a>
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
            <form action="cliente_sr" method="post" class="form-group">
                 <h1>Formulario Clientes</h1>
                <label><b>ID cliente</b></label>
                <input type="text" name="txt_idc" id="txt_idc" value="0" class="form-control" readonly >
                <label ><b>Nombre</b></label>
                <input type="text" name="cliente_nombre" id="cliente_nombre" class="form-control" placeholder="Example: ingeniero" required  >
                <label ><b>Apellido</b></label>
                <input type="text" name="cliente_apellido" id="cliente_apellido" class="form-control" placeholder="Example: ingeniero" required >
                <label ><b>NIT</b></label>
                
                <input type="text" name="cliente_nit" id="cliente_nit" class="form-control" placeholder="Example: ingeniero" required >
                <input type="radio" id="gender" name="gender" value="0" required>
                <label for="male">Male</label><br>
                <input type="radio" id="gender" name="gender" value="1" required>
                <label for="female">Female</label><br>
            
           
                
                <label ><b>telefono</b></label>
                <input type="number" name="cliente_telefono" id="cliente_telefono" class="form-control" placeholder="Example: ingeniero" required >
                <label ><b>Correo</b></label>
                <input type="email" name="cliente_correo" id="cliente_correo" class="form-control" placeholder="Example: ingeniero" required >
                <label ><b>Fecha de Ingreso</b></label>
                <input type="datetime-local" name="cliente_fecha" id="cliente_fecha" class="form-control" placeholder="Example: ingeniero" required >
               
                 <br>
                <button name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary">Primary</button>
                <button name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-primary">Modificar</button>
                <button name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-primary">Eliminar</button>
            </form>
                       
    <table class="table table-striped resposive">
        <thead class="responsive">
      <tr>
        <th>Nombre</th>
        <th>Apellidos</th>
        <th>NIT</th>
        <th>Genero</th>
        <th>Telefono</th>
        <th>Correo</th>
        <th>Fecha Ingreso</th>
      </tr>
    </thead>
    <tbody id="tbl_clintes">
        <% 
       Clientes cliente = new Clientes();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = cliente.leer_clientes();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-ide=" + tabla.getValueAt(t,0) + ">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,2) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,3) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,4) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,5) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,6) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,7) + "</td>");
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
