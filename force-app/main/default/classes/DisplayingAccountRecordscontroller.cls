public with sharing class DisplayingAccountRecordscontroller {

    public list<Account> getSearchrecords() {
        searchrecords();
        list<Account> acc = new list<Account>();
        return acc;
    }


    public Account getA() {
        searchrecords();
        list<Account> acc = new list<Account>();
        return null;
    }


 

    public String Searchstr { get; set; }
    public string searchText {get; set;}
 
    public list<Account> acc {get; set;}
    public void searchrecords() {
        String searchText =  '%'+searchstr +'%';

      String QueryString  = 'SELECT Name,Phone,industry FROM Account where name like \'%'+searchstr+'%\'';

     acc = database.Query(QueryString);
   
   
    }


    public list<Account> getAcc() {
   
        return acc;
    }

  
}