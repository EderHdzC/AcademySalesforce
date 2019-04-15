trigger LineItemTrigger on LineItem__c (after update, after insert) {
    if (Trigger.isAfter && Trigger.isInsert){
        LineItemTriggerHandler.insertProductLineItem(Trigger.new);
    }
}