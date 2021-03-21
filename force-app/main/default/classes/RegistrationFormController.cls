public with sharing class RegistrationFormController{

    public PageReference Register() {
        insert con;
      PageReference pr=new PageReference ('/apex/RegistrationDetailPage?Id='+con.Id);
        return pr;
    }


    public Contact getCon() {
        return null;
    }

    public final Contact con;
    public RegistrationFormController(){
        con=new Contact();
    }
}