trigger updatecustomfield on Customer__c (before update) {
    list<Customer__c> cus = new list<Customer__c>();
    for(Customer__c c : trigger.new){
        c.name = 'test121';
        //cus.add(c);
    }
    update cus;
}