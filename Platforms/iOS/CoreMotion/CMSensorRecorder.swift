
@available(iOS 9.0, *)
class CMRecordedAccelerometerData : CMAccelerometerData {
  var identifier: UInt64 { get }
  var startDate: NSDate { get }
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
class CMSensorDataList : NSObject, NSFastEnumeration {
  init()
  @available(iOS 9.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(iOS 9.0, *)
class CMSensorRecorder : NSObject {
  class func isAccelerometerRecordingAvailable() -> Bool
  class func isAuthorizedForRecording() -> Bool
  func accelerometerDataSince(identifier: UInt64) -> CMSensorDataList?
  func accelerometerDataFrom(fromDate: NSDate, to toDate: NSDate) -> CMSensorDataList?
  func recordAccelerometerFor(duration: NSTimeInterval)
  init()
}
