
struct CMRotationRate {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
@available(iOS 4.0, *)
class CMGyroData : CMLogItem {
  var rotationRate: CMRotationRate { get }
  init()
  init?(coder aDecoder: Coder)
}
