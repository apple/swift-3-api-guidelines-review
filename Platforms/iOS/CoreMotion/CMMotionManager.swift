
typealias CMAccelerometerHandler = (CMAccelerometerData?, NSError?) -> Void
typealias CMGyroHandler = (CMGyroData?, NSError?) -> Void
typealias CMDeviceMotionHandler = (CMDeviceMotion?, NSError?) -> Void
@available(iOS 5.0, *)
typealias CMMagnetometerHandler = (CMMagnetometerData?, NSError?) -> Void
@available(iOS 4.0, *)
class CMMotionManager : NSObject {
  var accelerometerUpdateInterval: NSTimeInterval
  var accelerometerAvailable: Bool { get }
  var accelerometerActive: Bool { get }
  var accelerometerData: CMAccelerometerData? { get }
  func startAccelerometerUpdates()
  func startAccelerometerUpdatesToQueue(queue: NSOperationQueue, withHandler handler: CMAccelerometerHandler)
  func stopAccelerometerUpdates()
  var gyroUpdateInterval: NSTimeInterval
  var gyroAvailable: Bool { get }
  var gyroActive: Bool { get }
  var gyroData: CMGyroData? { get }
  func startGyroUpdates()
  func startGyroUpdatesToQueue(queue: NSOperationQueue, withHandler handler: CMGyroHandler)
  func stopGyroUpdates()
  @available(iOS 5.0, *)
  var magnetometerUpdateInterval: NSTimeInterval
  @available(iOS 5.0, *)
  var magnetometerAvailable: Bool { get }
  @available(iOS 5.0, *)
  var magnetometerActive: Bool { get }
  @available(iOS 5.0, *)
  var magnetometerData: CMMagnetometerData? { get }
  @available(iOS 5.0, *)
  func startMagnetometerUpdates()
  @available(iOS 5.0, *)
  func startMagnetometerUpdatesToQueue(queue: NSOperationQueue, withHandler handler: CMMagnetometerHandler)
  @available(iOS 5.0, *)
  func stopMagnetometerUpdates()
  var deviceMotionUpdateInterval: NSTimeInterval
  @available(iOS 5.0, *)
  class func availableAttitudeReferenceFrames() -> CMAttitudeReferenceFrame
  @available(iOS 5.0, *)
  var attitudeReferenceFrame: CMAttitudeReferenceFrame { get }
  var deviceMotionAvailable: Bool { get }
  var deviceMotionActive: Bool { get }
  var deviceMotion: CMDeviceMotion? { get }
  func startDeviceMotionUpdates()
  func startDeviceMotionUpdatesToQueue(queue: NSOperationQueue, withHandler handler: CMDeviceMotionHandler)
  @available(iOS 5.0, *)
  func startDeviceMotionUpdatesUsingReferenceFrame(referenceFrame: CMAttitudeReferenceFrame)
  @available(iOS 5.0, *)
  func startDeviceMotionUpdatesUsingReferenceFrame(referenceFrame: CMAttitudeReferenceFrame, toQueue queue: NSOperationQueue, withHandler handler: CMDeviceMotionHandler)
  func stopDeviceMotionUpdates()
  @available(iOS 5.0, *)
  var showsDeviceMovementDisplay: Bool
  init()
}
