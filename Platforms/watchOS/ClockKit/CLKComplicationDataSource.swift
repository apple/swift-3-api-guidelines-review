
protocol CLKComplicationDataSource : NSObjectProtocol {
  func getSupportedTimeTravelDirectionsForComplication(complication: CLKComplication, withHandler handler: (CLKComplicationTimeTravelDirections) -> Void)
  optional func getTimelineStartDateForComplication(complication: CLKComplication, withHandler handler: (NSDate?) -> Void)
  optional func getTimelineEndDateForComplication(complication: CLKComplication, withHandler handler: (NSDate?) -> Void)
  optional func getPrivacyBehaviorForComplication(complication: CLKComplication, withHandler handler: (CLKComplicationPrivacyBehavior) -> Void)
  optional func getTimelineAnimationBehaviorForComplication(complication: CLKComplication, withHandler handler: (CLKComplicationTimelineAnimationBehavior) -> Void)
  func getCurrentTimelineEntryForComplication(complication: CLKComplication, withHandler handler: (CLKComplicationTimelineEntry?) -> Void)
  optional func getTimelineEntriesForComplication(complication: CLKComplication, beforeDate date: NSDate, limit: Int, withHandler handler: ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getTimelineEntriesForComplication(complication: CLKComplication, afterDate date: NSDate, limit: Int, withHandler handler: ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getNextRequestedUpdateDateWithHandler(handler: (NSDate?) -> Void)
  optional func requestedUpdateDidBegin()
  optional func requestedUpdateBudgetExhausted()
  func getPlaceholderTemplateForComplication(complication: CLKComplication, withHandler handler: (CLKComplicationTemplate?) -> Void)
}
