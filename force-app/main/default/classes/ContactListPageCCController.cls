public with sharing class ContactListPageCCController {

    public Integer pageSize { get; set; }
    public Integer totalRecSize { get; set; }
    public Integer pageNum { get; set; }
    public String conId { get; set; }
    
    List<Contact> conList { get; set; }
    
    public String baseQuery = 'SELECT Name, FirstName, LastName, Phone, Email FROM Contact';
    
    public ContactListPageCCController() {
        pageSize =10;
        //conList = [SELECT Name, FirstName, LastName, Phone, Email FROM Contact ORDER BY Name ASC LIMIT 10];
        totalRecSize = [SELECT count() FROM Contact];
        System.debug('>>>Basequery : '+baseQuery);
        System.debug('>>>BaseQuueywithLimit: '+baseQuery+ ' LIMIT ' + pageSize);
        conList = Database.Query(baseQuery+' LIMIT '+ pageSize);
    }
    
    public List<Contact> getContacts() {
        return conList;
    }
    
    public PageReference newAction() {
        PageReference pr = new PageReference('/apex/ContactRegistrationForm');
        return pr;
    }
    
    public PageReference newLinkAction() {
        Id id = ApexPages.currentPage().getParameters().get('conId');
        PageReference pr = new PageReference('/apex/ContactDetailPageForm?Id='+Id);
        return pr;
    }
    
    public PageReference conLimt() {
        pageNum = 0;
        conList = Database.Query(baseQuery+' LIMIT '+ pageSize);
        return null;
    }
  
    
    public PageReference next() {
        //pageNum++;
        
        return null;
    }
}