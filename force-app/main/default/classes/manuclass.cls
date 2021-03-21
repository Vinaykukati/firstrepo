global class manuclass implements database.Batchable<sobject>{
	
    global database.QueryLocator start(database.BatchableContext bc){
        string query = 'Select id, name from Account';
        return database.getQueryLocator(query);
        
    }
    
    global void execute(database.BatchableContext bc, list<Account> acc){
        list<Account> ac = new list<Account>();
        for(Account a: acc){
            if(a.Name.contains('Raja')){
                a.Name = a.Name +'Vin';
            }
            acc.add(a);
        }
        update acc;
    }
    
    global void finish(database.BatchableContext bc){
        
        
    }
}