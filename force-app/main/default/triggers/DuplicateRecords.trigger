trigger DuplicateRecords on Account (before insert) {
    for(Account acc : trigger.new){
    list<Account> a = [select name from Account where name = :acc.name];
    if(a.size()>0){
        acc.name.adderror('You cannot create a dulplicate account');
    }
   
    }
}