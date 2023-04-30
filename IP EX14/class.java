package pack14;
public class class14 {
     public static void main(String[] args) {
        System.out.println(shopping("fruit"));
     }
      private static String shopping(java.lang.String catego) {
          try{
        pack14.web14 service = new pack14.web14();
        pack14.web14 port = service;
        return port.shopping(catego);
        }
          catch(Exception e){
              return "exception";
          }
    }
}