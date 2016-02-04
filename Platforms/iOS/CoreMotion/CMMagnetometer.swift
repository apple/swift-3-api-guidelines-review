
struct CMMagneticField {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
@available(iOS 5.0, *)
class CMMagnetometerData : CMLogItem {
  var magneticField: CMMagneticField { get }
  init()
  init?(coder aDecoder: Coder)
}
