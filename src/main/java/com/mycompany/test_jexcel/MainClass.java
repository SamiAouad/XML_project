/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.test_jexcel;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.transform.TransformerException;
import org.apache.fop.apps.FOPException;


/**
 *
 * @author pc
 */
class MainClass {
    
    public static void main(String[] args) throws IOException{
       
        
           Ecole ensat = new Ecole("ensat", "modules");
            ensat.addStudents("students");
            ensat.addNotes("notes");
            ensat.generer_xml_students();
            ensat.generer_xml_modules();
            ensat.generer_xml_notes();
        User user = new User("B12", "GINF2");
        user.genererListeAvantRatt("GINF35");
        user.genererListeRatt("GINF35");
        user.genererListeApresRatt("GINF35");
        
        try {
//            user.genererAttestation();
            Filiere filiere = new Filiere("GINF2", "modules");
            filiere.genereEmploiAvantApres();
            System.out.println("carte d'etudiant génèré");
        } catch (FOPException ex) {
            System.out.println(ex.getMessage());
        } catch (TransformerException ex) {
           System.out.println(ex.getMessage());
        } catch (FileNotFoundException ex) {
            System.out.println(ex.getMessage());
        }
    }
    
}
