
protocol CLKComplicationDataSource : ObjectProtocol {
  func getSupportedTimeTravelDirections(forComplication complication: CLKComplication, withHandler handler: (CLKComplicationTimeTravelDirections) -> Void)
  optional func getTimelineStartDate(forComplication complication: CLKComplication, withHandler handler: (Date?) -> Void)
  optional func getTimelineEndDate(forComplication complication: CLKComplication, withHandler handler: (Date?) -> Void)
  optional func getPrivacyBehavior(forComplication complication: CLKComplication, withHandler handler: (CLKComplicationPrivacyBehavior) -> Void)
  optional func getTimelineAnimationBehavior(forComplication complication: CLKComplication, withHandler handler: (CLKComplicationTimelineAnimationBehavior) -> Void)
  func getCurrentTimelineEntry(forComplication complication: CLKComplication, withHandler handler: (CLKComplicationTimelineEntry?) -> Void)
  optional func getTimelineEntries(forComplication complication: CLKComplication, before date: Date, limit: Int, withHandler handler: ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getTimelineEntries(forComplication complication: CLKComplication, after date: Date, limit: Int, withHandler handler: ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getNextRequestedUpdateDate(withHandler handler: (Date?) -> Void)
  optional func requestedUpdateDidBegin()
  optional func requestedUpdateBudgetExhausted()
  func getPlaceholderTemplate(forComplication complication: CLKComplication, withHandler handler: (CLKComplicationTemplate?) -> Void)
}
