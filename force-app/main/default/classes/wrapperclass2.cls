public class wrapperclass2 {
    public string class2name;
    public string class2city;
    public course co;
    public wrapperclass2(string cname,decimal cfee){
        class2name = 'Raj';
        class2city = 'Bang';
        co = new course();
        co.coursename = cname;
        co.coursefee = cfee;
    }
    public class course{
        public string coursename;
        public decimal coursefee;
       
    }
}