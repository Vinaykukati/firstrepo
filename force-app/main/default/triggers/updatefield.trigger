trigger updatefield on Contact (before update) {
     list<Contact> con = new list<Contact>();
    for(Contact c:trigger.new){
        c.lastname = 'test121';
    }
    update con;
}