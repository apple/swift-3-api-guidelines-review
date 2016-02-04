
struct CMMagneticFieldCalibrationAccuracy : RawRepresentable, Equatable {
  init(_ rawValue: Int32)
  init(rawValue: Int32)
  var rawValue: Int32
}
var CMMagneticFieldCalibrationAccuracyUncalibrated: CMMagneticFieldCalibrationAccuracy { get }
var CMMagneticFieldCalibrationAccuracyLow: CMMagneticFieldCalibrationAccuracy { get }
var CMMagneticFieldCalibrationAccuracyMedium: CMMagneticFieldCalibrationAccuracy { get }
var CMMagneticFieldCalibrationAccuracyHigh: CMMagneticFieldCalibrationAccuracy { get }
struct CMCalibratedMagneticField {
  var field: CMMagneticField
  var accuracy: CMMagneticFieldCalibrationAccuracy
  init()
  init(field: CMMagneticField, accuracy: CMMagneticFieldCalibrationAccuracy)
}
@available(iOS 4.0, *)
class CMDeviceMotion : CMLogItem {
  var attitude: CMAttitude { get }
  var rotationRate: CMRotationRate { get }
  var gravity: CMAcceleration { get }
  var userAcceleration: CMAcceleration { get }
  @available(iOS 5.0, *)
  var magneticField: CMCalibratedMagneticField { get }
  init()
  init?(coder aDecoder: Coder)
}
