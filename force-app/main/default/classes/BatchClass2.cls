global class BatchClass2 implements Database.Batchable<sobject>{
    global Database.Querylocator start(Database.BatchableContext bc){
        return Database.getQuerylocator([select phone from contact]);
    }
    global void execute(Database.batchableContext bc,list<Contact>con){
       list<Contact> co = new list<Contact>();
        for(Contact c : con){
           c.phone = '7036671453';
            
        
        }
        update con;
    }
    global void finish(Database.batchableContext bc){
    
    }
}