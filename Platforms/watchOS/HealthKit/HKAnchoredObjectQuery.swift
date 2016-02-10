
var HKAnchoredObjectQueryNoAnchor: Int32 { get }
@available(watchOS 2.0, *)
class HKQueryAnchor : Object, SecureCoding, Copying {
  convenience init(fromValue value: Int)
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
@available(watchOS 2.0, *)
class HKAnchoredObjectQuery : HKQuery {
  @available(watchOS 2.0, *)
  var updateHandler: ((HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, Error?) -> Void)?
  @available(watchOS, introduced=2.0, deprecated=2.0)
  init(type: HKSampleType, predicate: Predicate?, anchor: Int, limit: Int, completionHandler handler: (HKAnchoredObjectQuery, [HKSample]?, Int, Error?) -> Void)
  @available(watchOS 2.0, *)
  init(type: HKSampleType, predicate: Predicate?, anchor: HKQueryAnchor?, limit: Int, resultsHandler handler: (HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, Error?) -> Void)
}
