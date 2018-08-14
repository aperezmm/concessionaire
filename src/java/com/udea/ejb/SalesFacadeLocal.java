/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.entity.Sales;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author alejo
 */
@Local
public interface SalesFacadeLocal {

    void create(Sales sales);

    void edit(Sales sales);

    void remove(Sales sales);

    Sales find(Object idBill);

    List<Sales> findAll();

    List<Sales> findRange(int[] range);

    int count();

    boolean checkSale(String i);
    
}
