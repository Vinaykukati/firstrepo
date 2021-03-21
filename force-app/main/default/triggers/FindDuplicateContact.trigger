trigger FindDuplicateContact on Contact (before insert) {
    
    for(contact con :Trigger.new){
        if(con.Accountid != null){
        Id a = con.Accountid ;
        list<Contact> clist= [Select id from Contact where Accountid = :a];
        if(clist.size()>0){
            con.adderror('you cannot create more contacts');
            }
        }
    }
}