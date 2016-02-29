
class NSArray : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func object(at index: Int) -> AnyObject
  init(objects objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSArray : ArrayLiteralConvertible {
}

extension NSArray : SequenceType {
}

extension NSArray {
  convenience init(objects elements: AnyObject...)
}

extension NSArray {
  @objc(_swiftInitWithArray_NSArray:) convenience init(array anArray: NSArray)
}

extension NSArray : CustomReflectable {
}
extension NSArray {
  func adding(_ anObject: AnyObject) -> [AnyObject]
  func addingObjects(from otherArray: [AnyObject]) -> [AnyObject]
  func componentsJoined(by separator: String) -> String
  func contains(_ anObject: AnyObject) -> Bool
  func description(withLocale locale: AnyObject?) -> String
  func description(withLocale locale: AnyObject?, indent level: Int) -> String
  func firstObjectCommon(with otherArray: [AnyObject]) -> AnyObject?
  func getObjects(_ objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range range: NSRange)
  func index(of anObject: AnyObject) -> Int
  func index(of anObject: AnyObject, in range: NSRange) -> Int
  func indexOfObjectIdentical(to anObject: AnyObject) -> Int
  func indexOfObjectIdentical(to anObject: AnyObject, in range: NSRange) -> Int
  func isEqual(to otherArray: [AnyObject]) -> Bool
  @available(watchOS 2.0, *)
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var sortedArrayHint: NSData { get }
  func sortedArray(_ comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context context: UnsafeMutablePointer<Void>) -> [AnyObject]
  func sortedArray(_ comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context context: UnsafeMutablePointer<Void>, hint hint: NSData?) -> [AnyObject]
  func sortedArray(using comparator: Selector) -> [AnyObject]
  func subarray(with range: NSRange) -> [AnyObject]
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func write(to url: NSURL, atomically atomically: Bool) -> Bool
  func objects(at indexes: NSIndexSet) -> [AnyObject]
  @available(watchOS 2.0, *)
  subscript(_ idx: Int) -> AnyObject { get }
  @available(watchOS 2.0, *)
  func enumerateObjects(_ block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateObjects(_ opts: NSEnumerationOptions = [], using block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateObjects(at s: NSIndexSet, options opts: NSEnumerationOptions = [], using block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func indexOfObject(passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(watchOS 2.0, *)
  func indexOfObject(_ opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(watchOS 2.0, *)
  func indexOfObject(at s: NSIndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(watchOS 2.0, *)
  func indexesOfObjects(passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(watchOS 2.0, *)
  func indexesOfObjects(_ opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(watchOS 2.0, *)
  func indexesOfObjects(at s: NSIndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(watchOS 2.0, *)
  func sortedArray(comparator cmptr: NSComparator) -> [AnyObject]
  @available(watchOS 2.0, *)
  func sortedArray(_ opts: NSSortOptions = [], usingComparator cmptr: NSComparator) -> [AnyObject]
  @available(watchOS 2.0, *)
  func index(of obj: AnyObject, inSortedRange r: NSRange, options opts: NSBinarySearchingOptions = [], usingComparator cmp: NSComparator) -> Int
}
struct NSBinarySearchingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var firstEqual: NSBinarySearchingOptions { get }
  static var lastEqual: NSBinarySearchingOptions { get }
  static var insertionIndex: NSBinarySearchingOptions { get }
}
extension NSArray {
  convenience init(object anObject: AnyObject)
  convenience init(array array: [AnyObject])
  convenience init(array array: [AnyObject], copyItems flag: Bool)
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: NSURL)
}
extension NSArray {
  func getObjects(_ objects: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
class NSMutableArray : NSArray {
  func add(_ anObject: AnyObject)
  func insert(_ anObject: AnyObject, at index: Int)
  func removeLastObject()
  func removeObject(at index: Int)
  func replaceObject(at index: Int, with anObject: AnyObject)
  init(capacity numItems: Int)
}
extension NSMutableArray {
  func addObjects(from otherArray: [AnyObject])
  func exchangeObject(at idx1: Int, withObjectAt idx2: Int)
  func removeAllObjects()
  func remove(_ anObject: AnyObject, in range: NSRange)
  func remove(_ anObject: AnyObject)
  func removeObjectIdentical(to anObject: AnyObject, in range: NSRange)
  func removeObjectIdentical(to anObject: AnyObject)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func removeObjects(fromIndices indices: UnsafeMutablePointer<Int>, numIndices cnt: Int)
  func removeObjects(in otherArray: [AnyObject])
  func removeObjects(in range: NSRange)
  func replaceObjects(in range: NSRange, withObjectsFrom otherArray: [AnyObject], range otherRange: NSRange)
  func replaceObjects(in range: NSRange, withObjectsFrom otherArray: [AnyObject])
  func setArray(_ otherArray: [AnyObject])
  func sort(_ compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context context: UnsafeMutablePointer<Void>)
  func sort(using comparator: Selector)
  func insert(_ objects: [AnyObject], at indexes: NSIndexSet)
  func removeObjects(at indexes: NSIndexSet)
  func replaceObjects(at indexes: NSIndexSet, with objects: [AnyObject])
  @available(watchOS 2.0, *)
  func sort(comparator cmptr: NSComparator)
  @available(watchOS 2.0, *)
  func sort(_ opts: NSSortOptions = [], usingComparator cmptr: NSComparator)
}
extension NSMutableArray {
}
