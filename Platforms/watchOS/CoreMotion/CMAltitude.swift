
@available(watchOS 2.0, *)
class CMAltitudeData : CMLogItem {
  var relativeAltitude: NSNumber { get }
  var pressure: NSNumber { get }
  init()
  init?(coder aDecoder: NSCoder)
}
