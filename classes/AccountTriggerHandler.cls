public with sharing class AccountTriggerHandler {

    public void handleAfterUpdate ( List<Account> newList) {

        if(AccountTriggerCircle.isFirstTime){
            AccountTriggerCircle.isFirstTime = false;
            for(Account acc : newList) {
                acc.Description = 'New description';
            }
            update newList;
        }

    }
}
