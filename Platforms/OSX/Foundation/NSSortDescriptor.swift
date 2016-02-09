
class SortDescriptor : Object, SecureCoding, Copying {
  init(key: String?, ascending: Bool)
  init(key: String?, ascending: Bool, selector: Selector)
  init?(coder: Coder)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector { get }
  @available(OSX 10.9, *)
  func allowEvaluation()
  @available(OSX 10.6, *)
  init(key: String?, ascending: Bool, comparator cmptr: Comparator)
  @available(OSX 10.6, *)
  var comparator: Comparator { get }
  func compare(object1: AnyObject, to object2: AnyObject) -> ComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
}
extension NSSet {
  @available(OSX 10.6, *)
  func sortedArray(usingDescriptors sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArray(usingDescriptors sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension MutableArray {
  func sort(usingDescriptors sortDescriptors: [SortDescriptor])
}
extension OrderedSet {
  @available(OSX 10.7, *)
  func sortedArray(usingDescriptors sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension MutableOrderedSet {
  @available(OSX 10.7, *)
  func sort(usingDescriptors sortDescriptors: [SortDescriptor])
}
