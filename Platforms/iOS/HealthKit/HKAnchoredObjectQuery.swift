
var HKAnchoredObjectQueryNoAnchor: Int32 { get }
@available(iOS 9.0, *)
class HKQueryAnchor : NSObject, NSSecureCoding, NSCopying {
  convenience init(fromValue value: Int)
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
class HKAnchoredObjectQuery : HKQuery {
  @available(iOS 9.0, *)
  var updateHandler: ((HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, NSError?) -> Void)?
  @available(iOS, introduced=8.0, deprecated=9.0)
  init(type: HKSampleType, predicate: NSPredicate?, anchor: Int, limit: Int, completionHandler handler: (HKAnchoredObjectQuery, [HKSample]?, Int, NSError?) -> Void)
  @available(iOS 9.0, *)
  init(type: HKSampleType, predicate: NSPredicate?, anchor: HKQueryAnchor?, limit: Int, resultsHandler handler: (HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, NSError?) -> Void)
}
