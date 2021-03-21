global class mytestCallout{
    global static void	callMethod(){
        list<Contact> con = [Select id,lastname,firstname,phone from Contact];        
        JsonGenerator gen = Json.createGenerator(true);
        gen.writeStartObject();
        //Integer i=1;
        gen.writeFieldName('record');
        gen.writeStartArray();
        
        for(Contact c : con){            
            gen.writeStartObject();
            gen.writeStringField('id', c.id);
            if(c.FirstName!=null)
                gen.writeStringField('Firstname', c.Firstname);
            if(c.LastName!=null) 
                gen.writeStringField('Lastname', c.lastname);
            if(c.Phone!=null)
                gen.writeStringField('Phone', c.Phone);
            gen.writeEndObject();   
            //i++;  
          
        }
        gen.writeEndArray();
        gen.writeEndObject();
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://vinay143-developer-edition.ap5.force.com/services/apexrest/vinaykukati121/api/webservices/');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        String body = gen.getAsString();
        request.setBody(body);
        System.debug('before reponse'+request);
        HttpResponse response = http.send(request);
        System.debug('reponse'+response);
        if (response.getStatusCode() == 200) {
            System.debug('Succ');
        }

    }
}