package entity;

import entity.Customers;
import entity.Products;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2018-09-10T19:32:05")
@StaticMetamodel(Ratings.class)
public class Ratings_ { 

    public static volatile SingularAttribute<Ratings, Integer> ratingID;
    public static volatile SingularAttribute<Ratings, Integer> rate;
    public static volatile SingularAttribute<Ratings, Date> ratingDate;
    public static volatile SingularAttribute<Ratings, Customers> customerEmail;
    public static volatile SingularAttribute<Ratings, Customers> customerID;
    public static volatile SingularAttribute<Ratings, Products> productID;

}