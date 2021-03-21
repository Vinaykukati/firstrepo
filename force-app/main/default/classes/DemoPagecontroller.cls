public class DemoPagecontroller {

    public String getSelectoption() {
        return null;
    }


    public PageReference CustomerDirect() {
        acc = [Select name,type from Account where type = 'Customer - Direct'];
        return null;
    }

    public list<Account> acc {set; get;}
    
    public PageReference allrecords() {
        acc = [Select name,type from Account];
        return null;
    }


    public list<Account> getAcc() {
        return acc;
    }

  
   
}