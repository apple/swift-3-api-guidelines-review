
class NSArray : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func object(at index: Int) -> AnyObject
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func countByEnumerating(withState state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func addingObjects(from otherArray: [AnyObject]) -> [AnyObject]
  func componentsJoined(by separator: String) -> String
  func contains(anObject: AnyObject) -> Bool
  var description: String { get }
  func description(withLocale locale: AnyObject?) -> String
  func description(withLocale locale: AnyObject?, indent level: Int) -> String
  func firstObjectCommon(withArray otherArray: [AnyObject]) -> AnyObject?
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func index(of anObject: AnyObject) -> Int
  func index(of anObject: AnyObject, in range: NSRange) -> Int
  func indexOfObjectIdentical(to anObject: AnyObject) -> Int
  func indexOfObjectIdentical(to anObject: AnyObject, in range: NSRange) -> Int
  func isEqual(to otherArray: [AnyObject]) -> Bool
  @available(iOS 4.0, *)
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectEnumerator() -> Enumerator
  func reverseObjectEnumerator() -> Enumerator
  @NSCopying var sortedArrayHint: Data { get }
  func sortedArray(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>) -> [AnyObject]
  func sortedArray(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>, hint: Data?) -> [AnyObject]
  func sortedArray(usingSelector comparator: Selector) -> [AnyObject]
  func subarray(withRange range: NSRange) -> [AnyObject]
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func write(to url: URL, atomically: Bool) -> Bool
  func objects(at indexes: IndexSet) -> [AnyObject]
  @available(iOS 6.0, *)
  subscript (atIndexedSubscript idx: Int) -> AnyObject { get }
  @available(iOS 4.0, *)
  func enumerateObjects(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateObjects(opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateObjects(at s: IndexSet, options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func indexOfObject(opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func indexOfObject(at s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(iOS 4.0, *)
  func indexesOfObjects(opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(iOS 4.0, *)
  func indexesOfObjects(at s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(iOS 4.0, *)
  func sortedArray(comparator cmptr: Comparator) -> [AnyObject]
  @available(iOS 4.0, *)
  func sortedArray(opts: SortOptions = [], usingComparator cmptr: Comparator) -> [AnyObject]
  @available(iOS 4.0, *)
  func index(of obj: AnyObject, inSortedRange r: NSRange, options opts: BinarySearchingOptions = [], usingComparator cmp: Comparator) -> Int
}
struct BinarySearchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var firstEqual: BinarySearchingOptions { get }
  static var lastEqual: BinarySearchingOptions { get }
  static var insertionIndex: BinarySearchingOptions { get }
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
  func removeObject(at index: Int)
  func replaceObject(at index: Int, withObject anObject: AnyObject)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: Coder)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
}
extension MutableArray {
  func addObjects(from otherArray: [AnyObject])
  func exchangeObject(at idx1: Int, withObjectAt idx2: Int)
  func removeAllObjects()
  func remove(anObject: AnyObject, in range: NSRange)
  func remove(anObject: AnyObject)
  func removeObjectIdentical(to anObject: AnyObject, in range: NSRange)
  func removeObjectIdentical(to anObject: AnyObject)
  func removeObjects(in otherArray: [AnyObject])
  func removeObjects(in range: NSRange)
  func replaceObjects(in range: NSRange, withObjectsFrom otherArray: [AnyObject], range otherRange: NSRange)
  func replaceObjects(in range: NSRange, withObjectsFrom otherArray: [AnyObject])
  func setArray(otherArray: [AnyObject])
  func sort(compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>)
  func sort(usingSelector comparator: Selector)
  func insert(objects: [AnyObject], at indexes: IndexSet)
  func removeObjects(at indexes: IndexSet)
  func replaceObjects(at indexes: IndexSet, withObjects objects: [AnyObject])
  @available(iOS 6.0, *)
  subscript (atIndexedSubscript idx: Int) -> AnyObject
  @available(iOS 4.0, *)
  func sort(comparator cmptr: Comparator)
  @available(iOS 4.0, *)
  func sort(opts: SortOptions = [], usingComparator cmptr: Comparator)
}
extension MutableArray {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
