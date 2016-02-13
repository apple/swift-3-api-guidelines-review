
var HKAnchoredObjectQueryNoAnchor: Int32 { get }
@available(iOS 9.0, *)
class HKQueryAnchor : Object, SecureCoding, Copying {
  convenience init(fromValue value: Int)
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class HKAnchoredObjectQuery : HKQuery {
  @available(iOS 9.0, *)
  var updateHandler: ((HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, Error?) -> Void)?
  @available(iOS, introduced=8.0, deprecated=9.0)
  init(type: HKSampleType, predicate: Predicate?, anchor: Int, limit: Int, completionHandler handler: (HKAnchoredObjectQuery, [HKSample]?, Int, Error?) -> Void)
  @available(iOS 9.0, *)
  init(type: HKSampleType, predicate: Predicate?, anchor: HKQueryAnchor?, limit: Int, resultsHandler handler: (HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, Error?) -> Void)
}
