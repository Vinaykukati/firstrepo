public class Rectangle{
    	public decimal length=5;
    	public decimal breadth=10;
    	public decimal area;
    	public decimal perimeter;
    public Rectangle(){
     
        
       
        if(length<=10){
    		area=length*breadth;
        }
        else{
            perimeter=2*(length+breadth);
        }
        system.debug('area is'+area);
    }
}