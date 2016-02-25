
class NSSortDescriptor : NSObject, NSSecureCoding, NSCopying {
  init(key key: String?, ascending ascending: Bool)
  init(key key: String?, ascending ascending: Bool, selector selector: Selector)
  init?(coder coder: NSCoder)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector { get }
  @available(watchOS 2.0, *)
  func allowEvaluation()
  @available(watchOS 2.0, *)
  init(key key: String?, ascending ascending: Bool, comparator cmptr: NSComparator)
  @available(watchOS 2.0, *)
  var comparator: NSComparator { get }
  func compare(_ object1: AnyObject, to object2: AnyObject) -> NSComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
}
extension NSSet {
  @available(watchOS 2.0, *)
  func sortedArray(using sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArray(using sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableArray {
  func sort(using sortDescriptors: [NSSortDescriptor])
}
extension NSOrderedSet {
  @available(watchOS 2.0, *)
  func sortedArray(using sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableOrderedSet {
  @available(watchOS 2.0, *)
  func sort(using sortDescriptors: [NSSortDescriptor])
}
