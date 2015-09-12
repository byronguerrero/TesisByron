/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package capaPresentacion;

import encapsulacion.departamento;
import encapsulacion.objetivos;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import logicaNegocio.exceptionClass;
import logicaNegocio.logicaDepartamento;

/**
 *
 * @author Xino
 */
public class ModificarDepartament extends javax.swing.JFrame {
    private DefaultTableModel modOb;
    List<objetivos> objetivosDepartamento=null;
    departamento depart;
    List s1=new ArrayList();
    /**
     * Creates new form ModificarDepartament
     */
    public ModificarDepartament() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        nomDep = new javax.swing.JTextField();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        tablaObje = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        objetivoDep = new javax.swing.JTextField();
        agregarObjetivos = new javax.swing.JButton();
        comboTipoObjetivo = new javax.swing.JComboBox();
        eliminarObjetivo = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        descripcion = new javax.swing.JTextArea();
        jButton2 = new javax.swing.JButton();
        actualizarDepartamento = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        idDep = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel2.setText("Nombre del Departamento");

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("Objetivos"));

        tablaObje.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "tipo", "Objetivo"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, true
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane2.setViewportView(tablaObje);

        jLabel1.setText("Tipo de Objetivo");

        jLabel4.setText("Objetivo:");

        objetivoDep.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                objetivoDepKeyReleased(evt);
            }
        });

        agregarObjetivos.setText("Agregar");
        agregarObjetivos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                agregarObjetivosActionPerformed(evt);
            }
        });

        comboTipoObjetivo.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Primario", "Secundario" }));

        eliminarObjetivo.setText("Eliminar");
        eliminarObjetivo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                eliminarObjetivoActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane2)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel1)
                                .addGap(18, 18, 18)
                                .addComponent(comboTipoObjetivo, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(eliminarObjetivo)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(agregarObjetivos))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel4)
                                .addGap(49, 49, 49)
                                .addComponent(objetivoDep, javax.swing.GroupLayout.PREFERRED_SIZE, 331, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(agregarObjetivos)
                    .addComponent(comboTipoObjetivo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(eliminarObjetivo))
                .addGap(19, 19, 19)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(objetivoDep, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 29, Short.MAX_VALUE)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 108, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(29, 29, 29))
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder("Descripcion"));

        descripcion.setColumns(20);
        descripcion.setRows(5);
        jScrollPane1.setViewportView(descripcion);

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap(20, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(19, 19, 19))
        );

        jButton2.setText("Cancelar");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        actualizarDepartamento.setText("Actualizar");
        actualizarDepartamento.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actualizarDepartamentoActionPerformed(evt);
            }
        });

        jLabel3.setText("ID:");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jLabel2)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(nomDep, javax.swing.GroupLayout.PREFERRED_SIZE, 105, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jLabel3)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(idDep, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(37, 37, 37))
                            .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(153, 153, 153)
                        .addComponent(actualizarDepartamento)
                        .addGap(45, 45, 45)
                        .addComponent(jButton2)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(idDep, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel2)
                        .addComponent(nomDep, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel3)))
                .addGap(18, 18, 18)
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(13, 13, 13)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton2)
                    .addComponent(actualizarDepartamento))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    public void mostrarDepart(int i){
        
        departamento dep;
        logicaDepartamento logDep= new logicaDepartamento();
        List<objetivos> objDep=new ArrayList<>();
        modOb=(DefaultTableModel) tablaObje.getModel();
        s1.add(null);
        
        dep=logDep.buscar(i);
        
        nomDep.setText(dep.getNombre());
        descripcion.setText(dep.getDescripcion());
        idDep.setText(String.valueOf(dep.getId()));
 
      //  objetivosDepartamento=dep.getObjDepart();
        objetivosDepartamento.removeAll(s1);
        
         for(objetivos obj: objetivosDepartamento) {
                    modOb.addRow(new Object[]{obj.getTipo(),obj.getObjDescripcion()});
        }       
 
    }
    
    
    private void objetivoDepKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_objetivoDepKeyReleased
        // TODO add your handling code here:
        if(objetivoDep.getText().length()!=0){
            agregarObjetivos.setEnabled(true);
        }else{
            agregarObjetivos.setEnabled(false);
        }
    }//GEN-LAST:event_objetivoDepKeyReleased

    private void agregarObjetivosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_agregarObjetivosActionPerformed
        // TODO add your handling code here:
       logicaDepartamento logDep= new logicaDepartamento();
       modOb=(DefaultTableModel)tablaObje.getModel();
       modOb.addRow(new Object[]{comboTipoObjetivo.getSelectedItem().toString(),objetivoDep.getText()});   
       depart=logDep.buscar(Integer.parseInt(idDep.getText()));
       List<objetivos> objDep=new ArrayList<>();
       s1.add(null);
      
       try{
     //       objDep=depart.getObjDepart(); 
            objetivos obj=new objetivos();
            objDep.removeAll(s1);
            depart.setNombre(nomDep.getText());
            depart.setDescripcion(descripcion.getText());
            obj.setTipo(modOb.getValueAt(tablaObje.getRowCount()-1,0).toString());
            obj.setObjDescripcion(modOb.getValueAt(tablaObje.getRowCount()-1,1).toString());
            objDep.add(obj);
            
      //      depart.setObjDepart(objDep);
            logDep.validar(depart);
            logDep.actualizar(depart);

        }catch(exceptionClass ex){
            JOptionPane.showMessageDialog(null,ex.getError(),"!Error¡",JOptionPane.ERROR_MESSAGE);
        }
       objetivoDep.setText("");
    }//GEN-LAST:event_agregarObjetivosActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        dispose();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void actualizarDepartamentoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actualizarDepartamentoActionPerformed
        // TODO add your handling code here:
        logicaDepartamento logDep= new logicaDepartamento();
        departamento dep=new departamento();
        List<objetivos> objDep=new ArrayList<>();
        s1.add(null);
        dep=logDep.buscar(Integer.parseInt(idDep.getText()));
        modOb=(DefaultTableModel)tablaObje.getModel();
        
        try{
            
      //      objDep=dep.getObjDepart();
            dep.setNombre(nomDep.getText());
            dep.setDescripcion(descripcion.getText());
            objDep.removeAll(s1);
            
           for(int fila=0;fila<modOb.getRowCount();fila++){  
                objetivos obj=objDep.get(fila);
                obj.setTipo(modOb.getValueAt(fila,0).toString());
                obj.setObjDescripcion(modOb.getValueAt(fila,1).toString());
                objDep.add(obj);
                objDep.removeAll(s1);
           }
       //    dep.setObjDepart(objDep);
           logDep.validar(dep);     
            
     int i=JOptionPane.showConfirmDialog(null, "Registro Actualizado Correctamente","Actualizado", JOptionPane.OK_CANCEL_OPTION);
            if(i==0){
                logDep.actualizar(dep);
                this.dispose();
            }
        }catch(exceptionClass ex){
            JOptionPane.showMessageDialog(null,ex.getError(),"!Error¡",JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_actualizarDepartamentoActionPerformed

    private void eliminarObjetivoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_eliminarObjetivoActionPerformed
        // TODO add your handling code here:
        modOb=(DefaultTableModel)tablaObje.getModel();
        departamento dep;
        logicaDepartamento logDep= new logicaDepartamento();
        dep=logDep.buscar(Integer.parseInt(idDep.getText()));
        List<objetivos> objDep=new ArrayList<>();
     //   objDep=dep.getObjDepart();
        objDep.removeAll(s1);
        int i=tablaObje.getSelectedRow();
        modOb.removeRow(i);
        objDep.remove(i);
        logDep.actualizar(dep);      
    }//GEN-LAST:event_eliminarObjetivoActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ModificarDepartament.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ModificarDepartament.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ModificarDepartament.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ModificarDepartament.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ModificarDepartament().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton actualizarDepartamento;
    private javax.swing.JButton agregarObjetivos;
    private javax.swing.JComboBox comboTipoObjetivo;
    private javax.swing.JTextArea descripcion;
    private javax.swing.JButton eliminarObjetivo;
    private javax.swing.JLabel idDep;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTextField nomDep;
    private javax.swing.JTextField objetivoDep;
    private javax.swing.JTable tablaObje;
    // End of variables declaration//GEN-END:variables
}
