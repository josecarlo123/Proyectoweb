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
public class Clientes extends Personas {
    private String nit,correo,fecha_ingreso;
    private int id_cliente;
    Conexion conectar;
     
    public Clientes(){}

    public Clientes(String nit, String correo, String fecha_ingreso, int id_cliente, String nombre, String apellido, int genero) {
        super(nombre, apellido, genero);
        this.nit = nit;
        this.correo = correo;
        this.fecha_ingreso = fecha_ingreso;
        this.id_cliente = id_cliente;
    }

 
    public int getId_cliente() {
    return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(String fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }
    
    @Override
    public int agregar(){
     int retorno =0;
        try{
            PreparedStatement parametro;
            conectar = new Conexion();
            String query = "INSERT INTO clientes (nombres,apellidos,nit,genero,telefono,correo_electronico,fecha_ingreso) VALUES (?,?,?,?,?,?,?);";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
            
            parametro.setString(1, getNombre());
            parametro.setString(2, getApellido());
            parametro.setString(3, getNit());
            parametro.setInt(4, getGenero());
            parametro.setString(5, getTelefono());
            parametro.setString(6, getCorreo());
            parametro.setString(7, getFecha_ingreso());
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
            String query = "UPDATE clientes SET  nombres = ?, apellidos = ?, nit = ?, genero = ?, telefono =?, correo_electronico = ?,fecha_ingreso = ? WHERE id_cliente = ?;";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
            
            parametro.setString(1, getNombre());
            parametro.setString(2, getApellido());
            parametro.setString(3, getNit());
            parametro.setInt(4, getGenero());
            parametro.setString(5, getTelefono());
            parametro.setString(6, getCorreo());
            parametro.setString(7, getFecha_ingreso());
            parametro.setInt(8, getId_cliente());
       
          
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
            String query = "DELETE FROM clientes WHERE id_cliente = ? ;";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
            
           parametro.setInt(1,  getId_cliente());
     
            retorno = parametro.executeUpdate();
            conectar.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    return retorno;
    }

  public DefaultTableModel leer_clientes(){
 DefaultTableModel tabla = new DefaultTableModel();
 try{
     conectar = new Conexion();
     conectar.abrir_conexion();
      String query = "SELECT id_cliente as id,nombres,apellidos,nit,genero,telefono,correo_electronico,fecha_ingreso FROM clientes;";
      ResultSet consulta = conectar.conexionBD.createStatement().executeQuery(query);
      String encabezado[] = {"id","nombres","apellidos","nit","genero","telefono","correo","fecha"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[8];
      while (consulta.next()){
          datos[0] = consulta.getString("id");
          datos[1] = consulta.getString("nombres");
          datos[2] = consulta.getString("apellidos");
          datos[3] = consulta.getString("nit");
          datos[4] = consulta.getString("genero");
          datos[5] = consulta.getString("telefono");
          datos[6] = consulta.getString("correo_electronico");
          datos[7] = consulta.getString("fecha_ingreso");
          tabla.addRow(datos);
      
      }
      
     conectar.cerrar_conexion();
 }catch(SQLException ex){
     System.out.println(ex.getMessage());
 }
 return tabla;
 }      
       
    
}
