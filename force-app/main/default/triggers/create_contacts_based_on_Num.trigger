trigger create_contacts_based_on_Num on Account (after insert,after update) {
  map<id,decimal> acmap=new map<id,decimal>();
  //  list<contact> conlist=new list<contact>();
    for(account ac:trigger.new){
        acmap.put(ac.id,ac.Num_of_Contacts__c);
    }
     list<contact> conlist=new list<contact>();
    if(acmap.size()>0){
        for(id acc:acmap.keySet()){
            for(integer i=1; i<=acmap.get(acc); i++){
                contact con=new contact();
                con.lastname='vinay'+i;
                con.AccountId= acc;
              conlist.add(con);
            }
        }
        insert conlist;   
        
    }
}