
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
  func startAccelerometerUpdates(to queue: OperationQueue, withHandler handler: CMAccelerometerHandler)
  func stopAccelerometerUpdates()
  var gyroUpdateInterval: TimeInterval
  var isGyroAvailable: Bool { get }
  var isGyroActive: Bool { get }
  var gyroData: CMGyroData? { get }
  func startGyroUpdates()
  func startGyroUpdates(to queue: OperationQueue, withHandler handler: CMGyroHandler)
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
  func startMagnetometerUpdates(to queue: OperationQueue, withHandler handler: CMMagnetometerHandler)
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
  func startDeviceMotionUpdates(to queue: OperationQueue, withHandler handler: CMDeviceMotionHandler)
  @available(watchOS 2.0, *)
  func startDeviceMotionUpdates(using referenceFrame: CMAttitudeReferenceFrame)
  @available(watchOS 2.0, *)
  func startDeviceMotionUpdates(using referenceFrame: CMAttitudeReferenceFrame, to queue: OperationQueue, withHandler handler: CMDeviceMotionHandler)
  func stopDeviceMotionUpdates()
  @available(watchOS 2.0, *)
  var showsDeviceMovementDisplay: Bool
  init()
}
