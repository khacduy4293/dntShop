package entity;

import entity.Orders;
import entity.Ratings;
import entity.Wishlist;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2018-09-10T19:32:05")
@StaticMetamodel(Customers.class)
public class Customers_ { 

    public static volatile SingularAttribute<Customers, String> lastName;
    public static volatile SingularAttribute<Customers, String> phone;
    public static volatile SingularAttribute<Customers, String> avatar;
    public static volatile SingularAttribute<Customers, String> password;
    public static volatile CollectionAttribute<Customers, Ratings> ratingsCollection;
    public static volatile SingularAttribute<Customers, Boolean> isStatus;
    public static volatile SingularAttribute<Customers, String> email;
    public static volatile CollectionAttribute<Customers, Wishlist> wishlistCollection;
    public static volatile SingularAttribute<Customers, Boolean> gender;
    public static volatile CollectionAttribute<Customers, Orders> ordersCollection;
    public static volatile SingularAttribute<Customers, String> customerID;
    public static volatile SingularAttribute<Customers, String> firstName;
    public static volatile SingularAttribute<Customers, Date> createdDate;

}