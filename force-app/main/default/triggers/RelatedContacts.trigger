trigger RelatedContacts on Account (before insert,before update) {
    list<Opportunity > opps =new list<Opportunity >();
    for(Account acc : Trigger.new){
        Opportunity opp = new Opportunity ();
        opp.name = acc.name;
        opp.stageName = 'Prospecting';
        opp.CloseDate= system.today();
        opps.add(opp);
    }
    insert opps;
}