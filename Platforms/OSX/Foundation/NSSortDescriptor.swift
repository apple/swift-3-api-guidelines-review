
class NSSortDescriptor : NSObject, NSSecureCoding, NSCopying {
  init(key: String?, ascending: Bool)
  init(key: String?, ascending: Bool, selector: Selector)
  init?(coder: NSCoder)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector { get }
  @available(OSX 10.9, *)
  func allowEvaluation()
  @available(OSX 10.6, *)
  init(key: String?, ascending: Bool, comparator cmptr: NSComparator)
  @available(OSX 10.6, *)
  var comparator: NSComparator { get }
  func compareObject(object1: AnyObject, toObject object2: AnyObject) -> NSComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSSet {
  @available(OSX 10.6, *)
  func sortedArrayUsingDescriptors(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArrayUsingDescriptors(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableArray {
  func sortUsingDescriptors(sortDescriptors: [NSSortDescriptor])
}
extension NSOrderedSet {
  @available(OSX 10.7, *)
  func sortedArrayUsingDescriptors(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableOrderedSet {
  @available(OSX 10.7, *)
  func sortUsingDescriptors(sortDescriptors: [NSSortDescriptor])
}
