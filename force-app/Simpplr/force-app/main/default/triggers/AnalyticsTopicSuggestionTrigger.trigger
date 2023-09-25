trigger AnalyticsTopicSuggestionTrigger on Analytics_Topic_Suggestion__c (after insert, after update, after delete, after undelete) {
    try {
        ObjectHandler objHandler = new ObjectHandler();
        objHandler.triggerHandler('Analytics_Topic_Suggestion__c');
    } catch (Exception e) {
        // Ignore exceptions
        System.debug(LoggingLevel.INFO, 'Error occured => ' + e.getMessage()); // NOPMD - suppressed codacy error
    }
}