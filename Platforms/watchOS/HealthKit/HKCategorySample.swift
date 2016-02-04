
@available(watchOS 2.0, *)
class HKCategorySample : HKSample {
  var categoryType: HKCategoryType { get }
  var value: Int { get }
  convenience init(type: HKCategoryType, value: Int, startDate: NSDate, endDate: NSDate, metadata: [String : AnyObject]?)
  convenience init(type: HKCategoryType, value: Int, startDate: NSDate, endDate: NSDate)
  @available(watchOS 2.0, *)
  convenience init(type: HKCategoryType, value: Int, startDate: NSDate, endDate: NSDate, device: HKDevice?, metadata: [String : AnyObject]?)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
let HKPredicateKeyPathCategoryValue: String
