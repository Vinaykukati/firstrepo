public with sharing class ContactRegistrationDetailPagecontroller {

    public boolean dButton { get; set; }

    public boolean cButton { get; set; }

    public PageReference del() {
        
        Delete con;
        PageReference pr = New PageReference('/apex/ContactRegistrationListPage');
        
        return pr;
    }
    

    public PageReference Cancel() {
        PageReference pr=new PageReference ('/apex/ContactRegistrationListPage');
        return pr;
    }


    public PageReference Save() {
        pbs1=true;
        pbs2=false;
        eButton=true;
        sButton=false;
        update con;
        return null;
    }
 
    public PageReference Edit() {
        pbs2=true;
        pbs1=false;
        eButton=false;
        sButton=true;
        dButton=false;
        cButton=true;
        return null;
    }

    public boolean pbs1{get; set;}
    public boolean pbs2{get; set;}
    public boolean eButton{get; set;}
    public boolean sButton{get; set;}



    public Contact getCon() {
        return con;
    }
    
    public final Contact con;
    
    public ContactRegistrationDetailPagecontroller (){
     
    pbs1=true;
    eButton=true;
    sButton=false;
    dButton=true;
    
    Id conid=ApexPages.CurrentPage().getparameters().get('id');
    try{
        con=[Select FirstName,LastName,Email,Phone,UserName__c,Password__c From Contact Where ID=:conid];
       }
       catch(Exception Exp){
           ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error, 'Please add Id for URL and this is Exception: '+exp));

}

       }
    }