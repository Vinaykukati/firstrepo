public with sharing class RegistrationDetailPageController {

    public PageReference Edit() {
        return null;
    }


    public Contact getCon() {
        return con;
    }

    public final Contact con;
    public RegistrationDetailPageController (){
    
        Id id = ApexPages.currentPage().getParameters().get('id');
        con=[Select FirstName,LastName,Email,Phone From Contact Where id=:id];
    
    }
}