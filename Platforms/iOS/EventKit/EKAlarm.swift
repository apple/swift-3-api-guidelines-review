
@available(iOS 4.0, *)
class EKAlarm : EKObject, NSCopying {
  /*not inherited*/ init(absoluteDate date: NSDate)
  /*not inherited*/ init(relativeOffset offset: NSTimeInterval)
  var relativeOffset: NSTimeInterval
  @NSCopying var absoluteDate: NSDate?
  @NSCopying var structuredLocation: EKStructuredLocation?
  var proximity: EKAlarmProximity
  @available(iOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
