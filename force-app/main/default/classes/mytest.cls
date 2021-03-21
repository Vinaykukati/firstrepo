@RestResource(urlmapping='/testrest')
global with sharing class mytest{
    @HttpPost
    global static string doGet(){
        RestRequest req = Restcontext.request;
        RestResponse res = Restcontext.response;  
        Blob blobdata = req.requestBody;
        String blobstring = blobdata.toString(); 
        baseclass t = (baseclass)Json.deserializeStrict(blobstring,baseclass.class);
        //return t.arrayrecords[0].id;
    	return t.id;
    }
    
    public class baseclass{
        String id;
		obj cust;
        arrayclass [] arrayrecords;
    }
    public class obj{
            String name;
            String Age;
        }
    public class arrayclass{
        string id;
    }
}