
class SortDescriptor : Object, SecureCoding, Copying {
  init(key: String?, ascending: Bool)
  init(key: String?, ascending: Bool, selector: Selector)
  init?(coder: Coder)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector { get }
  @available(watchOS 2.0, *)
  func allowEvaluation()
  @available(watchOS 2.0, *)
  init(key: String?, ascending: Bool, comparator cmptr: Comparator)
  @available(watchOS 2.0, *)
  var comparator: Comparator { get }
  func compare(object1: AnyObject, to object2: AnyObject) -> ComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  func copy(zone: Zone = nil) -> AnyObject
}
extension NSSet {
  @available(watchOS 2.0, *)
  func sortedArray(using sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArray(using sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension MutableArray {
  func sort(using sortDescriptors: [SortDescriptor])
}
extension OrderedSet {
  @available(watchOS 2.0, *)
  func sortedArray(using sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension MutableOrderedSet {
  @available(watchOS 2.0, *)
  func sort(using sortDescriptors: [SortDescriptor])
}
