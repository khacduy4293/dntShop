package entity;

import entity.Orders;
import entity.Products;
import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2018-09-18T11:57:03")
@StaticMetamodel(OrdersDetails.class)
public class OrdersDetails_ { 

    public static volatile SingularAttribute<OrdersDetails, BigDecimal> sellingPrice;
    public static volatile SingularAttribute<OrdersDetails, Orders> orderID;
    public static volatile SingularAttribute<OrdersDetails, Integer> odID;
    public static volatile SingularAttribute<OrdersDetails, Integer> quantity;
    public static volatile SingularAttribute<OrdersDetails, Products> productID;
    public static volatile SingularAttribute<OrdersDetails, Boolean> isStatus;

}