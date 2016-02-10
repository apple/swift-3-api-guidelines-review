
class SortDescriptor : Object, SecureCoding, Copying {
  init(key: String?, ascending: Bool)
  init(key: String?, ascending: Bool, selector: Selector)
  init?(coder: Coder)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector { get }
  @available(tvOS 7.0, *)
  func allowEvaluation()
  @available(tvOS 4.0, *)
  init(key: String?, ascending: Bool, comparator cmptr: Comparator)
  @available(tvOS 4.0, *)
  var comparator: Comparator { get }
  func compare(object1: AnyObject, to object2: AnyObject) -> ComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encode(withCoder aCoder: Coder)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
extension NSSet {
  @available(tvOS 4.0, *)
  func sortedArray(usingDescriptors sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArray(usingDescriptors sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension MutableArray {
  func sort(usingDescriptors sortDescriptors: [SortDescriptor])
}
extension OrderedSet {
  @available(tvOS 5.0, *)
  func sortedArray(usingDescriptors sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension MutableOrderedSet {
  @available(tvOS 5.0, *)
  func sort(usingDescriptors sortDescriptors: [SortDescriptor])
}
