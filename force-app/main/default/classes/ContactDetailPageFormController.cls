public with sharing class ContactDetailPageFormController {

    public boolean pbs1 { get; set; }
    public boolean pbs2 { get; set; }
    public boolean eButton { get; set; }
    public boolean sButton { get; set; }
    public final Contact con;
    
    public ContactDetailPageFormController() {
        pbs1 = true;
        eButton = true;
        sButton = false;
        Id conId = ApexPages.currentPage().getParameters().get('id');
        con = [SELECT FirstName, LastName, Phone, Email FROM Contact WHERE Id=:conId];
    }
    
    public Contact getCon() {
        return con;
    }
    
    public PageReference save() {    
        update con;
        pbs2 = false;
        pbs1 = true;
        eButton = true;
        sButton = false;
        return null;
    }
    
    public PageReference edit() {
        pbs2 = true;
        pbs1 = false;
        eButton = false;
        sButton = true;
        return null;
    }
}