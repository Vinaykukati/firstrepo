public class LearningMyController {
    Account account;
    public PageReference Save() {
        update account;
        return null;
    }


    public Account getAccount() {
        account = [Select id,name from Account  where id= :Apexpages.Currentpage().getParameters().get('id')];
        return account;
    }


    public String getName() {
        return 'My Controller';
    }

}