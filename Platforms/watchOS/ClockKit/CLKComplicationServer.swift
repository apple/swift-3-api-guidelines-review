
let CLKComplicationServerActiveComplicationsDidChangeNotification: String
class CLKComplicationServer : Object {
  class func sharedInstance() -> Self!
  var activeComplications: [CLKComplication]! { get }
  var earliestTimeTravelDate: Date! { get }
  var latestTimeTravelDate: Date! { get }
  func reloadTimelineFor(complication: CLKComplication!)
  func extendTimelineFor(complication: CLKComplication!)
  init()
}
