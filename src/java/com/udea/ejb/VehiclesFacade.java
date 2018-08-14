/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.entity.Vehicles;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author alejo
 */
@Stateless
public class VehiclesFacade extends AbstractFacade<Vehicles> implements VehiclesFacadeLocal {

    @PersistenceContext(unitName = "ConcessionairePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public VehiclesFacade() {
        super(Vehicles.class);
    }

    @Override
    public boolean checkVehicle(String p) {
        Query q = em.createQuery("Select a from Vehicles a where a.licensePlate=:p");
        
        q.setParameter("p",p);
        
        return q.getResultList().size()>0;
    }
    
}
