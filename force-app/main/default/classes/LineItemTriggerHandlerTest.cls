@istest
private class LineItemTriggerHandlerTest {
	@istest
    private static void testInsertLineItem(){
        LineItem__c li = new LineItem__c(Description__c = 'Description test', Type__c = 'Small');
        Test.startTest();
        insert li;
        Test.stopTest();
        ProductLineItem__c pli = [SELECT id,Description__c,Type__c FROM ProductLineItem__c WHERE LineItem__c = :li.Id];
        System.assertEquals(pli.Description__c,li.Description__c,'Son iguales');
    }
}