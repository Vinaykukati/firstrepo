global class AccountBatchclass implements Database.Batchable<sobject>{
  /*  global Database.QueryLocator start (Database.BatchableContext BC){
        String Query = 'Select Id,Name From Customer__c';
        return Database.getQueryLocator(Query);
    }
    global void execute(Database.BatchableContext bc,List<Customer__c> acc){
        List<Customer__c> d = New list<Customer__c>();
        for(Customer__c a:acc){
            a.Name = 'R'+a.name;
            //acc.add(a);
            }
        Update acc;
        
    }
    global void finish(Database.BatchableContext Bc){
        
    }
*/
    public static integer count;
    global Database.QueryLocator start (Database.BatchableContext BC){
        String Query = 'Select Id,Name From Customer__c';
        return Database.getQueryLocator(Query);
    }
    global void execute(Database.BatchableContext bc,List<Customer__c> acc){
        System.debug('records are>>'+acc);
        list<Customer__c> c = [Select id,name from Customer__c where name != null];
        count = c.size();
        System.debug('>>>'+count);
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            String[] toAddresses = new String[] {'vinaykukati121@gmail.com'};
            mail.setToAddresses(toAddresses);
            mail.setSubject('Match Merge Batch ');
            mail.setPlainTextBody('records processed ' + count);
        	System.debug('count'+count);
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
    global void finish(Database.BatchableContext Bc){
       
    }
    
}