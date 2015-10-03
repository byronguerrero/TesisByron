package entidades;
// Generated 09-28-2015 08:03:09 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Vacacion generated by hbm2java
 */
public class Vacacion  implements java.io.Serializable {


     private int idVacacion;
     private Empleado empleado;
     private Date fechaInicio;
     private Date fechaFin;

    public Vacacion() {
    }

	
    public Vacacion(int idVacacion, Empleado empleado, Date fechaInicio) {
        this.idVacacion = idVacacion;
        this.empleado = empleado;
        this.fechaInicio = fechaInicio;
    }
    public Vacacion(int idVacacion, Empleado empleado, Date fechaInicio, Date fechaFin) {
       this.idVacacion = idVacacion;
       this.empleado = empleado;
       this.fechaInicio = fechaInicio;
       this.fechaFin = fechaFin;
    }
   
    public int getIdVacacion() {
        return this.idVacacion;
    }
    
    public void setIdVacacion(int idVacacion) {
        this.idVacacion = idVacacion;
    }
    public Empleado getEmpleado() {
        return this.empleado;
    }
    
    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }
    public Date getFechaInicio() {
        return this.fechaInicio;
    }
    
    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }
    public Date getFechaFin() {
        return this.fechaFin;
    }
    
    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }




}


