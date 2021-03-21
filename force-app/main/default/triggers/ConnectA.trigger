trigger ConnectA on Contact  (after insert,after update) {
list<Account> a = new list<Account>();
    for(Contact con :trigger.new){
   
        Account acc = new Account();
        acc.id = con.Accountid;
        acc.name = con.lastname;
        acc.phone = con.phone;
        a.add(acc);
 }   
    update a;
}