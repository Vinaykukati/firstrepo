public class Employee {
    public string name='vinay';
    public decimal sal=3000;
    public decimal exp=3;
    public decimal bonus;
    public Employee(){
        if(exp>5){
            bonus=sal*0.10;
        }
        else{
            bonus=sal*0.5;
        }
    
        
         system.debug('bonus iss'+bonus );
        }
    
}