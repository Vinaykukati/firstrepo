public class SearchRecordsController {
    Public String searchStr{get;set;}
    public Name searchList { get; set; }
    public list<Account>acc {set; get;}

    Public void Search(){
    acc = New List<Account>();
        String searchStr1 = '*'+searchStr+'*';
       String searchQuery = 'FIND \'' + searchStr1 + '\' IN ALL FIELDS RETURNING  Account (Id,Name,type),Contact(name,email),Opportunity(name,StageName)';
       List<List <sObject>> searchList = search.query(searchQuery);
       acc = ((List<Account>)searchList[0]);
                                      
        return;
    }

}