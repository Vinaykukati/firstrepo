trigger SaveDeletedRecords on Customer__c (before delete) {
    list<Test__c> test = new list<Test__c>();
    for(Customer__c cus : trigger.old){
     
            test__c t = new test__c();
            t.Name = cus.Name;
            t.Phone__c = cus.Phone__c;
            t.Email__c = cus.Email__c;
            t.Salary__c = cus.Salary__c;
            test.add(t);
        
    }
    insert test;
}