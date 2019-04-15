@isTest
public class ParkLocatorTest {
	
    testMethod static void testCallout(){
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String country = 'Germany';
        String [] result = ParkLocator.country(country);
        // Verify that a fake result is returned
        System.assertEquals(new List<String> {'Germany','India','Japan','United States'}, result);
    }
}