public class Test {
    public static void m1(){
        
        List<Account> obj = [SELECT ID FROM Account];
        System.debug(obj);
    }
}