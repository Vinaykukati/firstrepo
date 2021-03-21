trigger ConOnNewAcc on Account (before insert,after insert,before update){
    Public List<Contact> con = new List<Contact>();
    For(Account Acc:Trigger.new ){ 
        Contact c=new contact();
        c.accountid = acc.id;
        //acc.id = c.accountid;
        c.Lastname=acc.Name; 
        c.phone=Acc.phone;
        c.mailingcity=acc.Billingcity;
        con.add(c);
    } 
    update Con;
    
}