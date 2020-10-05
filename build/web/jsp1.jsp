<%-- 
    Document   : jsp1
    Created on : 25/09/2020, 15:11:55
    Author     : i14i34500w10
--%>
<%@page import="javax.swing.table.DefaultTableModel" %>
<%@page import="Modelos.Puesto" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Puestos</title>
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
  

        
  <ul class="nav nav-tabs">
  
<a class="navbar-brand" href="index.jsp">
    <img src="spiderman.jpg" alt="logo" style="width:40px;">
  </a>      
      
  <li class="nav-item">
    <a class="nav-link active" href="Empleados.jsp">Formulario Empleados</a>
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
        

        <h1>Formulario Puesto</h1>
        <div  >
            <form action="sr_jsp1" method="post" class="form-group">
                <label>ID</label>
                <input type="text" name="txt_id" id="txt_id" value="0" class="form-control" style=" margin-right: 20px " readonly>
                <label>puesto</label>
                <input type="text" name="txt_puesto" id="txt_puesto" class="form-control" placeholder="Example: ingeniero" required >
                <br>
                <button name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary">Primary</button>
                <button name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-primary">Modificar</button>
                <button name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-primary">Eliminar</button>
            </form>
            
             <table id="tavla" class="table table-striped darksalmon">
    <thead>
      <tr>
        <th>Pustos</th>
    
      </tr>
    </thead>
    <tbody id="tbl_puestos">
        <% 
        Puesto puestos = new Puesto();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = puestos.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id=" + tabla.getValueAt(t,0) + ">");
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
<script type="text/javascript">
 $('#tbl_puestos').on('click','tr td',function(evt){
       var target,id,puesto; 
       target = $(event.target);
       id = target.parent().data('id');
      
       puesto = target.parent("tr").find("td").eq(0).html();
       
       $("#txt_id").val(id);
       $("#txt_puesto").val(puesto);
      
    });



</script>
    </body>
</html>
