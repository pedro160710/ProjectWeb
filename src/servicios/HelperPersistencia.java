/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servicios;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

/**
 *
 * @author PC
 */
public class HelperPersistencia {

    public static EntityManager getEMF() {
    	System.out.println("entro al Helper persistencia");
        EntityManager emf = (EntityManager) Persistence.createEntityManagerFactory("JPAInventarioEpn").createEntityManager();
        
        System.out.println("salio al Helper persistencia");
        return emf;
    }
}
