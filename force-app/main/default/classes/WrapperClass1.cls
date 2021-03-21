public class WrapperClass1 {
	public string Empname;
    public string city;
    public class2 cl;
    public WrapperClass1(string cname,decimal csalary){
        Empname = 'Madhav';
        city = 'Hyd';
        cl = new class2();
        cl.class2name = cname;
        cl.class2fee = csalary;
    }
    public class class2{
        public string class2name;
        public decimal class2fee;
    }
}