
protocol CLKComplicationDataSource : ObjectProtocol {
  func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: (CLKComplicationTimeTravelDirections) -> Void)
  optional func getTimelineStartDate(for complication: CLKComplication, withHandler handler: (Date?) -> Void)
  optional func getTimelineEndDate(for complication: CLKComplication, withHandler handler: (Date?) -> Void)
  optional func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: (CLKComplicationPrivacyBehavior) -> Void)
  optional func getTimelineAnimationBehavior(for complication: CLKComplication, withHandler handler: (CLKComplicationTimelineAnimationBehavior) -> Void)
  func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: (CLKComplicationTimelineEntry?) -> Void)
  optional func getTimelineEntries(for complication: CLKComplication, before date: Date, limit: Int, withHandler handler: ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getNextRequestedUpdateDate(handler handler: (Date?) -> Void)
  optional func requestedUpdateDidBegin()
  optional func requestedUpdateBudgetExhausted()
  func getPlaceholderTemplate(for complication: CLKComplication, withHandler handler: (CLKComplicationTemplate?) -> Void)
}
