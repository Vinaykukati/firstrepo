trigger NewRecordWithAccount on Account (before insert,before update,after update) {
    list<Contact> acc = new list<Contact>();
    for(Account a : trigger.new){
        Contact con = new Contact();
       
        con.lastname = a.name;
        con.mobilephone = a.phone;
        con.Type__c = a.Type;
        acc.add(con);
    }
    upsert acc;
}