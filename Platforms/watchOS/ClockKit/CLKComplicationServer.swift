
let CLKComplicationServerActiveComplicationsDidChangeNotification: String
class CLKComplicationServer : Object {
  class func sharedInstance() -> Self!
  var activeComplications: [CLKComplication]! { get }
  var earliestTimeTravelDate: Date! { get }
  var latestTimeTravelDate: Date! { get }
  func reloadTimeline(for complication: CLKComplication!)
  func extendTimeline(for complication: CLKComplication!)
  init()
}
