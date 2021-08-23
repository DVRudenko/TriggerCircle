trigger TestTrigger on Account ( before insert, before update, before delete,
after insert, after update, after delete ) {

    AccountTriggerHandler handler = new AccountTriggerHandler();

    if ( Trigger.isAfter && Trigger.isUpdate ) {
        handler.handleAfterUpdate(Trigger.new);
    }
}