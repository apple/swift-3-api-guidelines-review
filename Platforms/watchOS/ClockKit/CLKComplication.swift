
class CLKComplication : Object, Copying {
  var family: CLKComplicationFamily { get }
  init()
  func copy(zone: Zone = nil) -> AnyObject
}
