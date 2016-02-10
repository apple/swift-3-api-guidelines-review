
class SortDescriptor : Object, SecureCoding, Copying {
  init(key: String?, ascending: Bool)
  init(key: String?, ascending: Bool, selector: Selector)
  init?(coder: Coder)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector { get }
  @available(iOS 7.0, *)
  func allowEvaluation()
  @available(iOS 4.0, *)
  init(key: String?, ascending: Bool, comparator cmptr: Comparator)
  @available(iOS 4.0, *)
  var comparator: Comparator { get }
  func compare(object1: AnyObject, to object2: AnyObject) -> ComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  func copy(with zone: Zone = nil) -> AnyObject
}
extension NSSet {
  @available(iOS 4.0, *)
  func sortedArray(using sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArray(using sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension MutableArray {
  func sort(using sortDescriptors: [SortDescriptor])
}
extension OrderedSet {
  @available(iOS 5.0, *)
  func sortedArray(using sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension MutableOrderedSet {
  @available(iOS 5.0, *)
  func sort(using sortDescriptors: [SortDescriptor])
}
