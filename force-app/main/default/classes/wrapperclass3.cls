public class wrapperclass3 {
	public string name;
    public product productinfo;
    public Agent Agentinfo;
    
    public wrapperclass3(string name){
        this.name=name;
    }
    public void createproduct(string name,string code,decimal price){
        productinfo = new product();
        productinfo.productname = name;
        productinfo.productcode = code;
        productinfo.productprice = price;
    }
    public void createAgent(string name,string city){
        Agentinfo = new Agent();
        Agentinfo.Agentname = name;
        Agentinfo.city = city;
    }
    public class product{
      public string productname;
      public string productcode;
      public decimal productprice;
    }
    public class Agent{
        public string Agentname;
        public string city;
    }
}