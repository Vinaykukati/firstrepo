public with sharing class RegistrationPagecontroller {

    public PageReference Cancel() {
    
        PageReference  pr=new PageReference('/apex/ContactRegistrationListPage');
        return pr;
    }


    public PageReference Register() {
         Integer len = 8;
        Blob blobKey = crypto.generateAesKey(128);
        String key = EncodingUtil.convertToHex(blobKey);
        String pwd = key.substring(0,len);
        
        con.Username__c = con.FirstName+'.'+con.Lastname+'.dev';
        con.Password__c = pwd;
        con.Password_enc__c = pwd;

        insert Con;
        PageReference  pr=new PageReference('/apex/RegistrationDetailPage?id='+con.id);
        return pr;
    }


    public Contact getCon() {
        return con;
    }

    public final Contact con;
    public RegistrationPagecontroller (){
        con=new Contact();
    }
}