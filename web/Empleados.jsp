

<%-- 
    Document   : Empleados
    Created on : 25/09/2020, 17:29:33
    Author     : i14i34500w10
--%>
<%@page import="Modelos.Puesto" %>
<%@page import="Modelos.Empleado" %>
<%@page import="java.util.HashMap"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title>
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
    <a class="nav-link active" href="jsp1.jsp">Ingresar Puestos</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="index.jsp">Regresar Pagina Principal</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Empleados.jsp">Refrescar</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#">Disabled</a>
  </li>
</ul>
        <br>    
    
        <div>
            <h1>Formulario Empleados</h1>
            <form action="sr_empleados" method="post" class="form-group">
                <label>ID empleados</label>
                <input  type="text" name="txt_idp" id="txt_idp" value="0" class="form-control" readonly>
                <label>Nombres</label>
                <input type="text" name="txt_nombre" id="txt_nombre" class="form-control" placeholder="Victor Felipe" required>
                <label>Apellidos</label>
                <input type="text" name="txt_apellido" id="txt_apellido" class="form-control" placeholder="Bonachon Rodriguez" required>
                <label>Direccion</label>
                <input type="text" name="txt_direccion" id="txt_direccion" class="form-control" placeholder="No# " required>
                <label>Telefono</label>
                <input type="number" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="7832 0098" required>
                <label>DPI</label>
                <input type="number" name="txt_dpi" id="txt_dpi" class="form-control" placeholder="25768 757 0301" required >
                
                <input type="radio" id="gender" name="gender" value="0" required>
                <label for="male">Male</label><br>
                <input type="radio" id="gender" name="gender" value="1" required>
                <label for="female">Female</label><br>
            
           
 
             
                <label>Fecha De Nacimiento</label>
                <input type="date" name="txt_fecha" id="txt_fecha" class="form-control" placeholder="15 de enero de 2019" required >
               <label>ID puesto</label>
               <select name="drop_puesto" id="drop_puesto" class="form-control" required>
                    <% 
                        Puesto puesto = new Puesto();
                        HashMap<String,String> drop = puesto.mostrar_puesto();
                         for (String i:drop.keySet()){
                             out.println("<option value='" + i + "'>" + drop.get(i) + "</option>");
                         }
 
                    %>
                </select>
                <label>Fecha de inicio de laboral</label>
                <input type="date" name="txt_fechalabor" id="txt_fechalabor" class="form-control" placeholder="" required>
                <label>Fecha de Ingreso</label>
                <input type="datetime-local" name="txt_fechaingreso"  id="txt_fechaingreso" class="form-control" placeholder="" required>
                <br>
                <button name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary">Agregar</button>
                <button name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-primary">Modificar</button>
                <button name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-primary">Eliminar</button>
       
            </form>
             
    <table class="table table-striped" responsive>
        <thead class="responsive">
      <tr>
        <th>Nombre</th>
        <th>Apellidos</th>
        <th>Direccion</th>
        <th>Telefono</th>
        <th>DPI</th>
        <th>Genero</th>
        <th>Fecha Nacimiento</th>
        <th>Puesto</th>
        <th>Fecha inicion Laboral</th>
        <th>Fecha de Ingreso</th>
      </tr>
    </thead>
    <tbody id="tbl_empleados">
        <% 
        Empleado empleado = new Empleado();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = empleado.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-ide=" + tabla.getValueAt(t,0) + " data-id_p=" + tabla.getValueAt(t,9) + ">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,2) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,3) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,4) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,5) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,6) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,7) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,8) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,10) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,11) + "</td>");
            out.println("</tr>");
        
        }
        %>
        
    </tbody>
    </table>
                    
                    
                    
        </div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>    
<script type="text/javascript">
   $('#tbl_empleados').on('click','tr td',function(evt){
       var target,id,id_p,nombres,apellidos,direccion,telefono,dpi,genero,fecha,puesto,fechaini,fechaigre; 
       target = $(event.target);
       id = target.parent().data('ide');
       id_p = target.parent().data('id_p');
       nombres = target.parent("tr").find("td").eq(0).html();
       apellidos = target.parent("tr").find("td").eq(1).html();
       direccion = target.parent("tr").find("td").eq(2).html();
       telefono = target.parent("tr").find("td").eq(3).html();
       dpi = target.parent("tr").find("td").eq(4).html();
       genero = target.parent("tr").find("td").eq(5).html();
       fecha = target.parent("tr").find("td").eq(6).html();
       fechaini = target.parent("tr").find("td").eq(8).html();
       fechaigre = target.parent("tr").find("td").eq(9).html();
       $("#txt_idp").val(id);
       $("#txt_nombre").val(nombres);
       $("#txt_apellido").val(apellidos);
       $("#txt_direccion").val(direccion);
       $("#txt_telefono").val(telefono);
       $("#txt_dpi").val(dpi);
       $("#gender").val(genero);
       $("#txt_fecha").val(fecha);
       $("#drop_puesto").val(id_p);
       $("#txt_fechalabor").val(fechaini);
       $("#txt_fechaingreso").val(fechaigre);
       
    }); 
    
    
    
</script>

    </body>
</html>


