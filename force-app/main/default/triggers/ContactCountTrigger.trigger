Trigger ContactCountTrigger on Contact(After insert,after update,before update){
  set<id> setid = new set<id>();
    list<Account> ac = new list<Account>();
    for(Contact con :trigger.new){
        setid.add(con.accountid);
    }
    for(Account acc: [Select name,id,Count_of_Contacts__c,(Select id from Contacts)from Account where id =:setid]){
        Account a = new Account();
        a.id = acc.id;
        a.Count_Of_Contacts__c = acc.Contacts.Size();
        ac.add(a);
    }
    update ac;
}