
@available(iOS 9.0, *)
class CMRecordedAccelerometerData : CMAccelerometerData {
  var identifier: UInt64 { get }
  var startDate: NSDate { get }
}
@available(iOS 9.0, *)
class CMSensorDataList : NSObject, NSFastEnumeration {
  @available(iOS 9.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(iOS 9.0, *)
class CMSensorRecorder : NSObject {
  class func isAccelerometerRecordingAvailable() -> Bool
  class func isAuthorizedForRecording() -> Bool
  func accelerometerData(since identifier: UInt64) -> CMSensorDataList?
  func accelerometerData(from fromDate: NSDate, to toDate: NSDate) -> CMSensorDataList?
  func recordAccelerometer(for duration: NSTimeInterval)
}
