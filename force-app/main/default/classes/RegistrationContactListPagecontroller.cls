public with sharing class RegistrationContactListPagecontroller {
    
    public PageReference conlimit() {
       
        return null;
    }
    public String Size { get; set; }
    public string conId{get; set;}
    
    public PageReference newlinkaction() {
    
        Id id=Apexpages.currentpage().getparameters().get('conId');
        PageReference pr=new PageReference('/Apex/ContactRegistrationDetailPage?Id='+Id);
        return pr;
    }


    public PageReference newaction() {
                PageReference pr=new PageReference ('/Apex/ContactRegistrationPage');
                return pr;
    }

    list<contact> Conlist{set; get;}

    public list<Contact> getContact() {
        return conlist;
    }

        public RegistrationContactListPagecontroller(){
        conList = [SELECT Name, FirstName, LastName, Phone, Email FROM Contact ORDER BY Name ASC LIMIT 10];
        conlist=[Select Name,Phone,Email From Contact];
    }
}