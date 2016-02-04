
class CLKComplication : Object, Copying {
  var family: CLKComplicationFamily { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
