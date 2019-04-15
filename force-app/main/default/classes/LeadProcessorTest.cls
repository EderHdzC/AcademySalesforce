@isTest
public class LeadProcessorTest {
    
    @TestSetup
    static void setup(){
        List<Lead> lead = new List<Lead>();
        for(Integer i=0;i<200;i++){
            lead.add(new Lead(LastName = 'Lead '+i, Company = 'Company '+i, Status = 'Open - Not Contacted', LeadSource = 'Dreamforce'));
        }
        insert lead;
    }
    
    static testmethod void test(){
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();
        System.assertEquals(200, [SELECT count() FROM Lead WHERE LeadSource='Dreamforce']);
    }

}