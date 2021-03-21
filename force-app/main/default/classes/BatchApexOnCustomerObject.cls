global class BatchApexOnCustomerObject implements Database.Batchable <sobject> {
    global Database.QueryLocator Start(Database.BatchableContext bc){
    return Database.getQueryLocator ([Select id,name From Customer__c]);
}
    global void Execute(Database.BatchableContext bc,list<Customer__c> cus){
        list<Customer__c> cust = new list<Customer__c>();
        for(Customer__c c : cus){
          
            c.Record_Created__c = True;
            cust.add(c);
            }
        
        update cust;
       
    }
    global void finish(Database.BatchableContext bc){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            String[] toAddresses = new String[] {'vinaykukati143@gmail.com'};
          
            mail.setSubject('Batch Subject');
            mail.setPlainTextBody('records processed ');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        
     /*   Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            String[] toAddresses = new String[] {a.CreatedBy.Email};
            mail.setToAddresses(toAddresses);
            mail.setSubject('Match Merge Batch ' + a.Status);
            mail.setPlainTextBody('records processed ' + a.TotalJobItems +
           'with '+ a.NumberOfErrors + ' failures.');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
*/
    }

}