trigger UpdateOldRecords on Customer__c (after update) {
    list<Test__c> test = new list<Test__c>();
    for(Customer__c x : trigger.old){
        test__c t = new test__c();
        t.Name = x.Name;
        t.Phone__c = x.Phone__c;
        t.Email__c = x.Email__c;
        t.Salary__c = x.Salary__c;
        test.add(t);
    }
    insert test;
}