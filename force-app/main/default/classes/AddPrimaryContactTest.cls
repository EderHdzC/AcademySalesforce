@isTest
public class AddPrimaryContactTest {
	@testSetup
    public static void setup(){
        List<Account> accounts = new List<Account>();
        Integer ca = 0;
        for (Integer x = 1; x <= 100; x++) {
            String billingState = Math.Mod(x, 2) == 0 ? 'NY' : 'CA';
            accounts.Add(new Account(Name = 'SomeAccountName-' + x, BillingState = billingState));
        }
        insert accounts;
    }
      static testmethod void testQueueable() {
          Contact contact = new Contact(LastName = 'TestName');
          AddPrimaryContact insertContact = new AddPrimaryContact(contact,'CA');

          Test.startTest();
          System.enqueueJob(insertContact);
          Test.stopTest();
      
         System.assertEquals(50, [SELECT count() FROM Contact WHERE AccountId IN (SELECT Id FROM Account WHERE BillingState =:'CA')]);          
      }
          
}