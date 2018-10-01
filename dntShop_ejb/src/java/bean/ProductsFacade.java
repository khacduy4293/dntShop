/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import entity.Products;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Duy
 */
@Stateless
public class ProductsFacade extends AbstractFacade<Products> implements ProductsFacadeLocal {
    @PersistenceContext(unitName = "dntShop_ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProductsFacade() {
        super(Products.class);
    }

    @Override
    public List<Products> AllProductByCategory(String cateid) {
        Query q = getEntityManager().createQuery("SELECT p FROM Products p WHERE p.categoryID.categoryID = :cateid and p.isStatus = :status");
        q.setParameter("cateid", cateid);
        boolean status=true;
        q.setParameter("status", status);
        return q.getResultList();
    }

    @Override
    public List<Products> AllProductByBrand(String brandid) {
        Query q = getEntityManager().createQuery("SELECT p FROM Products p WHERE p.brandID.brandID = :brandid and p.isStatus = :status");
        q.setParameter("brandid", brandid);
        boolean status=true;
        q.setParameter("status", status);
        return q.getResultList();
    }

    @Override
    public List<Products> AllProduct() {
        Query q = getEntityManager().createQuery("SELECT p FROM Products p WHERE p.isStatus = :status");
        boolean status=true;
        q.setParameter("status", status);
        return q.getResultList();
    }
    
}
