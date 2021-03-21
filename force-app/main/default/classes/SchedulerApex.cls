global class SchedulerApex implements Schedulable {

 global void execute(SchedulableContext ctx) {
 //BatchContactUpdate bCon = new BatchContactUpdate();
 //Batch size is 200, records will be split into batches 
 //Database.ExecuteBatch(bCon,200);
 AccountBatchclass obj = new AccountBatchclass();
     database.executeBatch(obj);
 } 
}