package entidades;
// Generated 09-28-2015 08:03:09 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Permiso generated by hbm2java
 */
public class Permiso  implements java.io.Serializable {


     private int idPermiso;
     private Empleado empleado;
     private TipoPermiso tipoPermiso;
     private boolean remunerado;
     private Date inicio;
     private Date fin;

    public Permiso() {
    }

    public Permiso(int idPermiso, Empleado empleado, TipoPermiso tipoPermiso, boolean remunerado, Date inicio, Date fin) {
       this.idPermiso = idPermiso;
       this.empleado = empleado;
       this.tipoPermiso = tipoPermiso;
       this.remunerado = remunerado;
       this.inicio = inicio;
       this.fin = fin;
    }
   
    public int getIdPermiso() {
        return this.idPermiso;
    }
    
    public void setIdPermiso(int idPermiso) {
        this.idPermiso = idPermiso;
    }
    public Empleado getEmpleado() {
        return this.empleado;
    }
    
    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }
    public TipoPermiso getTipoPermiso() {
        return this.tipoPermiso;
    }
    
    public void setTipoPermiso(TipoPermiso tipoPermiso) {
        this.tipoPermiso = tipoPermiso;
    }
    public boolean isRemunerado() {
        return this.remunerado;
    }
    
    public void setRemunerado(boolean remunerado) {
        this.remunerado = remunerado;
    }
    public Date getInicio() {
        return this.inicio;
    }
    
    public void setInicio(Date inicio) {
        this.inicio = inicio;
    }
    public Date getFin() {
        return this.fin;
    }
    
    public void setFin(Date fin) {
        this.fin = fin;
    }




}


