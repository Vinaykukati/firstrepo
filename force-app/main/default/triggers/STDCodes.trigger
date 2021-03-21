trigger STDCodes on Customer__c (before insert,before update){
    
    for(Customer__c c : trigger.new){
        list<Customer__c> cus = new list<Customer__c>();
        if(trigger.isinsert || trigger.isupdate){
            if(c.STD__c == '040'){
               c.State__c = 'AP';
               }
            if(c.STD__c == '080'){
                c.State__c = 'BNG';
            }
            if(c.STD__c == '090'){
                c.State__c = 'TS';
            }
            insert cus;
        }
    }
}