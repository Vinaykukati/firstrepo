Public with sharing class SOSLController{ 
    Account acc = new Account();
    public Account getAcc() {
        return acc;
    }

    public PageReference redirect() {
        PageReference redirect = new PageReference('/apex/SearchRecordsAccount'); 

        return redirect;
        
    }

    Public List<account> accList{get;set;}
    Public List<Contact> conList{get;set;}
    
    Public String searchStr{get;set;}
    Public SOSLController(){
    }
    
    Public void soslDemo_method(){
        //accList = New List<account>();
        //conList = new List<Contact>();
        String searchStr1 = '*'+searchStr+'*';
        String searchQuery = 'FIND \'' + searchStr1 + '\' IN ALL FIELDS RETURNING  Account (Id,Name,type), Opportunity (Id, Name),Contact (LastName, Id)';
      
        List<List <sObject>> searchList = search.query(searchQuery);
    
        accList = ((List<Account>)searchList[0]);
       
        //conList = ((List<Contact>)searchList[2]);
  
    }
    
}