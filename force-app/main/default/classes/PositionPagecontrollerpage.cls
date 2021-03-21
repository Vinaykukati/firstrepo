public with sharing class PositionPagecontrollerpage {

    public PageReference redirectdetailpage() {
        pageReference page = new pageReference('/apex/PositionsDetailPage');
        return page;
    }


    public List<Position__c> position { get; set; }
    
    public PositionPagecontrollerpage() {
    Position = [Select name,Status__c from Position__c];
    }

    public pagereference position (){
    
    Position = [Select name,Status__c from Position__c];
    
       
    return null;
    }
}