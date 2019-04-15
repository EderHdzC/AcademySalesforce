@isTest
private class TestVerifyDate { 
    @isTest static void checkDates(){
   		Date checkDate = VerifyDate.CheckDates(Date.newInstance(1993, 08, 18),Date.newInstance(2019, 03, 26));
        System.assertEquals(Date.newInstance(1993, 08, 31),checkDate);
    }
    @isTest static void dateWithin30Days(){
        Date checkDate = VerifyDate.CheckDates(Date.newInstance(1993, 08, 18),Date.newInstance(1993, 08, 25));
        System.assertEquals(Date.newInstance(1993, 08, 25),checkDate);
    }
    

}