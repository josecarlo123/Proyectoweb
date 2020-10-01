/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

/**
 *
 * @author i14i34500w10
 */
abstract class Personas {
    private String nombre,apellido,direccion,telefono,dpi,fecha_nacimiento;
    private int genero;
    
    public Personas(){}

    public Personas(String nombre, String direccion, String telefono) {
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    
    
    public Personas(String nombre, String apellido, int genero) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.genero = genero;
    }

 
    public Personas(String nombre, String apellido, String direccion, String telefono, String dpi, String fecha_nacimiento, int genero) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.direccion = direccion;
        this.telefono = telefono;
        this.dpi = dpi;
        this.fecha_nacimiento = fecha_nacimiento;
        this.genero = genero;
    }
   
    
    
    
    
     public int getGenero() {
        return genero;
    }

    public void setGenero(int genero) {
        this.genero = genero;
    }
    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDpi() {
        return dpi;
    }

    public void setDpi(String dpi) {
        this.dpi = dpi;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }
    
    public int agregar (){return 0;}
    public int modificar (){return 0;}
    public int eliminar (){return 0;}

   
}