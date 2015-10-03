/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package capaDatos;

import entidades.PuestoTrabajo;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Xino
 */
public class puestoTrabajoDAO {

        private Session sesion;
        private Transaction tx;
       
  private void iniciaOperacion() throws HibernateException{
    
      sesion = hibernateUtil.getSessionFactory().openSession();
      tx = sesion.beginTransaction();
      
        }
  
   private void manejaExcepcion(HibernateException he) throws HibernateException{
    
    tx.rollback();
    he.printStackTrace();
    throw new HibernateException("Ocurrió un error en la capa de acceso a datos", he);
        }
   
    public void guardarCargo(Object s)
{ 
    try 
    { 
        iniciaOperacion(); 
        System.out.println("sesion Iniciada");
        sesion.save(s);
        tx.commit();
        sesion.close();
        System.out.println("sesion Cerrada");
   
    }catch(HibernateException he){ 
        manejaExcepcion(he);
        throw he;    
}
  
}
 
    public List<PuestoTrabajo> obtenerCargos(){
  
        List<PuestoTrabajo> c=null;
        
        try{
             iniciaOperacion();
             c=sesion.createQuery("from PuestoTrabajo").list();
        
        }finally{  
            sesion.close();   
        }  
        return c;
  }
    
     public PuestoTrabajo buscarCargo(int ids){
  
        PuestoTrabajo c=null;
        
        try{
             iniciaOperacion();
             c=(PuestoTrabajo)sesion.get(PuestoTrabajo.class, ids);
        
        }finally{  
            sesion.close();   
        }  
        return c;
  }
  
    
}
