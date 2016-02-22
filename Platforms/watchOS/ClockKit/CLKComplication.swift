
class CLKComplication : NSObject, NSCopying {
  var family: CLKComplicationFamily { get }
  init()
  func copy(with zone: NSZone = nil) -> AnyObject
}
