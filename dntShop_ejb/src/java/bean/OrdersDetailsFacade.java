/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import entity.OrdersDetails;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Duy
 */
@Stateless
public class OrdersDetailsFacade extends AbstractFacade<OrdersDetails> implements OrdersDetailsFacadeLocal {
    @PersistenceContext(unitName = "dntShop_ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public OrdersDetailsFacade() {
        super(OrdersDetails.class);
    }
    
}
