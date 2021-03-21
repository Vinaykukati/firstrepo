public with sharing class SetterMethodscontroller {
    

    public PageReference Cancel() {
        return null;
    }


    public PageReference Save() {
        insert(acc);
        PageReference pr= new ApexPages.StandardController(acc).view();
        return pr;
    }

    public Account acc {get; set;}
    public Opportunity opp {set; get;}
    public Contact con {set; get;}
    public SetterMethodscontroller (){
    Id id=Apexpages.currentpage().getparameters().get('id');
    acc=(id==null) ? new Account(): [Select Name,Phone,Rating,Fax From Account Where Id =:id];
    }
}