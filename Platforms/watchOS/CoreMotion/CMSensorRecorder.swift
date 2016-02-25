
@available(watchOS 2.0, *)
class CMRecordedAccelerometerData : CMAccelerometerData {
  var identifier: UInt64 { get }
  var startDate: NSDate { get }
}
@available(watchOS 2.0, *)
class CMSensorDataList : NSObject, NSFastEnumeration {
  @available(watchOS 2.0, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(watchOS 2.0, *)
class CMSensorRecorder : NSObject {
  class func isAccelerometerRecordingAvailable() -> Bool
  class func isAuthorizedForRecording() -> Bool
  func accelerometerDataFromDate(_ fromDate: NSDate, toDate toDate: NSDate) -> CMSensorDataList?
  func recordAccelerometerForDuration(_ duration: NSTimeInterval)
}
