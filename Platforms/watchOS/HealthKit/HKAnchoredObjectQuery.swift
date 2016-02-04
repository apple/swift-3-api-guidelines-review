
var HKAnchoredObjectQueryNoAnchor: Int32 { get }
@available(watchOS 2.0, *)
class HKQueryAnchor : NSObject, NSSecureCoding, NSCopying {
  convenience init(fromValue value: Int)
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(watchOS 2.0, *)
class HKAnchoredObjectQuery : HKQuery {
  @available(watchOS 2.0, *)
  var updateHandler: ((HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, NSError?) -> Void)?
  @available(watchOS, introduced=2.0, deprecated=2.0)
  init(type: HKSampleType, predicate: NSPredicate?, anchor: Int, limit: Int, completionHandler handler: (HKAnchoredObjectQuery, [HKSample]?, Int, NSError?) -> Void)
  @available(watchOS 2.0, *)
  init(type: HKSampleType, predicate: NSPredicate?, anchor: HKQueryAnchor?, limit: Int, resultsHandler handler: (HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, NSError?) -> Void)
}
