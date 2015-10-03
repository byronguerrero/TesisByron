/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package logicaNegocio;

import capaDatos.departamentoDAO;
import entidades.Departamento;
import java.util.List;

/**
 *
 * @author Xino
 */
public class logicaDepartamento {
    
    departamentoDAO datos=new departamentoDAO();
   
    public void agregarDepartamento(Departamento dep) {
        datos.guardarDepartamento(dep);
       }
    
    public List<Departamento> consultar(){
        List<Departamento> departamentos=null;
        departamentos=datos.obtenerDepartamento();
        return  departamentos;
    }
    
    public Departamento buscar(int ids){
    
        Departamento depar=null;
        depar=datos.buscarDepartamento(ids);
        return depar;
    
    }
    
    public void actualizar(Departamento dep){
        
        datos.Actualizar(dep);
    
    }
    
    public void eliminar(int i){
        
       Departamento dep=null;
       dep=buscar(i);
        System.out.println(dep.getNombre());
        System.out.println("departamento encontrado");
        datos.eliminar(dep);
    
    }  
          
    public void validar(Departamento dep) throws exceptionClass {
            
         if((dep.getNombre().length()<=0) || (!dep.getNombre().matches("^[A-Za-z ]*$"))){ //Validando Nombre 
            throw new exceptionClass("Datos Incorrectos","Campo: Nombre Departamento");
         }
         if((dep.getDescripcion().length()<=0)){ //Validando Descripcion 
            throw new exceptionClass("Datos Incorrectos","Descipcion del Departamento Vacio ");
         }    
    }

}
