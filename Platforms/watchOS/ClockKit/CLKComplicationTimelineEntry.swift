
class CLKComplicationTimelineEntry : Object {
  convenience init(date: Date, complicationTemplate: CLKComplicationTemplate)
  convenience init(date: Date, complicationTemplate: CLKComplicationTemplate, timelineAnimationGroup: String?)
  var date: Date
  @NSCopying var complicationTemplate: CLKComplicationTemplate
  var timelineAnimationGroup: String?
  init()
}
