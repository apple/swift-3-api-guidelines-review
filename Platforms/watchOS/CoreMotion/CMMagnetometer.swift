
struct CMMagneticField {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
@available(watchOS 2.0, *)
class CMMagnetometerData : CMLogItem {
  var magneticField: CMMagneticField { get }
  init()
  init?(coder aDecoder: Coder)
}
