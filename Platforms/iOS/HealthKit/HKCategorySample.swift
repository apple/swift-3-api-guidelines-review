
@available(iOS 8.0, *)
class HKCategorySample : HKSample {
  var categoryType: HKCategoryType { get }
  var value: Int { get }
  convenience init(type: HKCategoryType, value: Int, start startDate: NSDate, end endDate: NSDate, metadata: [String : AnyObject]?)
  convenience init(type: HKCategoryType, value: Int, start startDate: NSDate, end endDate: NSDate)
  @available(iOS 9.0, *)
  convenience init(type: HKCategoryType, value: Int, start startDate: NSDate, end endDate: NSDate, device: HKDevice?, metadata: [String : AnyObject]?)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
let HKPredicateKeyPathCategoryValue: String
