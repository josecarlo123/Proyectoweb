/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author i14i34500w10
 */
public class Proveedores extends Personas{
    private String nit;
    private int id_p;
    Conexion conectar;
    public Proveedores(){}
    public Proveedores(String nit, int id_p, String nombre, String direccion, String telefono) {
        super(nombre, direccion, telefono);
        this.nit = nit;
        this.id_p = id_p;
    }
    

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public int getId_p() {
        return id_p;
    }

    public void setId_p(int id_p) {
        this.id_p = id_p;
    }
    @Override
    public int agregar(){
     int retorno =0;
        try{
            PreparedStatement parametro;
            conectar = new Conexion();
            String query = "INSERT INTO proveedores (proveedor,nit,direccion,telefono) VALUES (?,?,?,?);";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
            
            parametro.setString(1, getNombre());
            parametro.setString(2, getNit());
            parametro.setString(3, getDireccion());
            parametro.setString(4, getTelefono());
       
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
            String query = "UPDATE proveedores SET proveedor = ?, nit = ?,direccion = ?, telefono =? WHERE id_proveedor = ?;";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
            
            parametro.setString(1, getNombre());
            parametro.setString(2, getNit());
            parametro.setString(3, getDireccion());
            parametro.setString(4, getTelefono());
            parametro.setInt(5,  getId_p());
   
       
          
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
            String query = "DELETE FROM proveedores WHERE id_proveedor = ?;";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
             parametro.setInt(1,  getId_p());
   
         
     
            retorno = parametro.executeUpdate();
            conectar.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    return retorno;
    }
       
        public DefaultTableModel leer_proveedores(){
 DefaultTableModel tabla = new DefaultTableModel();
 try{
     conectar = new Conexion();
     conectar.abrir_conexion();
      String query = "SELECT id_proveedor as id,proveedor,nit,direccion,telefono FROM proveedores;";
      ResultSet consulta = conectar.conexionBD.createStatement().executeQuery(query);
      String encabezado[] = {"id","proveedor","nit","direccion","telefono"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[5];
      while (consulta.next()){
          datos[0] = consulta.getString("id");
          datos[1] = consulta.getString("proveedor");
          datos[2] = consulta.getString("nit");
          datos[3] = consulta.getString("direccion");
          datos[4] = consulta.getString("telefono");
          tabla.addRow(datos);
      
      }
      
     conectar.cerrar_conexion();
 }catch(SQLException ex){
     System.out.println(ex.getMessage());
 }
 return tabla;
 }      
       
    
}
