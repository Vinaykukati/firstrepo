@RestResource(urlmapping='/test1/')
global  class mytest1{
    @HttpGet
    global static List<Account> doGet(){
        
        
        List<RecordType> recordType = [ SELECT Id, Name FROM RecordType WHERE sObjectType='Account'];
		
       List<Account> accList =  [ SELECT Id,Name FROM  Account];
	  System.debug('deeep'+recordType+'hhh'+accList);
        /*
        List<RecordType> lstAccountRecordTypes = [SELECT Id, Name FROM RecordType WHERE sObjectType='Account'];
		System.debug('Record Types:'+lstAccountRecordTypes.size());
        
        
        
        String SobjectApiName = 'Account';
     
        
        
        Map <String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
        List<String> entities = new List<String>(schemaMap.keySet());
        For(String name : entities)
        {
            System.debug('----->'+name);
        }


        
        
        
        
        
        
      //  String SobjectApiName = 'Account';
    //    Map<String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
        Map<String, Schema.SObjectField> fieldMap = schemaMap.get(SobjectApiName).getDescribe().fields.getMap();
        
        String strFields = '';
        
        for(String fieldName : fieldMap.keyset() )
        {
            if(strFields == null || strFields == '')
            {
                strFields = fieldName;
            }else{
                strFields = strFields + ' , ' + fieldName;
            }
        }
    System.debug('strFields'+strFields);	        
      String   query = 'select ' + strFields + ' from ' + SobjectApiName + ' Limit 10 ';
        
		List <Account> accList = Database.query(query);
        
        
        */
        
       //   List<Account> accList = new List<Account>();
        
        try {
        	// accList = [SELECT Id, Name, AccountNumber, Industry From Account];
            System.debug('ggggg'+accList);
        } catch (System.DmlException e) {
            for (Integer i = 0; i < e.getNumDml(); i++) {
                // Process exception here
                System.debug(e.getDmlMessage(i)); 
            }
        }

 		JSONGenerator gen = JSON.createGenerator(true);
        if(accList != null){
            System.debug('rajeshtest'+accList);
            gen.writeStartObject();     
            gen.writeFieldName('AccountList');
            gen.writeStartArray();
           for(Account acc :accList){
                gen.writeStartObject();
             //   gen.writeStringField('Id', acc.Id);
            //    gen.writeStringField('Name', acc.Name);
               // gen.writeStringField('AccountNumber', acc.AccountNumber);
               // gen.writeStringField('Industry', accList[0].Industry);
                gen.writeEndObject();
            }
            gen.writeEndArray();
            gen.writeEndObject();
            String jsonData = gen.getAsString();
            
            return accList;
       }
        else
        {
            return accList;
        }

    }


    @HttpPost
    global static String doPost(){
        RestResponse res = Restcontext.response;
        RestRequest req = Restcontext.request;
        Blob blobdata = req.requestBody;
        string blobstring = blobdata.toString();
        baseclass b =(baseclass)Json.deserializeStrict(blobstring, baseclass.class);
        //return b.batters.batter[2].type;
        List<Account> accList = new List<Account>();
        
        try {
        	 accList = [SELECT Id, Name, AccountNumber, Industry From Account WHERE Name =: 'Raja0Raja0AccVin'];
            System.debug(accList);
        } catch (System.DmlException e) {
            for (Integer i = 0; i < e.getNumDml(); i++) {
                // Process exception here
                System.debug(e.getDmlMessage(i)); 
            }
        }

 		JSONGenerator gen = JSON.createGenerator(true);
        if(!accList.isEmpty()){
            
            gen.writeStartObject();     
            gen.writeFieldName('AccountList');
            gen.writeStartArray();
            for(Account acc :accList){
                gen.writeStartObject();
                gen.writeStringField('Id', acc.Id);
                gen.writeStringField('Name', acc.Name);
                gen.writeStringField('AccountNumber', acc.AccountNumber);
                gen.writeStringField('Industry', acc.Industry);
                gen.writeEndObject();
            }
            gen.writeEndArray();
            gen.writeEndObject();
            String jsonData = gen.getAsString();
            
            return jsonData;
        }
        else {
            gen.writeStartObject();
            gen.writeStringField('Status','Data not found');
            gen.writeEndObject();
            String jsonData = gen.getAsString();
            return jsonData;
        }
            
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