
let CLKComplicationServerActiveComplicationsDidChangeNotification: String
class CLKComplicationServer : Object {
  class func sharedInstance() -> Self!
  var activeComplications: [CLKComplication]! { get }
  var earliestTimeTravelDate: Date! { get }
  var latestTimeTravelDate: Date! { get }
  func reloadTimeline(forComplication complication: CLKComplication!)
  func extendTimeline(forComplication complication: CLKComplication!)
  init()
}
