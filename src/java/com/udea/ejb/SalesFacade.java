/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.entity.Sales;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author alejo
 */
@Stateless
public class SalesFacade extends AbstractFacade<Sales> implements SalesFacadeLocal {

    @PersistenceContext(unitName = "ConcessionairePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SalesFacade() {
        super(Sales.class);
    }

    @Override
    public boolean checkSale(String i) {
        Query q = em.createQuery("Select a from Sales a where a.idBill=:i");
        
        q.setParameter("i",i);
        
        return q.getResultList().size()>0;
    }
    
}
