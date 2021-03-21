Public class JSON2APEX{
    public string id;
    public string name;
    public string website;
    public integer fan_count;
    //public string posts;
    
    public class paging{
        public cursors cursors;
        public string next;
    }
    
    public class posts{
        public list<Data> data;
        public paging paging; 
    }
    public class cursors{
        public string before;
        public string after;
    }
    public class Data{
        public string created_time;
        public string message;
        public string id;
        public string story;
    }
    
    public static JSON2APEX parsing(String json){
        return(JSON2APEX)System.JSON.deserialize(json,JSON2APEX.class);
    }
}