
class CLKComplication : NSObject, NSCopying {
  var family: CLKComplicationFamily { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
