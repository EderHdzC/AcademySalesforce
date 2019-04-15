@isTest
public class DailyLeadProcessorTest {

    public static String CRON_EXP = '0 0 0 15 3 ? 2022';
    static testmethod void testSheduledJob(){
        
        List<Lead> leads = new List<Lead>();
        for(Integer i=0;i<200;i++){
            leads.add(new Lead(LastName = 'Lead '+i,
                               Company = 'Company '+i, Status = 'Open - Not Contacted', LeadSource = ''));
        }
        insert leads;
        
        Test.startTest();
        String jobId = System.schedule('ScheduledApexTest',
            CRON_EXP, 
            new DailyLeadProcessor());
        Test.stopTest();
        
    }
}