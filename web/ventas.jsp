<%-- 
    Document   : ventas
    Created on : 4/10/2020, 21:17:33
    Author     : i14i34500w10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ventas</title>
        <style>
            
            #hola{
                margin-left: 250px;
                margin-right: 250px;
            }
            </style>
       
    </head>
    <body>
        <br>
      <div class="container" align="right">
          <br>
  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Clientes</button>

  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
       <div class="modal-body">
   
        <table class="table table-striped table-responsive" >
        <thead >
      <tr>
        <th>Nit</th>
        <th>Nombre del Cliente</th>
      
    </tr>
    </thead>
    <tbody id="tbl_empleados">
        
    </tbody>
   </table>
            
            
            
            
            
        </div>
      
       
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>
        
   <div class="container" align="right">
          <br>
  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Modal">Empleados</button>

  <!-- The Modal -->
  <div class="modal fade" id="Modal">
    <div class="modal-dialog">
      <div class="modal-content">
       <div class="modal-body">
   
        <table class="table table-striped table-responsive" >
        <thead >
      <tr>
        <th>Nit</th>
        <th>Nombre del Cliente</th>
      
    </tr>
    </thead>
    <tbody id="tbl_empleados">
        
    </tbody>
   </table>
            
            
            
            
            
        </div>
      
       
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>
        <div  id="hola" >
        <form action="" method="post" class="form-group" >
            <label><b> ID</b></label>
            <input type="text" name="txt_idv" id="txt_idv" value="0" class="form-control" style=" margin-right: 20px " readonly>
             <label><b>Numero de Factura {*}</b></label>
            <input type="text" name="no_fact" id="no_fact" class="form-control" style=" margin-right: 20px " required>
             <label><b>Serie</b></label>
            <input type="text" name="text_serie" id="txt_serie" class="form-control" style=" margin-right: 20px " required>
             <label><b>Fecha de Factura</b></label>
            <input type="date" name="txt_fecha" id="txt_fecha" class="form-control" style=" margin-right: 20px " required>
             <label><b>Id Cliente </b></label>
            <input type="text" name="txt_idc" id="txt_id" value="0" class="form-control" style=" margin-right: 20px " readonly>
             <label><b>Id Empleado</b></label>
            <input type="text" name="txt_ide" id="txt_id" value="0" class="form-control" style=" margin-right: 20px " readonly>
            <label><b>Fecha de Ingreso</b></label>
            <input type="text" name="txt_idf" id="txt_id" value="0" class="form-control" style=" margin-right: 20px " readonly>
            <label><b>ID de Venta</b></label>
            <input type="text" name="txt_idv" id="txt_id" value="0" class="form-control" style=" margin-right: 20px " readonly>
            <label><b>ID de Venta</b></label>
            <input type="text" name="txt_idv" id="txt_id" value="0" class="form-control" style=" margin-right: 20px " readonly>
            <label><b>ID de Venta</b></label>
            <input type="text" name="txt_id" id="txt_id" value="0" class="form-control" style=" margin-right: 20px " readonly>
            <label><b>ID de Venta</b></label>
            <input type="text" name="txt_id" id="txt_id" value="0" class="form-control" style=" margin-right: 20px " readonly>
            <label><b>Precio Unitario</b></label>
            <input type="number" step="any"  name="txt_id" id="txt_id" value="0" class="form-control" style=" margin-right: 20px " readonly>
     
        </form>
        </div>
  
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        
    </body>
</html>
