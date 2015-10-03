/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package logicaNegocio;

import capaDatos.puestoTrabajoDAO;
import entidades.PuestoTrabajo;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author Xino
 */
public class logicaCargo {
    
    puestoTrabajoDAO datos=new puestoTrabajoDAO();
    
    public void agregarDepartamento(PuestoTrabajo c) {
        datos.guardarCargo(c);
    }
    
    public Set<PuestoTrabajo> consultar(){
        Set <PuestoTrabajo> c=new HashSet<PuestoTrabajo>(datos.obtenerCargos());
        return c;   
    }
    
     public PuestoTrabajo buscar(int ids){
    
        PuestoTrabajo depar=null;
        depar=datos.buscarCargo(ids);
        return depar;
    
    }
    
    
    public void validar(PuestoTrabajo c) throws exceptionClass {
            
         if((c.getNombre().length()<=0) || (!c.getNombre().matches("^[A-Za-z ]*$"))){ //Validando Nombre 
            throw new exceptionClass("Datos Incorrectos","Campo: Nombre");
         }
         if(c.getDescripcion().trim().length()<=0){ //Validando Descripcion 
            throw new exceptionClass("Datos Incorrectos","Descipcion del Cargo");
         }    
    }
}
