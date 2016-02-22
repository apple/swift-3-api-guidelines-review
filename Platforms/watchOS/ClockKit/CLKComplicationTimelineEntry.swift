
class CLKComplicationTimelineEntry : NSObject {
  convenience init(date: NSDate, complicationTemplate: CLKComplicationTemplate)
  convenience init(date: NSDate, complicationTemplate: CLKComplicationTemplate, timelineAnimationGroup: String?)
  var date: NSDate
  @NSCopying var complicationTemplate: CLKComplicationTemplate
  var timelineAnimationGroup: String?
  init()
}
