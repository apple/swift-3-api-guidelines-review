
typealias CMAccelerometerHandler = (CMAccelerometerData?, Error?) -> Void
typealias CMGyroHandler = (CMGyroData?, Error?) -> Void
typealias CMDeviceMotionHandler = (CMDeviceMotion?, Error?) -> Void
@available(iOS 5.0, *)
typealias CMMagnetometerHandler = (CMMagnetometerData?, Error?) -> Void
@available(iOS 4.0, *)
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
  @available(iOS 5.0, *)
  var magnetometerUpdateInterval: TimeInterval
  @available(iOS 5.0, *)
  var isMagnetometerAvailable: Bool { get }
  @available(iOS 5.0, *)
  var isMagnetometerActive: Bool { get }
  @available(iOS 5.0, *)
  var magnetometerData: CMMagnetometerData? { get }
  @available(iOS 5.0, *)
  func startMagnetometerUpdates()
  @available(iOS 5.0, *)
  func startMagnetometerUpdatesTo(queue: OperationQueue, withHandler handler: CMMagnetometerHandler)
  @available(iOS 5.0, *)
  func stopMagnetometerUpdates()
  var deviceMotionUpdateInterval: TimeInterval
  @available(iOS 5.0, *)
  class func availableAttitudeReferenceFrames() -> CMAttitudeReferenceFrame
  @available(iOS 5.0, *)
  var attitudeReferenceFrame: CMAttitudeReferenceFrame { get }
  var isDeviceMotionAvailable: Bool { get }
  var isDeviceMotionActive: Bool { get }
  var deviceMotion: CMDeviceMotion? { get }
  func startDeviceMotionUpdates()
  func startDeviceMotionUpdatesTo(queue: OperationQueue, withHandler handler: CMDeviceMotionHandler)
  @available(iOS 5.0, *)
  func startDeviceMotionUpdates(usingReferenceFrame referenceFrame: CMAttitudeReferenceFrame)
  @available(iOS 5.0, *)
  func startDeviceMotionUpdates(usingReferenceFrame referenceFrame: CMAttitudeReferenceFrame, to queue: OperationQueue, withHandler handler: CMDeviceMotionHandler)
  func stopDeviceMotionUpdates()
  @available(iOS 5.0, *)
  var showsDeviceMovementDisplay: Bool
  init()
}
