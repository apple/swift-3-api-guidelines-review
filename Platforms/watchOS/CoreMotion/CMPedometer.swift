
@available(watchOS 2.0, *)
class CMPedometerData : Object, SecureCoding, Copying {
  var startDate: Date { get }
  var endDate: Date { get }
  var numberOfSteps: Number { get }
  var distance: Number? { get }
  var floorsAscended: Number? { get }
  var floorsDescended: Number? { get }
  @available(watchOS 2.0, *)
  var currentPace: Number? { get }
  @available(watchOS 2.0, *)
  var currentCadence: Number? { get }
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
typealias CMPedometerHandler = (CMPedometerData?, Error?) -> Void
@available(watchOS 2.0, *)
class CMPedometer : Object {
  class func isStepCountingAvailable() -> Bool
  class func isDistanceAvailable() -> Bool
  class func isFloorCountingAvailable() -> Bool
  @available(watchOS 2.0, *)
  class func isPaceAvailable() -> Bool
  @available(watchOS 2.0, *)
  class func isCadenceAvailable() -> Bool
  func queryPedometerData(from start: Date, to end: Date, withHandler handler: CMPedometerHandler)
  func startUpdates(from start: Date, withHandler handler: CMPedometerHandler)
  func stopUpdates()
  init()
}
