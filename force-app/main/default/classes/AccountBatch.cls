global class AccountBatch implements Database.Batchable<sobject>{
    global Database.QueryLocator start (Database.BatchableContext BC){
        String Query = 'Select Id,Name From Account';
        return Database.getQueryLocator(Query);
    }
    global void execute(Database.BatchableContext bc,List<Account> acc){
        List<Account> d = New list<Account>();
        for(Account a:acc){
            a.Name = 'Raja0'+a.name;
            d.add(a);
            }
        Update d;
        
    }
    global void finish(Database.BatchableContext Bc){
        
    }

}