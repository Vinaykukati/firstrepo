public class Staff {
    integer No;
    string Name;
    Date Dt;
    
    public Staff(){
        Name = 'Hari';
        No = 123;
        Dt = Date.Today();
    }
    public  string getDetails(){
        return Name;
    }
    public integer getNumber(){
        return No;
    }
    public Date getDate(){
        return dt;
    }
    

}