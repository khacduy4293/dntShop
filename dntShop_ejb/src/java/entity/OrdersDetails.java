/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entity;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Duy
 */
@Entity
@Table(name = "OrdersDetails", catalog = "dntShop", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "OrdersDetails.findAll", query = "SELECT o FROM OrdersDetails o"),
    @NamedQuery(name = "OrdersDetails.findByOdID", query = "SELECT o FROM OrdersDetails o WHERE o.odID = :odID"),
    @NamedQuery(name = "OrdersDetails.findBySellingPrice", query = "SELECT o FROM OrdersDetails o WHERE o.sellingPrice = :sellingPrice"),
    @NamedQuery(name = "OrdersDetails.findByQuantity", query = "SELECT o FROM OrdersDetails o WHERE o.quantity = :quantity"),
    @NamedQuery(name = "OrdersDetails.findByIsStatus", query = "SELECT o FROM OrdersDetails o WHERE o.isStatus = :isStatus")})
public class OrdersDetails implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "OdID", nullable = false)
    private Integer odID;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "SellingPrice", nullable = false, precision = 18, scale = 2)
    private BigDecimal sellingPrice;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Quantity", nullable = false)
    private int quantity;
    @Column(name = "IsStatus")
    private Boolean isStatus;
    @JoinColumn(name = "ProductID", referencedColumnName = "ProductID", nullable = false)
    @ManyToOne(optional = false)
    private Products productID;
    @JoinColumn(name = "OrderID", referencedColumnName = "OrderID", nullable = false)
    @ManyToOne(optional = false)
    private Orders orderID;

    public OrdersDetails() {
    }

    public OrdersDetails(Integer odID) {
        this.odID = odID;
    }

    public OrdersDetails(Integer odID, BigDecimal sellingPrice, int quantity) {
        this.odID = odID;
        this.sellingPrice = sellingPrice;
        this.quantity = quantity;
    }

    public Integer getOdID() {
        return odID;
    }

    public void setOdID(Integer odID) {
        this.odID = odID;
    }

    public BigDecimal getSellingPrice() {
        return sellingPrice;
    }

    public void setSellingPrice(BigDecimal sellingPrice) {
        this.sellingPrice = sellingPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Boolean getIsStatus() {
        return isStatus;
    }

    public void setIsStatus(Boolean isStatus) {
        this.isStatus = isStatus;
    }

    public Products getProductID() {
        return productID;
    }

    public void setProductID(Products productID) {
        this.productID = productID;
    }

    public Orders getOrderID() {
        return orderID;
    }

    public void setOrderID(Orders orderID) {
        this.orderID = orderID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (odID != null ? odID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrdersDetails)) {
            return false;
        }
        OrdersDetails other = (OrdersDetails) object;
        if ((this.odID == null && other.odID != null) || (this.odID != null && !this.odID.equals(other.odID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.OrdersDetails[ odID=" + odID + " ]";
    }
    
}
