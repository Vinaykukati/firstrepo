public class RecordFetch {

public List<Account> bdoc;

public boolean display{get; set;}

public RecordFetch() {
     display = false;
}

Public PageReference GetRecordPage(){

    display = true;
    GetRecordFetching();

   return null;   
}


Public List<Account> GetRecordFetching(){

    bdoc =  new List<Account>();

   List<Account> listitem = [Select Id, Name From Account];

if(listitem.size() > 0)
{
        bdoc.addall(listitem);        
}    
          return bdoc;
}
}