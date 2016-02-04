
class NSArray : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func objectAt(index: Int) -> AnyObject
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSArray : ArrayLiteralConvertible {
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}

extension NSArray : SequenceType {
  final func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}

extension NSArray {
  convenience init(objects elements: AnyObject...)
}

extension NSArray {
  @objc(_swiftInitWithArray_NSArray:) convenience init(array anArray: NSArray)
}

extension NSArray : CustomReflectable {
  func customMirror() -> Mirror
}
extension NSArray {
  func adding(anObject: AnyObject) -> [AnyObject]
  func addingObjectsFrom(otherArray: [AnyObject]) -> [AnyObject]
  func componentsJoinedBy(separator: String) -> String
  func contains(anObject: AnyObject) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
  func firstObjectCommonWith(otherArray: [AnyObject]) -> AnyObject?
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func indexOf(anObject: AnyObject) -> Int
  func indexOf(anObject: AnyObject, in range: NSRange) -> Int
  func indexOfObjectIdenticalTo(anObject: AnyObject) -> Int
  func indexOfObjectIdenticalTo(anObject: AnyObject, in range: NSRange) -> Int
  func isEqualTo(otherArray: [AnyObject]) -> Bool
  @available(tvOS 4.0, *)
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectEnumerator() -> Enumerator
  func reverseObjectEnumerator() -> Enumerator
  @NSCopying var sortedArrayHint: Data { get }
  func sortedArrayUsing(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>) -> [AnyObject]
  func sortedArrayUsing(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>, hint: Data?) -> [AnyObject]
  func sortedArrayUsing(comparator: Selector) -> [AnyObject]
  func subarrayWith(range: NSRange) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: URL, atomically: Bool) -> Bool
  func objectsAt(indexes: IndexSet) -> [AnyObject]
  @available(tvOS 6.0, *)
  subscript (idx: Int) -> AnyObject { get }
  @available(tvOS 4.0, *)
  func enumerateObjectsUsing(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func enumerateObjects(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func enumerateObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(tvOS 4.0, *)
  func indexOfObject(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(tvOS 4.0, *)
  func indexOfObjectAt(s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(tvOS 4.0, *)
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(tvOS 4.0, *)
  func indexesOfObjects(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(tvOS 4.0, *)
  func indexesOfObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(tvOS 4.0, *)
  func sortedArrayUsingComparator(cmptr: Comparator) -> [AnyObject]
  @available(tvOS 4.0, *)
  func sortedArray(options opts: SortOptions = [], usingComparator cmptr: Comparator) -> [AnyObject]
  @available(tvOS 4.0, *)
  func indexOf(obj: AnyObject, inSortedRange r: NSRange, options opts: BinarySearchingOptions = [], usingComparator cmp: Comparator) -> Int
}
struct BinarySearchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var FirstEqual: BinarySearchingOptions { get }
  static var LastEqual: BinarySearchingOptions { get }
  static var InsertionIndex: BinarySearchingOptions { get }
}
extension NSArray {
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
extension NSArray {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
class MutableArray : NSArray {
  func add(anObject: AnyObject)
  func insert(anObject: AnyObject, at index: Int)
  func removeLastObject()
  func removeObjectAt(index: Int)
  func replaceObjectAt(index: Int, withObject anObject: AnyObject)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: Coder)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
}
extension MutableArray {
  func addObjectsFrom(otherArray: [AnyObject])
  func exchangeObjectAt(idx1: Int, withObjectAt idx2: Int)
  func removeAllObjects()
  func remove(anObject: AnyObject, in range: NSRange)
  func remove(anObject: AnyObject)
  func removeObjectIdenticalTo(anObject: AnyObject, in range: NSRange)
  func removeObjectIdenticalTo(anObject: AnyObject)
  func removeObjectsIn(otherArray: [AnyObject])
  func removeObjectsIn(range: NSRange)
  func replaceObjectsIn(range: NSRange, withObjectsFrom otherArray: [AnyObject], range otherRange: NSRange)
  func replaceObjectsIn(range: NSRange, withObjectsFrom otherArray: [AnyObject])
  func setArray(otherArray: [AnyObject])
  func sortUsing(compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>)
  func sortUsing(comparator: Selector)
  func insert(objects: [AnyObject], at indexes: IndexSet)
  func removeObjectsAt(indexes: IndexSet)
  func replaceObjectsAt(indexes: IndexSet, withObjects objects: [AnyObject])
  @available(tvOS 6.0, *)
  subscript (idx: Int) -> AnyObject
  @available(tvOS 4.0, *)
  func sortUsingComparator(cmptr: Comparator)
  @available(tvOS 4.0, *)
  func sort(options opts: SortOptions = [], usingComparator cmptr: Comparator)
}
extension MutableArray {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
