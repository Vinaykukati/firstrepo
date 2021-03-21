public class Sample1controller{

public List<Account> bdoc;

public boolean display{get; set;}

public Sample1controller() {
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