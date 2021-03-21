public with sharing class ResultCalculation {

    public PageReference Result() {
        res=Num1+Num2;
        return null;
    }

    public string num1{set;get;}
    
    public string num2{set;get;}
    
    public string res{set;get;}
    
 
}