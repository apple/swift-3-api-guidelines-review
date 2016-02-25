
@available(iOS 9.0, *)
class CMRecordedAccelerometerData : CMAccelerometerData {
  var identifier: UInt64 { get }
  var startDate: NSDate { get }
}
@available(iOS 9.0, *)
class CMSensorDataList : NSObject, NSFastEnumeration {
  @available(iOS 9.0, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(iOS 9.0, *)
class CMSensorRecorder : NSObject {
  class func isAccelerometerRecordingAvailable() -> Bool
  class func isAuthorizedForRecording() -> Bool
  func accelerometerDataSince(_ identifier: UInt64) -> CMSensorDataList?
  func accelerometerDataFrom(_ fromDate: NSDate, to toDate: NSDate) -> CMSensorDataList?
  func recordAccelerometerFor(_ duration: NSTimeInterval)
}
