
typealias CMAccelerometerHandler = (CMAccelerometerData?, NSError?) -> Void
typealias CMGyroHandler = (CMGyroData?, NSError?) -> Void
typealias CMDeviceMotionHandler = (CMDeviceMotion?, NSError?) -> Void
@available(watchOS 2.0, *)
typealias CMMagnetometerHandler = (CMMagnetometerData?, NSError?) -> Void
@available(watchOS 2.0, *)
class CMMotionManager : NSObject {
  var accelerometerUpdateInterval: NSTimeInterval
  var accelerometerAvailable: Bool { get }
  var accelerometerActive: Bool { get }
  var accelerometerData: CMAccelerometerData? { get }
  func startAccelerometerUpdates()
  func startAccelerometerUpdatesToQueue(_ queue: NSOperationQueue, withHandler handler: CMAccelerometerHandler)
  func stopAccelerometerUpdates()
  var gyroUpdateInterval: NSTimeInterval
  var gyroAvailable: Bool { get }
  var gyroActive: Bool { get }
  var gyroData: CMGyroData? { get }
  func startGyroUpdates()
  func startGyroUpdatesToQueue(_ queue: NSOperationQueue, withHandler handler: CMGyroHandler)
  func stopGyroUpdates()
  @available(watchOS 2.0, *)
  var magnetometerUpdateInterval: NSTimeInterval
  @available(watchOS 2.0, *)
  var magnetometerAvailable: Bool { get }
  @available(watchOS 2.0, *)
  var magnetometerActive: Bool { get }
  @available(watchOS 2.0, *)
  var magnetometerData: CMMagnetometerData? { get }
  @available(watchOS 2.0, *)
  func startMagnetometerUpdates()
  @available(watchOS 2.0, *)
  func startMagnetometerUpdatesToQueue(_ queue: NSOperationQueue, withHandler handler: CMMagnetometerHandler)
  @available(watchOS 2.0, *)
  func stopMagnetometerUpdates()
  var deviceMotionUpdateInterval: NSTimeInterval
  @available(watchOS 2.0, *)
  class func availableAttitudeReferenceFrames() -> CMAttitudeReferenceFrame
  @available(watchOS 2.0, *)
  var attitudeReferenceFrame: CMAttitudeReferenceFrame { get }
  var deviceMotionAvailable: Bool { get }
  var deviceMotionActive: Bool { get }
  var deviceMotion: CMDeviceMotion? { get }
  func startDeviceMotionUpdates()
  func startDeviceMotionUpdatesToQueue(_ queue: NSOperationQueue, withHandler handler: CMDeviceMotionHandler)
  @available(watchOS 2.0, *)
  func startDeviceMotionUpdatesUsingReferenceFrame(_ referenceFrame: CMAttitudeReferenceFrame)
  @available(watchOS 2.0, *)
  func startDeviceMotionUpdatesUsingReferenceFrame(_ referenceFrame: CMAttitudeReferenceFrame, toQueue queue: NSOperationQueue, withHandler handler: CMDeviceMotionHandler)
  func stopDeviceMotionUpdates()
  @available(watchOS 2.0, *)
  var showsDeviceMovementDisplay: Bool
}
