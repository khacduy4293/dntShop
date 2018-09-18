package entity;

import entity.Customers;
import entity.Products;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2018-09-18T11:57:03")
@StaticMetamodel(Wishlist.class)
public class Wishlist_ { 

    public static volatile SingularAttribute<Wishlist, Integer> wishlistID;
    public static volatile SingularAttribute<Wishlist, Integer> quantity;
    public static volatile SingularAttribute<Wishlist, Customers> customerEmail;
    public static volatile SingularAttribute<Wishlist, Customers> customerID;
    public static volatile SingularAttribute<Wishlist, Products> productID;

}