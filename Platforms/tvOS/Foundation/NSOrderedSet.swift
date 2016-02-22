
@available(tvOS 5.0, *)
class NSOrderedSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func object(at idx: Int) -> AnyObject
  func indexOf(object: AnyObject) -> Int
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 5.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 5.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encode(with aCoder: NSCoder)
  @available(tvOS 5.0, *)
  func countByEnumerating(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func objects(at indexes: NSIndexSet) -> [AnyObject]
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func isEqual(to other: NSOrderedSet) -> Bool
  func contains(object: AnyObject) -> Bool
  func intersects(other: NSOrderedSet) -> Bool
  func intersects(set: Set<NSObject>) -> Bool
  func isSubsetOf(other: NSOrderedSet) -> Bool
  func isSubsetOf(set: Set<NSObject>) -> Bool
  @available(tvOS 6.0, *)
  subscript(idx: Int) -> AnyObject { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var reversed: NSOrderedSet { get }
  var array: [AnyObject] { get }
  var set: Set<NSObject> { get }
  func enumerateObjects(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(opts: NSEnumerationOptions = [], using block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(at s: NSIndexSet, options opts: NSEnumerationOptions = [], using block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObject(passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObject(opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObject(at s: NSIndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjects(passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjects(opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjects(at s: NSIndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexOf(object: AnyObject, inSortedRange range: NSRange, options opts: NSBinarySearchingOptions = [], usingComparator cmp: NSComparator) -> Int
  func sortedArray(comparator cmptr: NSComparator) -> [AnyObject]
  func sortedArray(opts: NSSortOptions = [], usingComparator cmptr: NSComparator) -> [AnyObject]
  var description: String { get }
  func description(withLocale locale: AnyObject?) -> String
  func description(withLocale locale: AnyObject?, indent level: Int) -> String
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
@available(tvOS 5.0, *)
class NSMutableOrderedSet : NSOrderedSet {
  func insert(object: AnyObject, at idx: Int)
  func removeObject(at idx: Int)
  func replaceObject(at idx: Int, with object: AnyObject)
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
  func add(object: AnyObject)
  func add(objects: UnsafePointer<AnyObject?>, count: Int)
  func addObjects(from array: [AnyObject])
  func exchangeObject(at idx1: Int, withObjectAt idx2: Int)
  func moveObjects(at indexes: NSIndexSet, to idx: Int)
  func insert(objects: [AnyObject], at indexes: NSIndexSet)
  func setObject(obj: AnyObject, at idx: Int)
  @available(tvOS 6.0, *)
  subscript(idx: Int) -> AnyObject
  func replaceObjects(in range: NSRange, with objects: UnsafePointer<AnyObject?>, count: Int)
  func replaceObjects(at indexes: NSIndexSet, with objects: [AnyObject])
  func removeObjects(in range: NSRange)
  func removeObjects(at indexes: NSIndexSet)
  func removeAllObjects()
  func remove(object: AnyObject)
  func removeObjects(in array: [AnyObject])
  func intersect(other: NSOrderedSet)
  func minus(other: NSOrderedSet)
  func union(other: NSOrderedSet)
  func intersect(other: Set<NSObject>)
  func minus(other: Set<NSObject>)
  func union(other: Set<NSObject>)
  func sort(comparator cmptr: NSComparator)
  func sort(opts: NSSortOptions = [], usingComparator cmptr: NSComparator)
  func sortRange(range: NSRange, options opts: NSSortOptions = [], usingComparator cmptr: NSComparator)
}
extension NSMutableOrderedSet {
}
