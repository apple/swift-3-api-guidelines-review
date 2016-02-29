
@available(watchOS 2.0, *)
class NSOrderedSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func object(at idx: Int) -> AnyObject
  func index(of object: AnyObject) -> Int
  init(objects objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  @available(watchOS 2.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func objects(at indexes: NSIndexSet) -> [AnyObject]
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func isEqual(to other: NSOrderedSet) -> Bool
  func contains(_ object: AnyObject) -> Bool
  func intersects(_ other: NSOrderedSet) -> Bool
  func intersectsSet(_ set: Set<NSObject>) -> Bool
  func isSubset(of other: NSOrderedSet) -> Bool
  func isSubset(of set: Set<NSObject>) -> Bool
  @available(watchOS 2.0, *)
  subscript(_ idx: Int) -> AnyObject { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var reversed: NSOrderedSet { get }
  var array: [AnyObject] { get }
  var set: Set<NSObject> { get }
  func enumerateObjects(_ block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(_ opts: NSEnumerationOptions = [], using block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(at s: NSIndexSet, options opts: NSEnumerationOptions = [], using block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObject(passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObject(_ opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObject(at s: NSIndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjects(passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjects(_ opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjects(at s: NSIndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func index(of object: AnyObject, inSortedRange range: NSRange, options opts: NSBinarySearchingOptions = [], usingComparator cmp: NSComparator) -> Int
  func sortedArray(comparator cmptr: NSComparator) -> [AnyObject]
  func sortedArray(_ opts: NSSortOptions = [], usingComparator cmptr: NSComparator) -> [AnyObject]
  func description(withLocale locale: AnyObject?) -> String
  func description(withLocale locale: AnyObject?, indent level: Int) -> String
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
@available(watchOS 2.0, *)
class NSMutableOrderedSet : NSOrderedSet {
  func insert(_ object: AnyObject, at idx: Int)
  func removeObject(at idx: Int)
  func replaceObject(at idx: Int, with object: AnyObject)
  init(capacity numItems: Int)
}
extension NSMutableOrderedSet {
  func add(_ object: AnyObject)
  func add(_ objects: UnsafePointer<AnyObject?>, count count: Int)
  func addObjects(from array: [AnyObject])
  func exchangeObject(at idx1: Int, withObjectAt idx2: Int)
  func moveObjects(at indexes: NSIndexSet, to idx: Int)
  func insert(_ objects: [AnyObject], at indexes: NSIndexSet)
  func setObject(_ obj: AnyObject, at idx: Int)
  func replaceObjects(in range: NSRange, with objects: UnsafePointer<AnyObject?>, count count: Int)
  func replaceObjects(at indexes: NSIndexSet, with objects: [AnyObject])
  func removeObjects(in range: NSRange)
  func removeObjects(at indexes: NSIndexSet)
  func removeAllObjects()
  func remove(_ object: AnyObject)
  func removeObjects(in array: [AnyObject])
  func intersect(_ other: NSOrderedSet)
  func minus(_ other: NSOrderedSet)
  func union(_ other: NSOrderedSet)
  func intersectSet(_ other: Set<NSObject>)
  func minusSet(_ other: Set<NSObject>)
  func unionSet(_ other: Set<NSObject>)
  func sort(comparator cmptr: NSComparator)
  func sort(_ opts: NSSortOptions = [], usingComparator cmptr: NSComparator)
  func sortRange(_ range: NSRange, options opts: NSSortOptions = [], usingComparator cmptr: NSComparator)
}
extension NSMutableOrderedSet {
}
