public with sharing class RegistrationListPagecontroller {

    public Contact getContact() {
        return null;
    }

    list<Contact> conlist;
    public RegistrationListPagecontroller(){
        conlist=[Select Name,Phone,Email From Contact];
    }

}