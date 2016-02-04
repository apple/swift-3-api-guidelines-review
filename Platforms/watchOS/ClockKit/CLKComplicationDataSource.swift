
protocol CLKComplicationDataSource : ObjectProtocol {
  func getSupportedTimeTravelDirectionsFor(complication: CLKComplication, withHandler handler: (CLKComplicationTimeTravelDirections) -> Void)
  optional func getTimelineStartDateFor(complication: CLKComplication, withHandler handler: (Date?) -> Void)
  optional func getTimelineEndDateFor(complication: CLKComplication, withHandler handler: (Date?) -> Void)
  optional func getPrivacyBehaviorFor(complication: CLKComplication, withHandler handler: (CLKComplicationPrivacyBehavior) -> Void)
  optional func getTimelineAnimationBehaviorFor(complication: CLKComplication, withHandler handler: (CLKComplicationTimelineAnimationBehavior) -> Void)
  func getCurrentTimelineEntryFor(complication: CLKComplication, withHandler handler: (CLKComplicationTimelineEntry?) -> Void)
  optional func getTimelineEntriesFor(complication: CLKComplication, before date: Date, limit: Int, withHandler handler: ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getTimelineEntriesFor(complication: CLKComplication, after date: Date, limit: Int, withHandler handler: ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getNextRequestedUpdateDateWithHandler(handler: (Date?) -> Void)
  optional func requestedUpdateDidBegin()
  optional func requestedUpdateBudgetExhausted()
  func getPlaceholderTemplateFor(complication: CLKComplication, withHandler handler: (CLKComplicationTemplate?) -> Void)
}
