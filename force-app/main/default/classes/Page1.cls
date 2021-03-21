public with sharing class Page1 {

    public PageReference Save() {
        
        acc.Phone=con.Phone;
        insert acc;
        con.AccountId=acc.Id;
        insert con;
        opp.AccountId=acc.Id;
        insert opp;
      
        return null;
    }


     public PageReference Step3() {
        return page.OpportunityWizard;
    }
    
    public PageReference Step2() {
        return page.ContactOpportunity;
    }


    public PageReference Step1() {
        return page.CreateNewRecordCustomController;
    }
     OpportunityContactRole role;
       public OpportunityContactRole getRole() {
       if(role == null) role = new OpportunityContactRole();
       return role;
}
    Contact con=new Contact();
    public Contact getCon() {
    if(con==null) con=new Contact();
        return con;
    }

   Opportunity opp=new Opportunity();
    public Opportunity getOpp() {
    if(opp==null) opp=new Opportunity();
        return opp;
    }

    Account acc=new Account();
    public Account getAcc() {
    if(acc==null) acc=new Account();
        return Acc;
    }

}