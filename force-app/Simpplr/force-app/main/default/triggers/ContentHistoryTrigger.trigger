trigger ContentHistoryTrigger on Content_History__c (after insert, after update, after delete, after undelete) {
    try {
        ObjectHandler objHandler = new ObjectHandler();
        objHandler.triggerHandler('Content_History__c');
    } catch (Exception e) {
        // Ignore exceptions
        System.debug(LoggingLevel.INFO, 'Error occured => ' + e.getMessage()); // NOPMD - suppressed codacy error
    }
}