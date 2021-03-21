trigger UpdateAccount on Account (before update) {
    list<Contact> con = new list<Contact>();
    for(Account acc : Trigger.new){
        
    }
}