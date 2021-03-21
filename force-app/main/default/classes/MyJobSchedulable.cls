global class MyJobSchedulable implements Schedulable {

  public static final String CRON_EXPR = '0 10 10 17 9 ?';

  global static String scheduleIt() {
    MyJobSchedulable job = new MyJobSchedulable();
    return System.schedule('Something Descriptive', CRON_EXPR, job);
  }
  
  global void execute(SchedulableContext sc) {

    AccountBatch b = new AccountBatch();
    Database.executeBatch(b);
  }
}