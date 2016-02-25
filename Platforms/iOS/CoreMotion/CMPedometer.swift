
@available(iOS 8.0, *)
class CMPedometerData : NSObject, NSSecureCoding, NSCopying {
  var startDate: NSDate { get }
  var endDate: NSDate { get }
  var numberOfSteps: NSNumber { get }
  var distance: NSNumber? { get }
  var floorsAscended: NSNumber? { get }
  var floorsDescended: NSNumber? { get }
  @available(iOS 9.0, *)
  var currentPace: NSNumber? { get }
  @available(iOS 9.0, *)
  var currentCadence: NSNumber? { get }
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
typealias CMPedometerHandler = (CMPedometerData?, NSError?) -> Void
@available(iOS 8.0, *)
class CMPedometer : NSObject {
  class func isStepCountingAvailable() -> Bool
  class func isDistanceAvailable() -> Bool
  class func isFloorCountingAvailable() -> Bool
  @available(iOS 9.0, *)
  class func isPaceAvailable() -> Bool
  @available(iOS 9.0, *)
  class func isCadenceAvailable() -> Bool
  func queryPedometerData(from start: NSDate, to end: NSDate, withHandler handler: CMPedometerHandler)
  func startUpdates(from start: NSDate, withHandler handler: CMPedometerHandler)
  func stopUpdates()
}
