@isTest
public class RelatedContacts {
    public static testmethod void testcode(){
        Account acc = new Account();
        acc.name = 'Vinay';
        insert acc;
        Opportunity opp = new Opportunity ();
        opp.name = acc.name;
        opp.StageName ='prospecting';
        opp.closeDate = System.Today();
        test.startTest();
        insert opp;
        test.stopTest();
        system.assertEquals('Vinay',opp.name);
    }
}