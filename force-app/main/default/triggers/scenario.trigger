trigger scenario on Account (before insert,before update,after insert) {
   List<Contact> cons=new List<Contact>();
   
    for(Account a: Trigger.new){
    
    contact c=new contact();     
        //c.firstname='Account.name';
        c.lastname=a.name;
        c.phone=a.phone;
        c.AccountId = a.id;
        cons.add(c);
     }
    insert cons;
}