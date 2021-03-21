trigger FieldEncrypt1 on Account (before update) {
  if(Trigger.isinsert && Trigger.isupdate){
   fieldencrypt.method1(Trigger.new);
   
   fieldencrypt.fieldtype(Trigger.new);
  }
}