@RestResource(urlmapping='/TargetRecruit/manoj/*')
global class MyRestResource3 {
	@HttpGet
    global static string getRecord(){
        JsonGenerator ger = Json.createGenerator(true);
        /*list<Candidate__c> can = [Select id, Name from Candidate__c];
		ger.writeStartObject();
        integer i = 1;
        for(Candidate__c c : can){
            ger.writeFieldName('Records'+i);
            ger.writeStartObject();
            ger.writeStringField('id',c.Id);
            
            i++;
        }
        ger.writeEndObject();
*/
        ger.writeStartObject();
       
        ger.writeEndObject();
    return ger.getAsString();
    }
    
     @HttpPost
     global static Integer postRecord() {
         RestRequest req = RestContext.request;
         
         system.debug('Test1:request object'+req);
         system.debug('Test2:HttpMethod'+req.httpMethod);
         system.debug('Test3:Params'+req.params);
         system.debug('Test4:remoteAddress'+req.remoteAddress);
         system.debug('Test5:requestBody'+req.requestBody);
         system.debug('Test6:requestURI'+req.requestURI);
         system.debug('Test7:resourcePath'+req.resourcePath);
         system.debug('Test8:request Header'+req.headers);
         req.addHeader('Test Records', '250');
         
         req.addParameter('Test Params', '300');
        
         RestResponse res = RestContext.response;
         	res.statusCode = 200;
         
         res.addHeader('Content-Type', 'application/json');
         JsonGenerator gen = Json.createGenerator(true);
         	gen.writeStartObject();
         	gen.writeFieldName('Response');
         	gen.writeStartObject();
         	gen.writeStringField('Status','Success');
         	gen.writeEndObject();
         	gen.writeEndObject();
         	Blob body = Blob.valueOf(gen.getAsString());
         	res.responseBody = body;
         system.debug('Test10:headers'+res.headers);
         system.debug('Test11:responseBody'+res.responseBody);
         //system.debug('Test12:RestResponse'+res.RestResponse);
         system.debug('Test13:statusCode'+res.statusCode);
         return res.statusCode;
    }
}