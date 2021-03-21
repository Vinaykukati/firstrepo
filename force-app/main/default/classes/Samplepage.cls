public with Sharing class Samplepage
{    
    public List<Account> acc {get;set;}
        
       
    public Samplepage()
    {
        acc = [SELECT Name, AccountNumber FROM Account];
        
    }
}