public with sharing class ContactRegistrationFormController {

    public PageReference Register() {
         insert con;
        PageReference pr = new PageReference('/apex/RegistrationDetailPage?Id='+con.Id);
        return pr;
    }


    public Contact getCon() {
        return con;
    }

    public final Contact con;
    
    public ContactRegistrationFormController() {
        con = new Contact();
    }
    
}