trigger triggerCallout on Contact (before insert) {
    
    Map<Id,Contact> mapObj = new Map<Id,Contact>();
        set<Id> setIds  = new set<Id>();

    if(trigger.isbefore){
        for(Contact con : trigger.new){
            System.debug('ramesh >>'+con);
            mapObj.put(con.LastName,con);
            setIds.add(con.id);
        }
    } 
    
    //list of values
    List<Contact> newValues = Trigger.new;
    System.debug('xyz'+newValues);
    System.debug('xyz'+mapobj);
   
}