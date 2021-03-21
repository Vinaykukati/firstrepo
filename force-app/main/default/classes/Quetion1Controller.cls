public class Quetion1Controller {

public string selectedSobject{get;set;}
public List<Account> lstQuery{get;set;}

    public Quetion1Controller(){
        lstQuery=new List<Account>();
    }
    
    public Void doSearch(){
    
        string Query='';
        Query='SELECT id,Name FROM Account where name='+selectedSobject;
        system.debug('==Query=='+Query);
        
        lstQuery=Database.query(Query);
        system.debug('==lstQuery=='+lstQuery);
    
    }
}