
class CLKComplication : Object, Copying {
  var family: CLKComplicationFamily { get }
  init()
  func copy(withZone zone: Zone = nil) -> AnyObject
}
