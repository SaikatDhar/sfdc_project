public with sharing class ExpenceEXT {
    public Expence__c expObj{get;set;}
    public list<ExpenceMember__c> el{get;set;}
    public ExpenceEXT(ApexPages.StandardController controller) {
        expObj = (Expence__c)controller.getRecord();
        el = new list<ExpenceMember__c>();        
    }
    
    public void getExpMembers(){
    el = [Select Id,Name, Member__r.First_Name__c,Member__r.Last_Name__c,ContribAmount__c,Expence__r.TotalContributedAmount__c from ExpenceMember__c where Expence__c =: expObj.Id];
    }
}