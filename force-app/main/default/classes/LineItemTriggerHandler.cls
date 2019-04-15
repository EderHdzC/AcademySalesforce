public class LineItemTriggerHandler {

    public static void insertProductLineItem (List<LineItem__c> items){
        ProductLineItem__c pli = new ProductLineItem__c();
        for(LineItem__c li: items){
 			pli.Description__c = li.Description__C;
            pli.Type__c = li.Type__c;
            pli.LineItem__c = li.Id;
        }
        try {
        	insert pli;    
        }
        catch(Exception ex){
            System.debug(ex);
        }
        
    }
}