
@available(watchOS 2.0, *)
class HKCorrelation : HKSample {
  var correlationType: HKCorrelationType { get }
  var objects: Set<HKSample> { get }
  convenience init(type correlationType: HKCorrelationType, start startDate: Date, end endDate: Date, objects: Set<HKSample>)
  convenience init(type correlationType: HKCorrelationType, start startDate: Date, end endDate: Date, objects: Set<HKSample>, metadata: [String : AnyObject]?)
  @available(watchOS 2.0, *)
  convenience init(type correlationType: HKCorrelationType, start startDate: Date, end endDate: Date, objects: Set<HKSample>, device: HKDevice?, metadata: [String : AnyObject]?)
  func objects(forType objectType: HKObjectType) -> Set<HKSample>
  init?(coder aDecoder: Coder)
}
