trigger CheckBox on Customer__c (before insert) {
   /*list<Customer__c> cus = new list<Customer__c>();
    for(Customer__c c : trigger.new){
        if(trigger.isBefore && trigger.Isinsert){
        c.Record_Created__c = True;
    }
        if(trigger.isBefore && trigger.isupdate){
         c.Record_Updated__c = True;
         c.Record_Created__c = False;
        }
        }
 insert cus;
 update cus;
*/
    AccountBatchclass obj = new AccountBatchclass();
    database.executeBatch(obj, 2);
}