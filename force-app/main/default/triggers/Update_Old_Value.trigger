trigger Update_Old_Value on Account (After insert,before update) {
    list<Account> acclist=new list<Account>();
    for(Account acc: Trigger.New){
        Account oldAccount = Trigger.oldMap.get(acc.ID);
        if(acc.Amount__c != oldAccount.Amount__c){
            acc.Previous_Amount__c = oldAccount.Amount__c;
            acclist.add(acc);
        }
         //update acclist;
      }
}