public with sharing class RegistrationLoginPage1controller {
    
    public PageReference login(){ 
            for(Contact con : conlist){
                if(con.UserName__c != username){
                 apexpages.addmessage(new ApexPages.message(ApexPages.severity.error,'please enter valid details'));   
                }else if(con.UserName__c==username){
                    PageReference pr=new PageReference ('/Apex/ContactRegistrationDetailPage?id='+con.Id);
                    return pr;
                }
            }
             
             return null;
                
    }
 

    public String Password { get; set; }

    public String UserName { get; set; }

   
    List<Contact> conlist;
    public RegistrationLoginPage1controller (){
        conlist=[Select UserName__c From Contact];
    }
}