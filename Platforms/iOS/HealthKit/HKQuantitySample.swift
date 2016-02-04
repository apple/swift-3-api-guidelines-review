
@available(iOS 8.0, *)
class HKQuantitySample : HKSample {
  var quantityType: HKQuantityType { get }
  var quantity: HKQuantity { get }
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, start startDate: Date, end endDate: Date)
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, start startDate: Date, end endDate: Date, metadata: [String : AnyObject]?)
  @available(iOS 9.0, *)
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, start startDate: Date, end endDate: Date, device: HKDevice?, metadata: [String : AnyObject]?)
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
let HKPredicateKeyPathQuantity: String
