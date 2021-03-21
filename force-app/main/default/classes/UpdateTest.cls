global class UpdateTest implements Database.Batchable<sobject>{
    global Database.Querylocator Start(Database.BatchableContext bc){
        return Database.getQuerylocator([Select name,phone from Account]);
    }
    global void Execute (Database.BatchableContext bc,list<Account> acc){
        
    }
    global void Finish(Database.BatchableContext bc){
        
    }
}