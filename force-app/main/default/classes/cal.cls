global class cal {
   
    global static void calmethod(){
   
        list<Contact> con = [Select id,lastname,firstname,phone from Contact order by CreatedDate desc limit 1];
        //list<Contact> con = [Select id,lastname,firstname,phone from Contact order by CreatedDate desc];

        System.debug('Records are'+con);
        JsonGenerator gen = Json.createGenerator(true);
        gen.writeStartObject();
    
        for(Contact c : con){
            if(c.id!=null)
            gen.writeStringField('id', c.id);
            if(c.Lastname!=null)
            gen.writeStringField('lastname', c.Lastname);
        }
        gen.writeEndObject();
        System.debug('Fetched records'+gen);
        Http http = new Http();
        HttpRequest request = new HttpRequest();
		request.setEndpoint('callout:My_first_clallout');

        request.setEndpoint('https://vinay143-developer-edition.ap5.force.com/services/apexrest/vinaykukati121/test/singlerecord/*');
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