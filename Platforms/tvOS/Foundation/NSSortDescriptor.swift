
class NSSortDescriptor : NSObject, NSSecureCoding, NSCopying {
  init(key key: String?, ascending ascending: Bool)
  init(key key: String?, ascending ascending: Bool, selector selector: Selector)
  init?(coder coder: NSCoder)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector { get }
  @available(tvOS 7.0, *)
  func allowEvaluation()
  @available(tvOS 4.0, *)
  init(key key: String?, ascending ascending: Bool, comparator cmptr: NSComparator)
  @available(tvOS 4.0, *)
  var comparator: NSComparator { get }
  func compareObject(_ object1: AnyObject, toObject object2: AnyObject) -> NSComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
extension NSSet {
  @available(tvOS 4.0, *)
  func sortedArrayUsingDescriptors(_ sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArrayUsingDescriptors(_ sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableArray {
  func sortUsingDescriptors(_ sortDescriptors: [NSSortDescriptor])
}
extension NSOrderedSet {
  @available(tvOS 5.0, *)
  func sortedArrayUsingDescriptors(_ sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableOrderedSet {
  @available(tvOS 5.0, *)
  func sortUsingDescriptors(_ sortDescriptors: [NSSortDescriptor])
}
