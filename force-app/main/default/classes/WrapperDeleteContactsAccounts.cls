public class WrapperDeleteContactsAccounts
{
List<WrapContacts> conListWrap ;
List<Account> accounts ;
List<Contact> contacts ;
List<Contact> delContacts;
public WrapperDeleteContactsAccounts()
{
conListWrap = new List<WrapContacts>();
accounts = new List<Account>();
contacts = new List<Contact>();
delContacts = new List<Contact>();
}
public class WrapContacts
{
public Contact con {get;set;}
public Boolean check {get;set;}
public WrapContacts(Contact c)
{
con = c;
check = false;
}
}
public List<WrapContacts> getContacts()
{
contacts = [SELECT Id, LastName, AccountId FROM Contact LIMIT 100];
for(Contact c : contacts)
{
conListWrap.add(new WrapContacts(c));
}
return conListWrap;
}
public PageReference deleteContacts()
{
PageReference PageRefer = new PageReference('/apex/WrapperDelPage');
PageRefer.setRedirect(true);
delContacts = new List<Contact>();
for(WrapContacts c : conListWrap)
{
if(c.check == true)
{
delContacts.add(c.con);
}
}
try
{
delete delContacts;
}
catch(Exception e)
{
System.debug('m====='+e.getMessage());
ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,e.getMessage()));
return null;
}
return PageRefer;
}
}