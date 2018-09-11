/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name = "Wishlist", catalog = "dntShop", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Wishlist.findAll", query = "SELECT w FROM Wishlist w"),
    @NamedQuery(name = "Wishlist.findByWishlistID", query = "SELECT w FROM Wishlist w WHERE w.wishlistID = :wishlistID"),
    @NamedQuery(name = "Wishlist.findByQuantity", query = "SELECT w FROM Wishlist w WHERE w.quantity = :quantity")})
public class Wishlist implements Serializable {
    @JoinColumn(name = "CustomerID", referencedColumnName = "CustomerID", nullable = false)
    @ManyToOne(optional = false)
    private Customers customerID;
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "WishlistID", nullable = false)
    private Integer wishlistID;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Quantity", nullable = false)
    private int quantity;
    @JoinColumn(name = "ProductID", referencedColumnName = "ProductID", nullable = false)
    @ManyToOne(optional = false)
    private Products productID;
    @JoinColumn(name = "CustomerEmail", referencedColumnName = "Email", nullable = false)
    @ManyToOne(optional = false)
    private Customers customerEmail;

    public Wishlist() {
    }

    public Wishlist(Integer wishlistID) {
        this.wishlistID = wishlistID;
    }

    public Wishlist(Integer wishlistID, int quantity) {
        this.wishlistID = wishlistID;
        this.quantity = quantity;
    }

    public Integer getWishlistID() {
        return wishlistID;
    }

    public void setWishlistID(Integer wishlistID) {
        this.wishlistID = wishlistID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Products getProductID() {
        return productID;
    }

    public void setProductID(Products productID) {
        this.productID = productID;
    }

    public Customers getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(Customers customerEmail) {
        this.customerEmail = customerEmail;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (wishlistID != null ? wishlistID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Wishlist)) {
            return false;
        }
        Wishlist other = (Wishlist) object;
        if ((this.wishlistID == null && other.wishlistID != null) || (this.wishlistID != null && !this.wishlistID.equals(other.wishlistID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Wishlist[ wishlistID=" + wishlistID + " ]";
    }

    public Customers getCustomerID() {
        return customerID;
    }

    public void setCustomerID(Customers customerID) {
        this.customerID = customerID;
    }
    
}
