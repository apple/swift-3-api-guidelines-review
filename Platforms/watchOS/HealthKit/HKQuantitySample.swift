
@available(watchOS 2.0, *)
class HKQuantitySample : HKSample {
  var quantityType: HKQuantityType { get }
  var quantity: HKQuantity { get }
  convenience init(type quantityType: HKQuantityType, quantity quantity: HKQuantity, startDate startDate: NSDate, endDate endDate: NSDate)
  convenience init(type quantityType: HKQuantityType, quantity quantity: HKQuantity, startDate startDate: NSDate, endDate endDate: NSDate, metadata metadata: [String : AnyObject]?)
  @available(watchOS 2.0, *)
  convenience init(type quantityType: HKQuantityType, quantity quantity: HKQuantity, startDate startDate: NSDate, endDate endDate: NSDate, device device: HKDevice?, metadata metadata: [String : AnyObject]?)
}
@available(watchOS 2.0, *)
let HKPredicateKeyPathQuantity: String
