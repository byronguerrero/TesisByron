package entidades;
// Generated 09-28-2015 08:03:09 PM by Hibernate Tools 4.3.1



/**
 * Correo generated by hbm2java
 */
public class Correo  implements java.io.Serializable {


     private int idCorreo;
     private Empleado empleado;
     private String correo;

    public Correo() {
    }

    public Correo(int idCorreo, Empleado empleado, String correo) {
       this.idCorreo = idCorreo;
       this.empleado = empleado;
       this.correo = correo;
    }
   
    public int getIdCorreo() {
        return this.idCorreo;
    }
    
    public void setIdCorreo(int idCorreo) {
        this.idCorreo = idCorreo;
    }
    public Empleado getEmpleado() {
        return this.empleado;
    }
    
    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }
    public String getCorreo() {
        return this.correo;
    }
    
    public void setCorreo(String correo) {
        this.correo = correo;
    }




}


