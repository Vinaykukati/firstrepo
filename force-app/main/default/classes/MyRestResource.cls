@RestResource(urlMapping='/TargetRecruit/vinay/*')
global with sharing class MyRestResource {
    @HttpGet
    global static String getRecord() {
        // Add your code
        JSONGenerator gen = JSON.createGenerator(true);
        
       /* gen.writeStartObject();
        gen.writeStringField('name', 'John');
        gen.writeNumberField('age', 30);
        gen.writeStringField('car', 'null');
        gen.writeEndObject();
		
        //PART 1 ARRAY Format [ "Ford", "BMW", "Fiat" ]
        //gen.writeStartObject();
        gen.writeStartArray();
        gen.writeString('Ford');
        gen.writeString('BMW');
        gen.writeString('Fiat');
        gen.writeEndArray();
        //gen.writeEndObject();
        */
        /*JASON in OBJECT
         ===================
        {
        "name":"John",
        "age":30,
        "cars":[ "Ford", "BMW", "Fiat" ]
        }

        gen.writeStartObject();
        gen.writeStringField('name', 'John');
        gen.writeNumberField('age', 30);
        gen.writeFieldName('Cars');
        gen.writeStartArray();
        gen.writeString('Ford');
        gen.writeString('BMW');
        gen.writeString('Fiat');
        gen.writeEndArray();
        gen.writeEndObject();
   		
		Object in Array
============================
        gen.writeStartArray();
        gen.writeStartObject();
        gen.writeStringField('name', 'RAM');
        gen.writeStringField('Email', 'vinay@gmail.com');
        gen.writeEndObject();
        gen.writeStartObject();
        gen.writeStringField('Name', 'Bob');
        gen.writeStringField('Email', 'v21inay@gmail.com');
        gen.writeEndObject();
        gen.writeEndArray();

		{  
     "firstName": "Sonoo",   
     "lastName": "Jaiswal",   
     "age": 27,  
     "address" : {  
         "streetAddress": "Plot-6, Mohan Nagar",  
         "city": "Ghaziabad",  
         "state": "UP",  
         "postalCode": "201007"  
     }  
 }  String in another String
==============================
      
		gen.writeStartObject();
        gen.writeStringField('firstName', 'Sonoo');
        gen.writeStringField('lastName', 'Jaiswal');
        gen.writeNumberField('Age', 25);
        gen.writeFieldName('Address');
        gen.writeStartObject();
        gen.writeStringField('streetAddress', 'Plot-6, Mohan Nagar');
        gen.writeStringField('city', 'Ghaziabad');
        gen.writeStringField('State', 'UP');
        gen.writeNumberField('postalCode', 201007);
        gen.writeEndObject();
        gen.writeBooleanField('Male', True);
        gen.writeNumberField('Time with Sec', 12.35);
        gen.writeEndObject();
		
		JSON Array of Objects
		=======================
        {"employees":[    
        {"name":"Ram", "email":"ram@gmail.com", "age":23},    
        {"name":"Shyam", "email":"shyam23@gmail.com", "age":28},  
        {"name":"John", "email":"john@gmail.com", "age":33},    
        {"name":"Bob", "email":"bob32@gmail.com", "age":41}   
        ]}  
         */
        gen.writeStartObject();
        gen.writeFieldName('Employees');
        gen.writeStartArray();
        gen.writeStartObject();
        gen.writeStringField('name', 'Ram');
        gen.writeStringField('Email', 'ram@gmail.com');
        gen.writeNumberField('Age', 23);
        gen.writeEndObject();
        gen.writeStartObject();
        gen.writeStringField('name', 'Manoj');
        gen.writeStringField('Email', 'manoj@gmail.com');
        gen.writeNumberField('Age', 26);
        gen.writeEndObject();
        gen.writeEndArray();
        gen.writeEndObject();
        return gen.getAsString();
        //{ "name":"John", "age":30, "car":null }
        
        
        // Create a list of integers to write to the JSON string.
        //List<integer> intlist = new List<integer>();
        //intlist.add(1);
        //intlist.add(2);
        //intlist.add(3);
        
        // Create an object to write to the JSON string.
        //A x = new A('X');
        
        // Write data to the JSON string.
        /*gen.writeStartObject();
        gen.writeNumberField('abc', 1.21);
        gen.writeStringField('def', 'xyz');
        gen.writeFieldName('ghi');
        gen.writeStartObject();
        
        gen.writeObjectField('aaa', intlist);
        
        gen.writeEndObject();
        
        gen.writeFieldName('Object A');
        
        //gen.writeObject(x);
        
        gen.writeEndObject();
        
        // Get the JSON string.
        */
        //String pretty = gen.getAsString();

       
        //return gen.getAsString();
    }
}