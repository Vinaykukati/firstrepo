public with sharing class PositionPagecontroller {

    public PageReference Save() {
      insert pos;
      PageReference pr=new PageReference('/Apex/ContactRegistrationDetailPage?id='+pos.Id);
        return pr;
    }


    public Position__c getPos() {
        return pos;
    }

    public final Position__c pos;
    public PositionPagecontroller (){
        pos=new Position__c();
    }

}