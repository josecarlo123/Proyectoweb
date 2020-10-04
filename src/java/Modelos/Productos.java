/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

import java.io.File;
import java.io.FileInputStream;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author i14i34500w10
 */
public class Productos {
    private int id_producto,id_marca,existencia;
    private String Producto,descripcion,fecha;
    
    private float precio_c, precio_v;

    
    Conexion conectar;

    public Productos(int id_producto, int id_marca, int existencia, String Producto, String descripcion, String fecha, float precio_c) {
        this.id_producto = id_producto;
        this.id_marca = id_marca;
        this.existencia = existencia;
        this.Producto = Producto;
        this.descripcion = descripcion;
        this.fecha = fecha;
        this.precio_c = precio_c;
    }
  

    
    
    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getId_marca() {
        return id_marca;
    }

    public void setId_marca(int id_marca) {
        this.id_marca = id_marca;
    }

    public String getProducto() {
        return Producto;
    }

    public void setProducto(String Producto) {
        this.Producto = Producto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

 

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public float getPrecio_c() {
        return precio_c;
    }

    public void setPrecio_c(float precio_c) {
        this.precio_c = precio_c;
    }

    public float getPrecio_v() {
        return precio_v;
    }

    public void setPrecio_v(float precio_v) {
        this.precio_v = precio_v;
    }
    
     public int getExistencia() {
        return existencia;
    }

    public void setExistencia(int existencia) {
        this.existencia = existencia;
    }
    
    
  
    public void guardar_imagen(String ruta, String nombre){
        conectar = new Conexion();
        String insert = "INSERT INTO  productos (imagen) values (?)";
        FileInputStream fi = null;
        PreparedStatement ps = null;
        try{
            File file = new File(ruta);
            fi = new FileInputStream(file);
            
         ps = conectar.prepareStatement(insert);
         ps.setBinaryStream(4, fi);
            
         ps.executeUpdate();
         
        }catch(Exception ex){
            System.out.println("Error al guardar");
        }
    
    
    }
    
 public int agregar(){
   int retorno = 0;
 
 try{
            PreparedStatement parametro;
            conectar = new Conexion();
            String query = "INSERT INTO  productos (producto, id_marca, descripcion,precio_costo,precio_venta,existencia,fecha_ingreso) VALUES (?,?,?,?,?,?,?,?);";
            conectar.abrir_conexion();
            parametro = (PreparedStatement)conectar.conexionBD.prepareStatement(query);
            
            parametro.setString(1,getProducto());
            parametro.setInt(2,getId_marca());
            parametro.setString(3, getDescripcion());
            parametro.setFloat(5, getPrecio_c());
            parametro.setFloat(6, getPrecio_v());
            parametro.setInt(7,getExistencia());
              parametro.setString(8,getFecha());
            
            
            
            retorno = parametro.executeUpdate();
            conectar.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
 
     
    return retorno;
 }

   
}
