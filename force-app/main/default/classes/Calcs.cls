public with sharing class Calcs {
    
    public Date Today { get { return Date.today(); }}
    
    public PageReference mult() {
        m=num1*num2;
        return null;
    }
    

    public PageReference subs() {
        s=num1-num2;
        return null;
    }


    public PageReference Calc() {
        res=num1+num2;
        return null;
    }

    public integer num1{set;get;}
    public integer num2{set;get;}
    public integer res{set;get;}
    public integer s{set;get;}
    public integer m{set;get;}
}