
class CLKComplication : Object, Copying {
  var family: CLKComplicationFamily { get }
  init()
  func copy(with zone: Zone = nil) -> AnyObject
}
