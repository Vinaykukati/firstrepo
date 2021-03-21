trigger EmailnotEqualtoNull on Customer__c (before insert,before update) {
    for(Customer__c c :trigger.new){
        if(c.Email__c == null)
            c.adderror('Enter Email');
        
    }
}