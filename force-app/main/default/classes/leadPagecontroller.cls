public with sharing class leadPagecontroller {

    public Account Account { get; set; }

    public Account getAcc() {
        return null;
    }


    

    public final Account acc;
    public leadPagecontroller (){
    Id id=Apexpages.currentpage().getparameters().get('id');
    
    }
}