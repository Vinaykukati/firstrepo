trigger ConnectAcc on Contact  (after insert,after update) {

    List<Account> acc = new list<Account>();

    for(Contact con : Trigger.new){
    
 }
 
}