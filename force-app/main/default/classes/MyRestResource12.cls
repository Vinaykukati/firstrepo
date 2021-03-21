@RestResource(urlMapping='/api/test/webservices/chiru/*')
global with sharing class MyRestResource12 {

  
    @HttpPost
    global static String doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        Blob bodyBlob =  req.requestBody;
        String bodyString =  bodyBlob.toString();
        //Second Step
        chiru  c = (chiru)JSON.deserializeStrict(bodyString,chiru.class);
        return c.jsonArray[0].id;
    } 
    
    //First Step
    public class chiru{
        String Make;
        String Year;
        arrayOfObject [] jsonArray ;
        
    }
    class arrayOfObject{
        String name;
        String id;
    }
}