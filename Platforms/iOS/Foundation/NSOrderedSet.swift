
@available(iOS 5.0, *)
class OrderedSet : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func object(at idx: Int) -> AnyObject
  func index(of object: AnyObject) -> Int
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  @available(iOS 5.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 5.0, *)
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 5.0, *)
  func encodeWith(aCoder: Coder)
  @available(iOS 5.0, *)
  func countByEnumerating(withState state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension OrderedSet : SequenceType {
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}

extension OrderedSet {
  convenience init(objects elements: AnyObject...)
}

extension OrderedSet : ArrayLiteralConvertible {
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}
extension OrderedSet {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func objects(at indexes: IndexSet) -> [AnyObject]
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func isEqual(to other: OrderedSet) -> Bool
  func contains(object: AnyObject) -> Bool
  func intersectsOrderedSet(other: OrderedSet) -> Bool
  func intersectsSet(set: Set<Object>) -> Bool
  func isSubset(of other: OrderedSet) -> Bool
  func isSubset(of set: Set<Object>) -> Bool
  @available(iOS 6.0, *)
  subscript (atIndexedSubscript idx: Int) -> AnyObject { get }
  func objectEnumerator() -> Enumerator
  func reverseObjectEnumerator() -> Enumerator
  @NSCopying var reversed: OrderedSet { get }
  var array: [AnyObject] { get }
  var set: Set<Object> { get }
  func enumerateObjects(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(at s: IndexSet, options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObject(opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObject(at s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexesOfObjects(opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexesOfObjects(at s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func index(of object: AnyObject, inSortedRange range: NSRange, options opts: BinarySearchingOptions = [], usingComparator cmp: Comparator) -> Int
  func sortedArray(comparator cmptr: Comparator) -> [AnyObject]
  func sortedArray(opts: SortOptions = [], usingComparator cmptr: Comparator) -> [AnyObject]
  var description: String { get }
  func description(withLocale locale: AnyObject?) -> String
  func description(withLocale locale: AnyObject?, indent level: Int) -> String
}
extension OrderedSet {
  convenience init(object: AnyObject)
  convenience init(orderedSet set: OrderedSet)
  convenience init(orderedSet set: OrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: OrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
}
@available(iOS 5.0, *)
class MutableOrderedSet : OrderedSet {
  func insert(object: AnyObject, at idx: Int)
  func removeObject(at idx: Int)
  func replaceObject(at idx: Int, withObject object: AnyObject)
  init?(coder aDecoder: Coder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(orderedSet set: OrderedSet)
  convenience init(orderedSet set: OrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: OrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
}
extension MutableOrderedSet {
  func add(object: AnyObject)
  func addObjects(objects: UnsafePointer<AnyObject?>, count: Int)
  func addObjects(from array: [AnyObject])
  func exchangeObject(at idx1: Int, withObjectAt idx2: Int)
  func moveObjects(at indexes: IndexSet, to idx: Int)
  func insert(objects: [AnyObject], at indexes: IndexSet)
  func setObject(obj: AnyObject, at idx: Int)
  @available(iOS 6.0, *)
  subscript (atIndexedSubscript idx: Int) -> AnyObject
  func replaceObjects(in range: NSRange, withObjects objects: UnsafePointer<AnyObject?>, count: Int)
  func replaceObjects(at indexes: IndexSet, withObjects objects: [AnyObject])
  func removeObjects(in range: NSRange)
  func removeObjects(at indexes: IndexSet)
  func removeAllObjects()
  func remove(object: AnyObject)
  func removeObjects(in array: [AnyObject])
  func intersectOrderedSet(other: OrderedSet)
  func minusOrderedSet(other: OrderedSet)
  func unionOrderedSet(other: OrderedSet)
  func intersectSet(other: Set<Object>)
  func minusSet(other: Set<Object>)
  func unionSet(other: Set<Object>)
  func sort(comparator cmptr: Comparator)
  func sort(opts: SortOptions = [], usingComparator cmptr: Comparator)
  func sortRange(range: NSRange, options opts: SortOptions = [], usingComparator cmptr: Comparator)
}
extension MutableOrderedSet {
}
