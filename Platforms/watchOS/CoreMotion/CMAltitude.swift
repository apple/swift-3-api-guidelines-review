
@available(watchOS 2.0, *)
class CMAltitudeData : CMLogItem {
  var relativeAltitude: Number { get }
  var pressure: Number { get }
  init()
  init?(coder aDecoder: Coder)
}
