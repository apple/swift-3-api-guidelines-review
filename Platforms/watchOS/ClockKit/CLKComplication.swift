
class CLKComplication : Object, Copying {
  var family: CLKComplicationFamily { get }
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
}
