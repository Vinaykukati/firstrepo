public with sharing class testfbPage1 {
    public string id1{set; get;}
    public string name1{set; get;}
    public string website{set; get;}
    public integer fancount{set; get;}
    
    public testfbPage1(){
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://graph.facebook.com/1526958494152274?fields=id,name,website,posts&access_token=EAAKWENo1LL0BAIGJTuAQkB0VUARFPuySx9ZAZB4ZA7VDiZCGGGkQuk3VX5mG3qUkqCgsbcZA9mnFffa4WCvfpJdl6DahlZBuFiyxkPaAUQHn8ehgJziOGxZA9Au5Q2YlgKUH4X2ig4lxdWu3JLJMpxI7Syx6W5mRqRIEIwzUWWh77Ej5iDZCkowHcQeVUE47LZBoZD');
        system.debug('FB details'+req);
        req.setmethod('GET');
        try{
        HttpResponse res = http.send(req);
                
        string str = res.getbody();
        system.debug('res>>>'+str);
        JSON2APEX myclass = JSON2APEX.parsing(str);
        id1 = myclass.id;
        name1 = myclass.name;
        website = myclass.website;
        //fancount = myclass.fan_count;
        }
        catch(exception e){}
        
    }
}