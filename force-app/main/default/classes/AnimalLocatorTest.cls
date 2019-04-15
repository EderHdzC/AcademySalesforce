@isTest
public class AnimalLocatorTest {
	@isTest static  void testGetCallout() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        // Call method to test
        String result = AnimalLocator.getAnimalNameById(0);
        // Verify mock response is not null
        System.assertNotEquals('',result,
            'The callout returned a null response.');
	}
}