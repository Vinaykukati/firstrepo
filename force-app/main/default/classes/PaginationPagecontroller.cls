public with sharing class PaginationPagecontroller {

    public Apexpages.standardsetcontroller Setcon {get{
        if(setcon == null){
            setcon =new Apexpages.standardsetcontroller(Database.getquerylocator([Select id,name from Account]));
            
        }
    
        return setcon;
        
    }set;}

    public list<Account> acc = [Select id,name from Account];
    public list<Account> getRecords() {
        setcon.setpagesize(5);
        return setcon.getrecords();
    }    
}