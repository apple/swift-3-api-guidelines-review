
class NSArray : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectAtIndex(index: Int) -> AnyObject
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func arrayByAddingObject(anObject: AnyObject) -> [AnyObject]
  func arrayByAddingObjectsFromArray(otherArray: [AnyObject]) -> [AnyObject]
  func componentsJoinedByString(separator: String) -> String
  func containsObject(anObject: AnyObject) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
  func firstObjectCommonWithArray(otherArray: [AnyObject]) -> AnyObject?
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func indexOfObject(anObject: AnyObject) -> Int
  func indexOfObject(anObject: AnyObject, inRange range: NSRange) -> Int
  func indexOfObjectIdenticalTo(anObject: AnyObject) -> Int
  func indexOfObjectIdenticalTo(anObject: AnyObject, inRange range: NSRange) -> Int
  func isEqualToArray(otherArray: [AnyObject]) -> Bool
  @available(tvOS 4.0, *)
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var sortedArrayHint: NSData { get }
  func sortedArrayUsingFunction(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>) -> [AnyObject]
  func sortedArrayUsingFunction(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>, hint: NSData?) -> [AnyObject]
  func sortedArrayUsingSelector(comparator: Selector) -> [AnyObject]
  func subarrayWithRange(range: NSRange) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(url: NSURL, atomically: Bool) -> Bool
  func objectsAtIndexes(indexes: NSIndexSet) -> [AnyObject]
  @available(tvOS 6.0, *)
  subscript (idx: Int) -> AnyObject { get }
  @available(tvOS 4.0, *)
  func enumerateObjectsUsingBlock(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func enumerateObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func enumerateObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(tvOS 4.0, *)
  func indexOfObjectWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(tvOS 4.0, *)
  func indexOfObjectAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(tvOS 4.0, *)
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(tvOS 4.0, *)
  func indexesOfObjectsWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(tvOS 4.0, *)
  func indexesOfObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(tvOS 4.0, *)
  func sortedArrayUsingComparator(cmptr: NSComparator) -> [AnyObject]
  @available(tvOS 4.0, *)
  func sortedArrayWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator) -> [AnyObject]
  @available(tvOS 4.0, *)
  func indexOfObject(obj: AnyObject, inSortedRange r: NSRange, options opts: NSBinarySearchingOptions, usingComparator cmp: NSComparator) -> Int
}
struct NSBinarySearchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var FirstEqual: NSBinarySearchingOptions { get }
  static var LastEqual: NSBinarySearchingOptions { get }
  static var InsertionIndex: NSBinarySearchingOptions { get }
}
extension NSArray {
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOfURL url: NSURL)
}
extension NSArray {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
class NSMutableArray : NSArray {
  func addObject(anObject: AnyObject)
  func insertObject(anObject: AnyObject, atIndex index: Int)
  func removeLastObject()
  func removeObjectAtIndex(index: Int)
  func replaceObjectAtIndex(index: Int, withObject anObject: AnyObject)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
}
extension NSMutableArray {
  func addObjectsFromArray(otherArray: [AnyObject])
  func exchangeObjectAtIndex(idx1: Int, withObjectAtIndex idx2: Int)
  func removeAllObjects()
  func removeObject(anObject: AnyObject, inRange range: NSRange)
  func removeObject(anObject: AnyObject)
  func removeObjectIdenticalTo(anObject: AnyObject, inRange range: NSRange)
  func removeObjectIdenticalTo(anObject: AnyObject)
  func removeObjectsInArray(otherArray: [AnyObject])
  func removeObjectsInRange(range: NSRange)
  func replaceObjectsInRange(range: NSRange, withObjectsFromArray otherArray: [AnyObject], range otherRange: NSRange)
  func replaceObjectsInRange(range: NSRange, withObjectsFromArray otherArray: [AnyObject])
  func setArray(otherArray: [AnyObject])
  func sortUsingFunction(compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>)
  func sortUsingSelector(comparator: Selector)
  func insertObjects(objects: [AnyObject], atIndexes indexes: NSIndexSet)
  func removeObjectsAtIndexes(indexes: NSIndexSet)
  func replaceObjectsAtIndexes(indexes: NSIndexSet, withObjects objects: [AnyObject])
  @available(tvOS 6.0, *)
  subscript (idx: Int) -> AnyObject
  @available(tvOS 4.0, *)
  func sortUsingComparator(cmptr: NSComparator)
  @available(tvOS 4.0, *)
  func sortWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator)
}
extension NSMutableArray {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOfURL url: NSURL)
}
