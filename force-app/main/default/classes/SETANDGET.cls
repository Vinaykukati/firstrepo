public class SETANDGET {
    public string Name;
    public string getname(){
        return Name;
     }
    public void setname(string Name){
        this.Name = Name;
    }
    public PageReference Show(){
			Name = 'This My name'+Name;
     return null;
    }
}