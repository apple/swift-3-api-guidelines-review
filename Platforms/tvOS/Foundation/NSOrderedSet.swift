
@available(tvOS 5.0, *)
class NSOrderedSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectAtIndex(_ idx: Int) -> AnyObject
  func indexOfObject(_ object: AnyObject) -> Int
  init(objects objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 5.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 5.0, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  @available(tvOS 5.0, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSOrderedSet : SequenceType {
}

extension NSOrderedSet {
  convenience init(objects elements: AnyObject...)
}

extension NSOrderedSet : ArrayLiteralConvertible {
}
extension NSOrderedSet {
  func getObjects(_ objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range range: NSRange)
  func objectsAtIndexes(_ indexes: NSIndexSet) -> [AnyObject]
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func isEqualToOrderedSet(_ other: NSOrderedSet) -> Bool
  func containsObject(_ object: AnyObject) -> Bool
  func intersectsOrderedSet(_ other: NSOrderedSet) -> Bool
  func intersectsSet(_ set: Set<NSObject>) -> Bool
  func isSubsetOfOrderedSet(_ other: NSOrderedSet) -> Bool
  func isSubsetOfSet(_ set: Set<NSObject>) -> Bool
  @available(tvOS 6.0, *)
  subscript(_ idx: Int) -> AnyObject { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var reversedOrderedSet: NSOrderedSet { get }
  var array: [AnyObject] { get }
  var set: Set<NSObject> { get }
  func enumerateObjectsUsingBlock(_ block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsWithOptions(_ opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAtIndexes(_ s: NSIndexSet, options opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObjectPassingTest(_ predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectWithOptions(_ opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectAtIndexes(_ s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjectsPassingTest(_ predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjectsWithOptions(_ opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjectsAtIndexes(_ s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexOfObject(_ object: AnyObject, inSortedRange range: NSRange, options opts: NSBinarySearchingOptions, usingComparator cmp: NSComparator) -> Int
  func sortedArrayUsingComparator(_ cmptr: NSComparator) -> [AnyObject]
  func sortedArrayWithOptions(_ opts: NSSortOptions, usingComparator cmptr: NSComparator) -> [AnyObject]
  func descriptionWithLocale(_ locale: AnyObject?) -> String
  func descriptionWithLocale(_ locale: AnyObject?, indent level: Int) -> String
}
extension NSOrderedSet {
  convenience init(object object: AnyObject)
  convenience init(orderedSet set: NSOrderedSet)
  convenience init(orderedSet set: NSOrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: NSOrderedSet, range range: NSRange, copyItems flag: Bool)
  convenience init(array array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range range: NSRange, copyItems flag: Bool)
  convenience init(set set: Set<NSObject>)
  convenience init(set set: Set<NSObject>, copyItems flag: Bool)
}
@available(tvOS 5.0, *)
class NSMutableOrderedSet : NSOrderedSet {
  func insertObject(_ object: AnyObject, atIndex idx: Int)
  func removeObjectAtIndex(_ idx: Int)
  func replaceObjectAtIndex(_ idx: Int, withObject object: AnyObject)
  init(capacity numItems: Int)
}
extension NSMutableOrderedSet {
  func addObject(_ object: AnyObject)
  func addObjects(_ objects: UnsafePointer<AnyObject?>, count count: Int)
  func addObjectsFromArray(_ array: [AnyObject])
  func exchangeObjectAtIndex(_ idx1: Int, withObjectAtIndex idx2: Int)
  func moveObjectsAtIndexes(_ indexes: NSIndexSet, toIndex idx: Int)
  func insertObjects(_ objects: [AnyObject], atIndexes indexes: NSIndexSet)
  func setObject(_ obj: AnyObject, atIndex idx: Int)
  func replaceObjectsInRange(_ range: NSRange, withObjects objects: UnsafePointer<AnyObject?>, count count: Int)
  func replaceObjectsAtIndexes(_ indexes: NSIndexSet, withObjects objects: [AnyObject])
  func removeObjectsInRange(_ range: NSRange)
  func removeObjectsAtIndexes(_ indexes: NSIndexSet)
  func removeAllObjects()
  func removeObject(_ object: AnyObject)
  func removeObjectsInArray(_ array: [AnyObject])
  func intersectOrderedSet(_ other: NSOrderedSet)
  func minusOrderedSet(_ other: NSOrderedSet)
  func unionOrderedSet(_ other: NSOrderedSet)
  func intersectSet(_ other: Set<NSObject>)
  func minusSet(_ other: Set<NSObject>)
  func unionSet(_ other: Set<NSObject>)
  func sortUsingComparator(_ cmptr: NSComparator)
  func sortWithOptions(_ opts: NSSortOptions, usingComparator cmptr: NSComparator)
  func sortRange(_ range: NSRange, options opts: NSSortOptions, usingComparator cmptr: NSComparator)
}
extension NSMutableOrderedSet {
}
