/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author alejo
 */
@Entity
@Table(name = "sales")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sales.findAll", query = "SELECT s FROM Sales s"),
    @NamedQuery(name = "Sales.findByIdBill", query = "SELECT s FROM Sales s WHERE s.idBill = :idBill"),
    @NamedQuery(name = "Sales.findByClientName", query = "SELECT s FROM Sales s WHERE s.clientName = :clientName"),
    @NamedQuery(name = "Sales.findByIdClient", query = "SELECT s FROM Sales s WHERE s.idClient = :idClient"),
    @NamedQuery(name = "Sales.findByLicensePlate", query = "SELECT s FROM Sales s WHERE s.licensePlate = :licensePlate"),
    @NamedQuery(name = "Sales.findByPayment", query = "SELECT s FROM Sales s WHERE s.payment = :payment")})
public class Sales implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "idBill")
    private String idBill;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "clientName")
    private String clientName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "idClient")
    private String idClient;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "licensePlate")
    private String licensePlate;
    @Size(max = 50)
    @Column(name = "payment")
    private String payment;

    public Sales() {
    }

    public Sales(String idBill) {
        this.idBill = idBill;
    }

    public Sales(String idBill, String clientName, String idClient, String licensePlate) {
        this.idBill = idBill;
        this.clientName = clientName;
        this.idClient = idClient;
        this.licensePlate = licensePlate;
    }

    public String getIdBill() {
        return idBill;
    }

    public void setIdBill(String idBill) {
        this.idBill = idBill;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public String getIdClient() {
        return idClient;
    }

    public void setIdClient(String idClient) {
        this.idClient = idClient;
    }

    public String getLicensePlate() {
        return licensePlate;
    }

    public void setLicensePlate(String licensePlate) {
        this.licensePlate = licensePlate;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idBill != null ? idBill.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sales)) {
            return false;
        }
        Sales other = (Sales) object;
        if ((this.idBill == null && other.idBill != null) || (this.idBill != null && !this.idBill.equals(other.idBill))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.entity.Sales[ idBill=" + idBill + " ]";
    }
    
}
