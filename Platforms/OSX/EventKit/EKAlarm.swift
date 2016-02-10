
@available(OSX 10.8, *)
class EKAlarm : EKObject, Copying {
  /*not inherited*/ init(absoluteDate date: Date)
  /*not inherited*/ init(relativeOffset offset: TimeInterval)
  var relativeOffset: TimeInterval
  @NSCopying var absoluteDate: Date?
  @NSCopying var structuredLocation: EKStructuredLocation?
  var proximity: EKAlarmProximity
  @available(OSX 10.8, *)
  var type: EKAlarmType { get }
  @available(OSX 10.8, *)
  var emailAddress: String?
  @available(OSX 10.8, *)
  var soundName: String?
  init()
  @available(OSX 10.8, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
