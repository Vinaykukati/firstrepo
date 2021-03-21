public with sharing class ContactRegistrationListPagecontroller {

    public PageReference newaction() {
        return null;
    }


    public PageReference newlinkaction() {
        return null;
    }

    public string conid {set; get;}
    public PageReference Edit() {
        PageReference pr=new PageReference('/Apex/ContactRegistrationPage/?id='+con.id);
        return null;
    }

    public Contact con;
    List<contact>conlist{set; get;}
    public ContactRegistrationListPagecontroller(){
        conlist=[Select Name,Phone,Email From Contact];
    }
    public List<contact> getContacts() {
        return conlist;
    }

}