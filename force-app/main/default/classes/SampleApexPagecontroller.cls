public with sharing class SampleApexPagecontroller {

    public PageReference Save() {
        insert acc;
        PageReference pr= new ApexPages.StandardController(acc).view();
        return pr;
              
    }


    public Account geta() {
        return acc;
    }

    public final Account acc;
    public SampleApexPagecontroller (){ 
        acc=[Select Id,Name,Phone From Account Where id=:Apexpages.Currentpage().getparameters().get('id')];
        
    
    }
}