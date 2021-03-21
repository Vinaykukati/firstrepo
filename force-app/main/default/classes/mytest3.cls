@RestResource(urlmapping='/tmp/test/*')
global class mytest3{
    @HttpPost
    global static String doPost(){
        RestResponse res = Restcontext.response;
        RestRequest req = Restcontext.request;
        Blob blobdata = req.requestBody;
        string blobstring = blobdata.toString();
        baseclass b =(baseclass)Json.deserializeStrict(blobstring, baseclass.class);
        JSONGenerator gen = JSON.createGenerator(true);
        return b.topping[0].id;
    }
    public class baseclass{
        String id;
        String type;
        String name;
        String ppu;
        battersclass batters;
        toppingclass [] topping;
    }
    public class battersclass{
       batterclass [] batter;
    }
    public class batterclass{
        String id;
        String type;
        
    }
    public class toppingclass{
        String id;
        String type;
    }
}