public with Sharing class Sample 
{    
    public List<Account> acc {get;set;}
    public List<Account> mem {get;set;}    
       
    public sample()
    {
        acc = [SELECT Name, AccountNumber FROM Account];
        mem = [SELECT Name FROM Account];
    }
}