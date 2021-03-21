public class EmailMessagesController {
    public String Body { get; set; }
    public String Subject { get; set; }
    list<string> email = new list<string>{'vinaykukati121@gmail.com'};
    public PageReference Send() {
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.setSubject(subject);
        message.setPlainTextBody(Body);
        message.setToAddresses(email);
         Messaging.sendEmail(new Messaging.SingleEmailMessage[] { message});   
      return null;
    }
}