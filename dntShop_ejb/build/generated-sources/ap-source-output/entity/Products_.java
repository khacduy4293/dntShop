package entity;

import entity.Brands;
import entity.Categories;
import entity.OrdersDetails;
import entity.Ratings;
import entity.Wishlist;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2018-09-10T19:32:05")
@StaticMetamodel(Products.class)
public class Products_ { 

    public static volatile SingularAttribute<Products, Categories> categoryID;
    public static volatile SingularAttribute<Products, String> productID;
    public static volatile CollectionAttribute<Products, Ratings> ratingsCollection;
    public static volatile SingularAttribute<Products, String> descriptions;
    public static volatile SingularAttribute<Products, Boolean> isStatus;
    public static volatile SingularAttribute<Products, Brands> brandID;
    public static volatile SingularAttribute<Products, String> image2;
    public static volatile SingularAttribute<Products, Integer> price;
    public static volatile SingularAttribute<Products, String> image1;
    public static volatile CollectionAttribute<Products, Wishlist> wishlistCollection;
    public static volatile CollectionAttribute<Products, OrdersDetails> ordersDetailsCollection;
    public static volatile SingularAttribute<Products, String> feature;
    public static volatile SingularAttribute<Products, String> image4;
    public static volatile SingularAttribute<Products, String> image3;
    public static volatile SingularAttribute<Products, String> productName;

}