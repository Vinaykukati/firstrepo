public class InvokableClass {
    @InvocableMethod
    public static void SetQ(List<Id> ListID)
    {
        List<Contact > bidR=[select id from Contact where Account.id in :ListID and Type__c = 'Other'];

        delete bidR;
        system.debug('TEST!');
    }
}