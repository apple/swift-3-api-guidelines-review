
protocol CLKComplicationDataSource : NSObjectProtocol {
  func getSupportedTimeTravelDirectionsForComplication(_ complication: CLKComplication, withHandler handler: (CLKComplicationTimeTravelDirections) -> Void)
  optional func getTimelineStartDateForComplication(_ complication: CLKComplication, withHandler handler: (NSDate?) -> Void)
  optional func getTimelineEndDateForComplication(_ complication: CLKComplication, withHandler handler: (NSDate?) -> Void)
  optional func getPrivacyBehaviorForComplication(_ complication: CLKComplication, withHandler handler: (CLKComplicationPrivacyBehavior) -> Void)
  optional func getTimelineAnimationBehaviorForComplication(_ complication: CLKComplication, withHandler handler: (CLKComplicationTimelineAnimationBehavior) -> Void)
  func getCurrentTimelineEntryForComplication(_ complication: CLKComplication, withHandler handler: (CLKComplicationTimelineEntry?) -> Void)
  optional func getTimelineEntriesForComplication(_ complication: CLKComplication, beforeDate date: NSDate, limit limit: Int, withHandler handler: ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getTimelineEntriesForComplication(_ complication: CLKComplication, afterDate date: NSDate, limit limit: Int, withHandler handler: ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getNextRequestedUpdateDateWithHandler(_ handler: (NSDate?) -> Void)
  optional func requestedUpdateDidBegin()
  optional func requestedUpdateBudgetExhausted()
  func getPlaceholderTemplateForComplication(_ complication: CLKComplication, withHandler handler: (CLKComplicationTemplate?) -> Void)
}
