package entity;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2018-09-10T19:32:05")
@StaticMetamodel(Admins.class)
public class Admins_ { 

    public static volatile SingularAttribute<Admins, String> adminID;
    public static volatile SingularAttribute<Admins, String> email;
    public static volatile SingularAttribute<Admins, String> adminRole;
    public static volatile SingularAttribute<Admins, String> fullName;
    public static volatile SingularAttribute<Admins, String> avatar;
    public static volatile SingularAttribute<Admins, String> password;
    public static volatile SingularAttribute<Admins, Date> createdDate;
    public static volatile SingularAttribute<Admins, Boolean> isStatus;

}