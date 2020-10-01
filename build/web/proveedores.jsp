<%-- 
    Document   : proveedores
    Created on : 28/09/2020, 15:45:41
    Author     : i14i34500w10
--%>
<%@page import="javax.swing.table.DefaultTableModel" %>
<%@page import="Modelos.Proveedores" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proveedores</title>
    </head>
    <body>
        <h1>Formulaario para Proveedores</h1>
        <br>
   <ul class="nav nav-tabs">
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
         <div class="container">
            <form action="Proveedores_sr" method="post" class="form-group">
                <label><b>ID Proveedores</b></label>
                <input type="text" name="txt_idp" id="txt_idp" value="0" class="form-control" readonly >
                <label ><b>Nombre del Proveedor</b></label>
                <input type="text" name="nombrepro" id=nombrepro class="form-control" placeholder="Example: Pepe " required  >
                <label ><b>Nit</b></label>
                <input type="text" name="nit" id="nit" class="form-control" placeholder="Example: 145894-5" required >
                <label ><b>Direccion</b></label>
                <input type="text" name="direccion" id="direccion" class="form-control" placeholder="Example: calle del arco casa 14 Antigua Guatemala" required >
                <label ><b>Telefono</b></label>
                <input type="text" name="telefono" id="telefono" class="form-control" placeholder="Example: 78324556" required >
                
            
           
             
               
                 <br>
                <button name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary">Primary</button>
                <button name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-primary">Modificar</button>
                <button name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-primary">Eliminar</button>
            </form>
                       
    <table class="table table-striped resposive">
        <thead class="responsive">
      <tr>
        <th>Proveedor</th>
        <th>NIT</th>
        <th>Direccion</th>
        <th>Telefono</th>
        
      </tr>
    </thead>
     <tbody id="tbl_proveedores">
        <% 
       Proveedores proveedor = new Proveedores();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = proveedor.leer_proveedores();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-ide=" + tabla.getValueAt(t,0) + ">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,2) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,3) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,4) + "</td>");
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
