public with sharing class SetterMethodscontroller1 {

    public PageReference Save() {
        
        return null;
    }




    public final Account acc;
    
    public SetterMethodscontroller1 (){
        Id id=Apexpages.Currentpage().getparameters().get('id');
        acc=(acc==null)? new Account():[Select Name,Phone From Account Where id=:id];
    }

}