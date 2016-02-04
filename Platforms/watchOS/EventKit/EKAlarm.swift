
@available(watchOS 2.0, *)
class EKAlarm : EKObject, Copying {
  /*not inherited*/ init(absoluteDate date: Date)
  /*not inherited*/ init(relativeOffset offset: TimeInterval)
  var relativeOffset: TimeInterval
  @NSCopying var absoluteDate: Date?
  @NSCopying var structuredLocation: EKStructuredLocation?
  var proximity: EKAlarmProximity
  init()
  @available(watchOS 2.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
