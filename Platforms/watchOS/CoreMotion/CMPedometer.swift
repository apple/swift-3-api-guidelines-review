
@available(watchOS 2.0, *)
class CMPedometerData : NSObject, NSSecureCoding, NSCopying {
  var startDate: NSDate { get }
  var endDate: NSDate { get }
  var numberOfSteps: NSNumber { get }
  var distance: NSNumber? { get }
  var floorsAscended: NSNumber? { get }
  var floorsDescended: NSNumber? { get }
  @available(watchOS 2.0, *)
  var currentPace: NSNumber? { get }
  @available(watchOS 2.0, *)
  var currentCadence: NSNumber? { get }
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
typealias CMPedometerHandler = (CMPedometerData?, NSError?) -> Void
@available(watchOS 2.0, *)
class CMPedometer : NSObject {
  class func isStepCountingAvailable() -> Bool
  class func isDistanceAvailable() -> Bool
  class func isFloorCountingAvailable() -> Bool
  @available(watchOS 2.0, *)
  class func isPaceAvailable() -> Bool
  @available(watchOS 2.0, *)
  class func isCadenceAvailable() -> Bool
  func queryPedometerDataFromDate(start: NSDate, toDate end: NSDate, withHandler handler: CMPedometerHandler)
  func startPedometerUpdatesFromDate(start: NSDate, withHandler handler: CMPedometerHandler)
  func stopPedometerUpdates()
  init()
}
