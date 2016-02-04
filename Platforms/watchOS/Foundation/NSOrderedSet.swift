
@available(watchOS 2.0, *)
class NSOrderedSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectAtIndex(idx: Int) -> AnyObject
  func indexOfObject(object: AnyObject) -> Int
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(watchOS 2.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSOrderedSet : SequenceType {
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}

extension NSOrderedSet {
  convenience init(objects elements: AnyObject...)
}

extension NSOrderedSet : ArrayLiteralConvertible {
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}
extension NSOrderedSet {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func objectsAtIndexes(indexes: NSIndexSet) -> [AnyObject]
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func isEqualToOrderedSet(other: NSOrderedSet) -> Bool
  func containsObject(object: AnyObject) -> Bool
  func intersectsOrderedSet(other: NSOrderedSet) -> Bool
  func intersectsSet(set: Set<NSObject>) -> Bool
  func isSubsetOfOrderedSet(other: NSOrderedSet) -> Bool
  func isSubsetOfSet(set: Set<NSObject>) -> Bool
  @available(watchOS 2.0, *)
  subscript (idx: Int) -> AnyObject { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var reversedOrderedSet: NSOrderedSet { get }
  var array: [AnyObject] { get }
  var set: Set<NSObject> { get }
  func enumerateObjectsUsingBlock(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjectsWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexOfObject(object: AnyObject, inSortedRange range: NSRange, options opts: NSBinarySearchingOptions, usingComparator cmp: NSComparator) -> Int
  func sortedArrayUsingComparator(cmptr: NSComparator) -> [AnyObject]
  func sortedArrayWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator) -> [AnyObject]
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
}
extension NSOrderedSet {
  convenience init(object: AnyObject)
  convenience init(orderedSet set: NSOrderedSet)
  convenience init(orderedSet set: NSOrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: NSOrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
}
@available(watchOS 2.0, *)
class NSMutableOrderedSet : NSOrderedSet {
  func insertObject(object: AnyObject, atIndex idx: Int)
  func removeObjectAtIndex(idx: Int)
  func replaceObjectAtIndex(idx: Int, withObject object: AnyObject)
  init?(coder aDecoder: NSCoder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(orderedSet set: NSOrderedSet)
  convenience init(orderedSet set: NSOrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: NSOrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
}
extension NSMutableOrderedSet {
  func addObject(object: AnyObject)
  func addObjects(objects: UnsafePointer<AnyObject?>, count: Int)
  func addObjectsFromArray(array: [AnyObject])
  func exchangeObjectAtIndex(idx1: Int, withObjectAtIndex idx2: Int)
  func moveObjectsAtIndexes(indexes: NSIndexSet, toIndex idx: Int)
  func insertObjects(objects: [AnyObject], atIndexes indexes: NSIndexSet)
  func setObject(obj: AnyObject, atIndex idx: Int)
  @available(watchOS 2.0, *)
  subscript (idx: Int) -> AnyObject
  func replaceObjectsInRange(range: NSRange, withObjects objects: UnsafePointer<AnyObject?>, count: Int)
  func replaceObjectsAtIndexes(indexes: NSIndexSet, withObjects objects: [AnyObject])
  func removeObjectsInRange(range: NSRange)
  func removeObjectsAtIndexes(indexes: NSIndexSet)
  func removeAllObjects()
  func removeObject(object: AnyObject)
  func removeObjectsInArray(array: [AnyObject])
  func intersectOrderedSet(other: NSOrderedSet)
  func minusOrderedSet(other: NSOrderedSet)
  func unionOrderedSet(other: NSOrderedSet)
  func intersectSet(other: Set<NSObject>)
  func minusSet(other: Set<NSObject>)
  func unionSet(other: Set<NSObject>)
  func sortUsingComparator(cmptr: NSComparator)
  func sortWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator)
  func sortRange(range: NSRange, options opts: NSSortOptions, usingComparator cmptr: NSComparator)
}
extension NSMutableOrderedSet {
}
