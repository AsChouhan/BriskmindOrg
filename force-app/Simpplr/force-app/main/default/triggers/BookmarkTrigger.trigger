trigger BookmarkTrigger on Bookmark__c (after insert, after update, after delete, after undelete) {
    try {
        ObjectHandler objHandler = new ObjectHandler();
        objHandler.triggerHandler('Bookmark__c');
    } catch (Exception e) {
        // Ignore exceptions
        System.debug(LoggingLevel.INFO, 'Error occured => ' + e.getMessage()); // NOPMD - suppressed codacy error
    }
}