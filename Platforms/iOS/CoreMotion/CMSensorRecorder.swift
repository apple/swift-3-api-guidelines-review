
@available(iOS 9.0, *)
class CMRecordedAccelerometerData : CMAccelerometerData {
  var identifier: UInt64 { get }
  var startDate: Date { get }
  init()
  init?(coder aDecoder: Coder)
}
@available(iOS 9.0, *)
class CMSensorDataList : Object, FastEnumeration {
  init()
  @available(iOS 9.0, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(iOS 9.0, *)
class CMSensorRecorder : Object {
  class func isAccelerometerRecordingAvailable() -> Bool
  class func isAuthorizedForRecording() -> Bool
  func accelerometerDataSince(identifier: UInt64) -> CMSensorDataList?
  func accelerometerDataFrom(fromDate: Date, to toDate: Date) -> CMSensorDataList?
  func recordAccelerometerFor(duration: TimeInterval)
  init()
}
