
@available(iOS 8.0, *)
class HKSample : HKObject {
  var sampleType: HKSampleType { get }
  var startDate: Date { get }
  var endDate: Date { get }
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
let HKSampleSortIdentifierStartDate: String
@available(iOS 8.0, *)
let HKSampleSortIdentifierEndDate: String
@available(iOS 8.0, *)
let HKPredicateKeyPathStartDate: String
@available(iOS 8.0, *)
let HKPredicateKeyPathEndDate: String
