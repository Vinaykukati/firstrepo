trigger countCons on Contact (before insert) {
    if(Trigger.isInsert){
        set<id> accid = new set<id>();
        set<id> conid = new set<id>();
        list<Account> a = [Select id from Account];
        for(Account ac:a){
            
        }
        
    }
}