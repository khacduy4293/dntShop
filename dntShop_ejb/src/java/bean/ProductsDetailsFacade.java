/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import entity.ProductsDetails;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Duy
 */
@Stateless
public class ProductsDetailsFacade extends AbstractFacade<ProductsDetails> implements ProductsDetailsFacadeLocal {
    @PersistenceContext(unitName = "dntShop_ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProductsDetailsFacade() {
        super(ProductsDetails.class);
    }
    
}
