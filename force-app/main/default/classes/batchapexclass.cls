global class batchapexclass implements database.batchable<sobject>{
    global database.querylocator start(database.batchablecontext bc){
    return database.getquerylocator('Select id,name from Account');
    }
    global void execute(database.batchablecontext bc,list<Account> acc){
        list<Contact> con = new list<Contact>();
        //list<Account> acc = new list<Account>();
        for(Account a : acc){
            Contact c = new Contact();
            c.id = a.id;
            c.lastname = 'MR'+ a.name;
            c.phone = a.phone;
            con.add(c);
        }
        update con;
    }
    global void finish(database.batchablecontext bc){
    
    }
}