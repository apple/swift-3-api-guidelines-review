
struct CMAcceleration {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
@available(watchOS 2.0, *)
class CMAccelerometerData : CMLogItem {
  var acceleration: CMAcceleration { get }
  init()
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
typealias CMAltitudeHandler = (CMAltitudeData?, Error?) -> Void
@available(watchOS 2.0, *)
class CMAltimeter : Object {
  class func isRelativeAltitudeAvailable() -> Bool
  func startRelativeAltitudeUpdatesTo(queue: OperationQueue, withHandler handler: CMAltitudeHandler)
  func stopRelativeAltitudeUpdates()
  init()
}
@available(watchOS 2.0, *)
class CMAltitudeData : CMLogItem {
  var relativeAltitude: Number { get }
  var pressure: Number { get }
  init()
  init?(coder aDecoder: Coder)
}
struct CMRotationMatrix {
  var m11: Double
  var m12: Double
  var m13: Double
  var m21: Double
  var m22: Double
  var m23: Double
  var m31: Double
  var m32: Double
  var m33: Double
  init()
  init(m11: Double, m12: Double, m13: Double, m21: Double, m22: Double, m23: Double, m31: Double, m32: Double, m33: Double)
}
struct CMQuaternion {
  var x: Double
  var y: Double
  var z: Double
  var w: Double
  init()
  init(x: Double, y: Double, z: Double, w: Double)
}
struct CMAttitudeReferenceFrame : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var XArbitraryZVertical: CMAttitudeReferenceFrame { get }
  static var XArbitraryCorrectedZVertical: CMAttitudeReferenceFrame { get }
  static var XMagneticNorthZVertical: CMAttitudeReferenceFrame { get }
  static var XTrueNorthZVertical: CMAttitudeReferenceFrame { get }
}
@available(watchOS 2.0, *)
class CMAttitude : Object, Copying, SecureCoding {
  var roll: Double { get }
  var pitch: Double { get }
  var yaw: Double { get }
  var rotationMatrix: CMRotationMatrix { get }
  var quaternion: CMQuaternion { get }
  func multiplyByInverseOf(attitude: CMAttitude)
  init()
  @available(watchOS 2.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
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
@available(watchOS 2.0, *)
class CMDeviceMotion : CMLogItem {
  var attitude: CMAttitude { get }
  var rotationRate: CMRotationRate { get }
  var gravity: CMAcceleration { get }
  var userAcceleration: CMAcceleration { get }
  @available(watchOS 2.0, *)
  var magneticField: CMCalibratedMagneticField { get }
  init()
  init?(coder aDecoder: Coder)
}
struct CMError : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var CMErrorNULL: CMError { get }
var CMErrorDeviceRequiresMovement: CMError { get }
var CMErrorTrueNorthNotAvailable: CMError { get }
var CMErrorUnknown: CMError { get }
var CMErrorMotionActivityNotAvailable: CMError { get }
var CMErrorMotionActivityNotAuthorized: CMError { get }
var CMErrorMotionActivityNotEntitled: CMError { get }
var CMErrorInvalidParameter: CMError { get }
var CMErrorInvalidAction: CMError { get }
var CMErrorNotAvailable: CMError { get }
var CMErrorNotEntitled: CMError { get }
var CMErrorNotAuthorized: CMError { get }
@available(watchOS 2.0, *)
let CMErrorDomain: String
struct CMRotationRate {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
@available(watchOS 2.0, *)
class CMGyroData : CMLogItem {
  var rotationRate: CMRotationRate { get }
  init()
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
class CMLogItem : Object, SecureCoding, Copying {
  var timestamp: TimeInterval { get }
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
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
enum CMMotionActivityConfidence : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}
@available(watchOS 2.0, *)
class CMMotionActivity : CMLogItem {
  var confidence: CMMotionActivityConfidence { get }
  var startDate: Date { get }
  var unknown: Bool { get }
  var stationary: Bool { get }
  var walking: Bool { get }
  var running: Bool { get }
  var automotive: Bool { get }
  @available(watchOS 2.0, *)
  var cycling: Bool { get }
  init()
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
typealias CMMotionActivityHandler = (CMMotionActivity?) -> Void
@available(watchOS 2.0, *)
typealias CMMotionActivityQueryHandler = ([CMMotionActivity]?, Error?) -> Void
@available(watchOS 2.0, *)
class CMMotionActivityManager : Object {
  class func isActivityAvailable() -> Bool
  func queryActivityStartingFrom(start: Date, to end: Date, to queue: OperationQueue, withHandler handler: CMMotionActivityQueryHandler)
  func startActivityUpdatesTo(queue: OperationQueue, withHandler handler: CMMotionActivityHandler)
  func stopActivityUpdates()
  init()
}
typealias CMAccelerometerHandler = (CMAccelerometerData?, Error?) -> Void
typealias CMGyroHandler = (CMGyroData?, Error?) -> Void
typealias CMDeviceMotionHandler = (CMDeviceMotion?, Error?) -> Void
@available(watchOS 2.0, *)
typealias CMMagnetometerHandler = (CMMagnetometerData?, Error?) -> Void
@available(watchOS 2.0, *)
class CMMotionManager : Object {
  var accelerometerUpdateInterval: TimeInterval
  var isAccelerometerAvailable: Bool { get }
  var isAccelerometerActive: Bool { get }
  var accelerometerData: CMAccelerometerData? { get }
  func startAccelerometerUpdates()
  func startAccelerometerUpdatesTo(queue: OperationQueue, withHandler handler: CMAccelerometerHandler)
  func stopAccelerometerUpdates()
  var gyroUpdateInterval: TimeInterval
  var isGyroAvailable: Bool { get }
  var isGyroActive: Bool { get }
  var gyroData: CMGyroData? { get }
  func startGyroUpdates()
  func startGyroUpdatesTo(queue: OperationQueue, withHandler handler: CMGyroHandler)
  func stopGyroUpdates()
  @available(watchOS 2.0, *)
  var magnetometerUpdateInterval: TimeInterval
  @available(watchOS 2.0, *)
  var isMagnetometerAvailable: Bool { get }
  @available(watchOS 2.0, *)
  var isMagnetometerActive: Bool { get }
  @available(watchOS 2.0, *)
  var magnetometerData: CMMagnetometerData? { get }
  @available(watchOS 2.0, *)
  func startMagnetometerUpdates()
  @available(watchOS 2.0, *)
  func startMagnetometerUpdatesTo(queue: OperationQueue, withHandler handler: CMMagnetometerHandler)
  @available(watchOS 2.0, *)
  func stopMagnetometerUpdates()
  var deviceMotionUpdateInterval: TimeInterval
  @available(watchOS 2.0, *)
  class func availableAttitudeReferenceFrames() -> CMAttitudeReferenceFrame
  @available(watchOS 2.0, *)
  var attitudeReferenceFrame: CMAttitudeReferenceFrame { get }
  var isDeviceMotionAvailable: Bool { get }
  var isDeviceMotionActive: Bool { get }
  var deviceMotion: CMDeviceMotion? { get }
  func startDeviceMotionUpdates()
  func startDeviceMotionUpdatesTo(queue: OperationQueue, withHandler handler: CMDeviceMotionHandler)
  @available(watchOS 2.0, *)
  func startDeviceMotionUpdatesUsing(referenceFrame: CMAttitudeReferenceFrame)
  @available(watchOS 2.0, *)
  func startDeviceMotionUpdatesUsing(referenceFrame: CMAttitudeReferenceFrame, to queue: OperationQueue, withHandler handler: CMDeviceMotionHandler)
  func stopDeviceMotionUpdates()
  @available(watchOS 2.0, *)
  var showsDeviceMovementDisplay: Bool
  init()
}
@available(watchOS 2.0, *)
class CMPedometerData : Object, SecureCoding, Copying {
  var startDate: Date { get }
  var endDate: Date { get }
  var numberOfSteps: Number { get }
  var distance: Number? { get }
  var floorsAscended: Number? { get }
  var floorsDescended: Number? { get }
  @available(watchOS 2.0, *)
  var currentPace: Number? { get }
  @available(watchOS 2.0, *)
  var currentCadence: Number? { get }
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
typealias CMPedometerHandler = (CMPedometerData?, Error?) -> Void
@available(watchOS 2.0, *)
class CMPedometer : Object {
  class func isStepCountingAvailable() -> Bool
  class func isDistanceAvailable() -> Bool
  class func isFloorCountingAvailable() -> Bool
  @available(watchOS 2.0, *)
  class func isPaceAvailable() -> Bool
  @available(watchOS 2.0, *)
  class func isCadenceAvailable() -> Bool
  func queryPedometerDataFrom(start: Date, to end: Date, withHandler handler: CMPedometerHandler)
  func startUpdatesFrom(start: Date, withHandler handler: CMPedometerHandler)
  func stopUpdates()
  init()
}
@available(watchOS 2.0, *)
class CMRecordedAccelerometerData : CMAccelerometerData {
  var identifier: UInt64 { get }
  var startDate: Date { get }
  init()
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
class CMSensorDataList : Object, FastEnumeration {
  init()
  @available(watchOS 2.0, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(watchOS 2.0, *)
class CMSensorRecorder : Object {
  class func isAccelerometerRecordingAvailable() -> Bool
  class func isAuthorizedForRecording() -> Bool
  func accelerometerDataFrom(fromDate: Date, to toDate: Date) -> CMSensorDataList?
  func recordAccelerometerForDuration(duration: TimeInterval)
  init()
}
