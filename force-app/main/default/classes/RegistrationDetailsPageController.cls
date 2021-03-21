public with sharing class RegistrationDetailsPageController {

    public PageReference Cancel() {
    
        return null;
    }


    public PageReference Save() {
        pbs1=true;
        pbs2=false;
        eButton=true;
        sButton=false;
        return null;
    }

    public boolean pbs1{set; get;}
    public boolean pbs2{set; get;}
    public boolean eButton{set; get;}
    public boolean sButton{set; get;}
    
    public PageReference Edit() {
         pbs2=true;
         pbs1=false;
         sButton=true;
         eButton=false;
        return null;
    }


    public Contact getCon() {
            return con;
    }

    public final Contact con;
    
    public RegistrationDetailsPageController (){
    eButton=true;
    pbs1=true;
    pbs2=false;
    sButton=false;
    eButton=true;
    Id id=Apexpages.currentpage().getparameters().get('id');
    try{
    con=[Select FirstName,LastName,Email,Phone,UserName__c,Password__c  From Contact Where Id=:id];
    }catch(Exception exe){
     ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error, 'Please add Id for URL and this is Exception: '+exe));

    }
       
    }
}