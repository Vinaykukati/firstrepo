trigger CountofChildRecords on Contact (before update,after insert) {
list<Account> c = new list<Account>();
    set<id> setid = new set<id>();
    for(Contact con : trigger.new){
        setid.add(con.accountid);
    }
    for(Account a : [select id,name,Count_of_Contacts__c,(select id from contacts) from account where id = : setid]){
    Account acc = new Account();
    acc.id = a.id;
    acc.Count_of_Contacts__c = a.contacts.size();
      c.add(acc);
  }  
  update c;
}