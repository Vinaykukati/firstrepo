trigger ContactToAccount on Contact (before update) {
list<Account> c = new list<Account>();
for(Contact con : trigger.new){
    Account acc = new Account();

    //acc.name = con.lastname;
    acc.phone =  con.phone;
    c.add(acc);
}
    update c;
}