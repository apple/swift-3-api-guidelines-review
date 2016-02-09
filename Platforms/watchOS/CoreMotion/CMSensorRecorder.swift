
@available(watchOS 2.0, *)
class CMRecordedAccelerometerData : CMAccelerometerData {
  var identifier: UInt64 { get }
  var startDate: Date { get }
  init()
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
class CMSensorDataList : Object, FastEnumeration {
  init()
  @available(watchOS 2.0, *)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(watchOS 2.0, *)
class CMSensorRecorder : Object {
  class func isAccelerometerRecordingAvailable() -> Bool
  class func isAuthorizedForRecording() -> Bool
  func accelerometerData(from fromDate: Date, to toDate: Date) -> CMSensorDataList?
  func recordAccelerometerFor(duration duration: TimeInterval)
  init()
}
