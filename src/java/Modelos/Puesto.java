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
import java.util.HashMap;

/**
 *
 * @author i14i34500w10
 */
public class Puesto {
    private int id;
    private String puesto;
    
    Conexion conexion;
    public Puesto(){}
    public Puesto(int id, String puesto) {
        this.id = id;
        this.puesto = puesto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }
    
    
    
    
    
    public DefaultTableModel leer(){
 DefaultTableModel tabla = new DefaultTableModel();
 try{
     conexion = new Conexion();
     conexion.abrir_conexion();
      String query = "Select id_puesto as id,puesto from puestos;";
      ResultSet consulta = conexion.conexionBD.createStatement().executeQuery(query);
      String encabezado[] = {"id","puesto"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[2];
      while (consulta.next()){
          datos[0] = consulta.getString("id");
          datos[1] = consulta.getString("puesto");
          
          tabla.addRow(datos);
      
      }
      
     conexion.cerrar_conexion();
 }catch(SQLException ex){
     System.out.println(ex.getMessage());
 }
 return tabla;
 }
    
     public int agregar (){
        int retorno =0;
        try{
            PreparedStatement parametro;
            conexion = new Conexion();
            String query = "insert into puestos (puesto) value (?);";
            conexion.abrir_conexion();
            parametro = (PreparedStatement)conexion.conexionBD.prepareStatement(query);
            
            parametro.setString(1, getPuesto());
           
            retorno = parametro.executeUpdate();
            conexion.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    return retorno;
    }
     
         public int modificar (){
        int retorno =0;
        try{
            PreparedStatement parametro;
            conexion = new Conexion();
            String query = "UPDATE puestos SET  puesto = ? WHERE  id_puesto = ?;";
            conexion.abrir_conexion();
            parametro = (PreparedStatement)conexion.conexionBD.prepareStatement(query);
            
            parametro.setString(1, getPuesto());
            parametro.setInt(2, getId());
         
            retorno = parametro.executeUpdate();
            conexion.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    return retorno;
    }
    
     
         public int eliminar (){
        int retorno =0;
        try{
            PreparedStatement parametro;
            conexion = new Conexion();
            String query = "DELETE FROM puestos WHERE id_puesto = ?;";
            conexion.abrir_conexion();
            parametro = (PreparedStatement)conexion.conexionBD.prepareStatement(query);
            

            parametro.setInt(1, getId());
         
            retorno = parametro.executeUpdate();
            conexion.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    return retorno;
    }
    
      public HashMap mostrar_puesto(){
    HashMap<String,String> drop = new HashMap();
    try{
        String query ="Select id_puesto as id,puesto from puestos";
         conexion = new Conexion();
         conexion.abrir_conexion();
            ResultSet consulta = conexion.conexionBD.createStatement().executeQuery(query);
            while (consulta.next()){
            drop.put(consulta.getString("id"),consulta.getString("puesto") );
            }
         conexion.cerrar_conexion();
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
    return drop;
    }
    
}   
