@RestResource(urlMapping='/TargetRecruit/contacts/*')
global class MyRestResource2 {
	@HttpGet
    global static string getRecord() {
        // Add your code
        JSONGenerator gen = JSON.createGenerator(true);
        list<Contact> con = [Select id, name,Phone,Email from Contact];
        gen.writeStartObject(); 
        Integer i=1;
        for(Contact tmp: con){
         gen.writeFieldName('record'+i); 
         gen.writeStartObject();
       /*  "id": "name",
         "Phone":"", 
         "Email":"",
         "First Name":""
       */
        gen.writeStringField('id', tmp.id);
        if(tmp.Phone!= null)
        	gen.writeStringField('Phone', tmp.Phone);
        if(tmp.Email!= null)
        	gen.writeStringField('Email', tmp.Email);
        //if(tmp.First_Name__c != null)
        //	gen.writeStringField('First Name', tmp.First_Name__c);
        i++;
        } 
        gen.writeEndObject();
        return gen.getAsString();
        
    }
}