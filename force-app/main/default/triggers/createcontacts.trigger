trigger createcontacts on Account (after insert) {
    
    if(Trigger.isInsert){
        list<Contact> con = new list<Contact>();
        for(integer i=0;i<5;i++){
        for(Account acc : Trigger.new){
            Contact c = new Contact();
            c.AccountId = acc.Id;
            c.FirstName = acc.name;
            c.LastName = acc.Name +'V';
            con.add(c);
        }
        }
    
    insert con;
    }
}