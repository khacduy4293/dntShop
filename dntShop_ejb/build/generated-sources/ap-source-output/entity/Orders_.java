package entity;

import entity.Customers;
import entity.OrdersDetails;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2018-09-18T18:27:19")
@StaticMetamodel(Orders.class)
public class Orders_ { 

    public static volatile SingularAttribute<Orders, Integer> total;
    public static volatile SingularAttribute<Orders, String> shipPhone;
    public static volatile SingularAttribute<Orders, String> orderID;
    public static volatile SingularAttribute<Orders, String> processStatus;
    public static volatile SingularAttribute<Orders, Date> orderDate;
    public static volatile SingularAttribute<Orders, String> shipName;
    public static volatile SingularAttribute<Orders, Customers> customerEmail;
    public static volatile SingularAttribute<Orders, Date> shipDate;
    public static volatile SingularAttribute<Orders, Boolean> isStatus;
    public static volatile SingularAttribute<Orders, String> shipNote;
    public static volatile CollectionAttribute<Orders, OrdersDetails> ordersDetailsCollection;
    public static volatile SingularAttribute<Orders, String> shipAddress;
    public static volatile SingularAttribute<Orders, Customers> customerID;
    public static volatile SingularAttribute<Orders, String> paymentMethod;

}