/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author i14i34500w10
 */
public class Empleado extends Personas{
    private int idEmpleado;
    private String fecha_ingreso,fecha_inicio;
    private int id_p;
    Conexion conectar;
    public Empleado(){}

    public Empleado(int idEmpleado, String fecha_ingreso, String fecha_inicio, int id_p, String nombre, String apellido, String direccion, String telefono, String dpi, String fecha_nacimiento, int genero) {
        super(nombre, apellido, direccion, telefono, dpi, fecha_nacimiento, genero);
        this.idEmpleado = idEmpleado;
        this.fecha_ingreso = fecha_ingreso;
        this.fecha_inicio = fecha_inicio;
        this.id_p = id_p;
    }

 

    public int getId_p() {
        return id_p;
    }

    public void setId_p(int id_p) {
        this.id_p = id_p;
    }
    
    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public String getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(String fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }

    public String getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(String fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }
    
    public DefaultTableModel leer(){
 DefaultTableModel tabla = new DefaultTableModel();
 try{
     conectar = new Conexion();
     conectar.abrir_conexion();
      String query = "SELECT e.id_empleado as id,e.nombres,e.apellidos,e.direccion,e.telefono,e.DPI,e.genero,e.fecha_nacimiento,p.puesto,p.id_puesto,e.fecha_inicion_labores,e.fecha_ingreso FROM empleados as e inner join puestos as p on e.id_puesto = p.id_puesto;";
      ResultSet consulta = conectar.conexionBD.createStatement().executeQuery(query);
      String encabezado[] = {"id","nombres","apellidos","direccion","telefono","nacimiento","dpi","genero","fecha","puesto","id_puesto","fecha_incio","fecha_ingreso"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[13];
      while (consulta.next()){
          datos[0] = consulta.getString("id");
          datos[1] = consulta.getString("nombres");
          datos[2] = consulta.getString("apellidos");
          datos[3] = consulta.getString("direccion");
          datos[4] = consulta.getString("telefono");
          datos[5] = consulta.getString("DPI");
          datos[6] = consulta.getString("genero");
          datos[7] = consulta.getString("fecha_nacimiento");
          datos[8] = consulta.getString("puesto");
          datos[9] = consulta.getString("id_puesto");
          datos[10] = consulta.getString("fecha_inicion_labores");
          datos[11] = consulta.getString("fecha_ingreso");
          
          tabla.addRow(datos);
      
      }
      
     conectar.cerrar_conexion();
 }catch(SQLException ex){
     System.out.println(ex.getMessage());
 }
 return tabla;
 }
    
    @Override
       public int agregar (){
        int retorno =0;
        try{
            PreparedStatement parametro;
            conectar = new Conexion();
            String query = "INSERT INTO empleados (nombres,apellidos,direccion,telefono,DPI,genero,fecha_nacimiento,id_puesto,fecha_inicion_labores,fecha_ingreso) VALUES (?,?,?,?,?,?,?,?,?,?);";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
            
            parametro.setString(1, getNombre());
            parametro.setString(2, getApellido());
            parametro.setString(3, getDireccion());
            parametro.setString(4, getTelefono());
            parametro.setString(5, getDpi());
            parametro.setInt(6,    getGenero());
            parametro.setString(7, getFecha_nacimiento());
            parametro.setInt(8, getId_p());
            parametro.setString(9, getFecha_ingreso());
            parametro.setString(10, getFecha_inicio());
      
          
            retorno = parametro.executeUpdate();
            conectar.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    return retorno;
    }

       @Override
       public int modificar(){
        int retorno =0;
        try{
            PreparedStatement parametro;
            conectar = new Conexion();
            String query = "UPDATE empleados SET  nombres =?, apellidos =?, direccion =?, telefono = ?, DPI =?, genero = ?,fecha_nacimiento =?,id_puesto =? ,fecha_inicion_labores =? ,fecha_ingreso = ? WHERE id_empleado =?;";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
            
            parametro.setString(1, getNombre());
            parametro.setString(2, getApellido());
            parametro.setString(3, getDireccion());
            parametro.setString(4, getTelefono());
            parametro.setString(5, getDpi());
            parametro.setInt(6,    getGenero());
            parametro.setString(7, getFecha_nacimiento());
            parametro.setInt(8, getId_p());
            parametro.setString(9, getFecha_ingreso());
            parametro.setString(10, getFecha_inicio());
            parametro.setInt(11,getIdEmpleado());
          
            retorno = parametro.executeUpdate();
            conectar.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    return retorno;
    }
     @Override
       public int eliminar(){
        int retorno =0;
        try{
            PreparedStatement parametro;
            conectar = new Conexion();
            String query = "DELETE FROM empleados WHERE id_empleado = ?;";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
            
            parametro.setInt(1, getIdEmpleado());
     
            retorno = parametro.executeUpdate();
            conectar.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    return retorno;
    }

    
    
}
