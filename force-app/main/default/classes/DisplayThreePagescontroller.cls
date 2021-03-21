public with sharing class DisplayThreePagescontroller {
    public DisplayThreePagescontroller (){
        Id id=Apexpages.currentpage().getparameters().get('id');
    }

    public PageReference Save() {
        
        return null;
    }


    public Account getAcc() {
        return null;
    }

    public final Account acc;
}