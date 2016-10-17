@isTest

public class ExpenceTest {
 public testMethod static void myTest(){
      
        Expence__c expence = new Expence__c();
        expence.Amount__c=1000;
        expence.Event__c='party';
        insert expence;
        Member__c member = new Member__c();
        member.First_Name__c='abc';
        member.Last_Name__c='xyz';
        member.Email_Id__c='abc@abc.com';
        insert member;
        ExpenceMember__c expmem = new ExpenceMember__c();
        expmem.Member__c=member.Id;
        expmem.Expence__c=expence.Id;
        expmem.ContribAmount__c=100;
        insert expmem;
        ExpenceEXT expExt = new ExpenceEXT(new ApexPages.StandardController(expence));
        expExt.getExpMembers();
        //Expense__c expense1 = new Expense__c();
        //expense1 
        //List<ExpenseMember__c> ge1 = new List<ExpenseMember__c>();
        //ge1.add(expense);
        //System.assertEquals(ge1,ge);
}
}