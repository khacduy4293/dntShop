package entity;

import java.math.BigDecimal;
import java.math.BigInteger;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2018-09-10T19:32:05")
@StaticMetamodel(AverageRatings.class)
public class AverageRatings_ { 

    public static volatile SingularAttribute<AverageRatings, BigInteger> id;
    public static volatile SingularAttribute<AverageRatings, BigDecimal> averageRating;
    public static volatile SingularAttribute<AverageRatings, String> productID;
    public static volatile SingularAttribute<AverageRatings, String> productName;

}