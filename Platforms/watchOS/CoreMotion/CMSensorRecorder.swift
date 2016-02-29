
@available(watchOS 2.0, *)
class CMRecordedAccelerometerData : CMAccelerometerData {
  var identifier: UInt64 { get }
  var startDate: NSDate { get }
}
@available(watchOS 2.0, *)
class CMSensorDataList : NSObject, NSFastEnumeration {
  @available(watchOS 2.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(watchOS 2.0, *)
class CMSensorRecorder : NSObject {
  class func isAccelerometerRecordingAvailable() -> Bool
  class func isAuthorizedForRecording() -> Bool
  func accelerometerData(from fromDate: NSDate, to toDate: NSDate) -> CMSensorDataList?
  func recordAccelerometer(forDuration duration: NSTimeInterval)
}
