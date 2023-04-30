package pack14;
import java.sql.*;
import java.sql.SQLException;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

@WebService(serviceName = "web14")
public class web14 {
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    @WebMethod(operationName = "shopping")
    public String shopping(@WebParam(name="catego")String catego)throws SQLException{
        try{
              Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/ipex14");
            Statement st=c.createStatement();
            ResultSet rs=st.executeQuery("select * from product");
            while(rs.next()){
                String name=rs.getString("pname");
                String cat=rs.getString("category");
                String p=rs.getString("price");
                if(catego.equals(cat)){
                    return name+" : "+cat+" : "+p;
                   
                }
            }
            c.close();
            
            return "products details displayed";
        }
        catch(Exception e){
            return "can't established connection";
        }
    }
}