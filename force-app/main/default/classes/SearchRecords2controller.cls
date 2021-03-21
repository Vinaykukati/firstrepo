public class SearchRecords2controller {

    public list<Account> acc {set; get;}
   
      Account ee;
    public list<Account> getAcc() {
        acc= new list<Account>();
         List<Account> listitem = [Select Id, Name From Account where name =:ee.name];
         if(listitem.size() > 0)
{
        acc.addall(listitem);        
}    
        return acc;
    }

    public PageReference Search() {
         
        return null;
    }
    
}