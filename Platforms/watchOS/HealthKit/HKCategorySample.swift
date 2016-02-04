
@available(watchOS 2.0, *)
class HKCategorySample : HKSample {
  var categoryType: HKCategoryType { get }
  var value: Int { get }
  convenience init(type: HKCategoryType, value: Int, start startDate: Date, end endDate: Date, metadata: [String : AnyObject]?)
  convenience init(type: HKCategoryType, value: Int, start startDate: Date, end endDate: Date)
  @available(watchOS 2.0, *)
  convenience init(type: HKCategoryType, value: Int, start startDate: Date, end endDate: Date, device: HKDevice?, metadata: [String : AnyObject]?)
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
let HKPredicateKeyPathCategoryValue: String
