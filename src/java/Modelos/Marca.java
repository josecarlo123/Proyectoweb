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
public class Marca {
    private int id_marca;
    private String marca;
    
    Conexion conectar;
    public Marca(){}
    public Marca(int id_marca, String marca) {
        this.id_marca = id_marca;
        this.marca = marca;
    }

    public int getId_marca() {
        return id_marca;
    }

    public void setId_marca(int id_marca) {
        this.id_marca = id_marca;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
    
    
    public int agregar(){
     int retorno =0;
        try{
            PreparedStatement parametro;
            conectar = new Conexion();
            String query = "insert into marcas (marca) value (?);";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
            
            parametro.setString(1, getMarca());
               
            
            
            retorno = parametro.executeUpdate();
            conectar.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    return retorno;

    }
    
  
    public int modificar(){
     int retorno =0;
        try{
            PreparedStatement parametro;
            conectar = new Conexion();
            String query = "UPDATE marcas SET marca = ? WHERE id_marcas = ?;";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
        
              parametro.setString(1, getMarca());
              parametro.setInt(2, getId_marca());
            
            retorno = parametro.executeUpdate();
            conectar.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    return retorno;

    }
    
      
       public int eliminar(){
        int retorno =0;
        try{
            PreparedStatement parametro;
            conectar = new Conexion();
            String query = "DELETE FROM marcas WHERE id_marcas= ?;";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
            
            parametro.setInt(1, getId_marca());
     
            retorno = parametro.executeUpdate();
            conectar.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    return retorno;
    }

  public DefaultTableModel leer_marca(){
 DefaultTableModel tabla = new DefaultTableModel();
 try{
     conectar = new Conexion();
     conectar.abrir_conexion();
      String query = " select id_marcas as id,marca from marcas;";
      ResultSet consulta = conectar.conexionBD.createStatement().executeQuery(query);
      String encabezado[] = {"id","marca"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[2];
      while (consulta.next()){
          
          datos[0] = consulta.getString("id");
          datos[1] = consulta.getString("marca");
     
          tabla.addRow(datos);
      
      }
      
     conectar.cerrar_conexion();
 }catch(SQLException ex){
     System.out.println(ex.getMessage());
 }
 return tabla;
 }      
            
  public HashMap select_marca(){
    HashMap<String,String> drop = new HashMap();
    try{
        String query ="Select id_marcas as id,marca from marcas;";
         conectar = new Conexion();
         conectar.abrir_conexion();
            ResultSet consulta = conectar.conexionBD.createStatement().executeQuery(query);
            while (consulta.next()){
            drop.put(consulta.getString("id"),consulta.getString("marca") );
            }
         conectar.cerrar_conexion();
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
    return drop;
    }
    
    
    
}
