
class NSArray : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectAtIndex(_ index: Int) -> AnyObject
  init(objects objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func arrayByAddingObject(_ anObject: AnyObject) -> [AnyObject]
  func arrayByAddingObjectsFromArray(_ otherArray: [AnyObject]) -> [AnyObject]
  func componentsJoinedByString(_ separator: String) -> String
  func containsObject(_ anObject: AnyObject) -> Bool
  func descriptionWithLocale(_ locale: AnyObject?) -> String
  func descriptionWithLocale(_ locale: AnyObject?, indent level: Int) -> String
  func firstObjectCommonWithArray(_ otherArray: [AnyObject]) -> AnyObject?
  func getObjects(_ objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range range: NSRange)
  func indexOfObject(_ anObject: AnyObject) -> Int
  func indexOfObject(_ anObject: AnyObject, inRange range: NSRange) -> Int
  func indexOfObjectIdenticalTo(_ anObject: AnyObject) -> Int
  func indexOfObjectIdenticalTo(_ anObject: AnyObject, inRange range: NSRange) -> Int
  func isEqualToArray(_ otherArray: [AnyObject]) -> Bool
  @available(watchOS 2.0, *)
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var sortedArrayHint: NSData { get }
  func sortedArrayUsingFunction(_ comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context context: UnsafeMutablePointer<Void>) -> [AnyObject]
  func sortedArrayUsingFunction(_ comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context context: UnsafeMutablePointer<Void>, hint hint: NSData?) -> [AnyObject]
  func sortedArrayUsingSelector(_ comparator: Selector) -> [AnyObject]
  func subarrayWithRange(_ range: NSRange) -> [AnyObject]
  func writeToFile(_ path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(_ url: NSURL, atomically atomically: Bool) -> Bool
  func objectsAtIndexes(_ indexes: NSIndexSet) -> [AnyObject]
  @available(watchOS 2.0, *)
  subscript(_ idx: Int) -> AnyObject { get }
  @available(watchOS 2.0, *)
  func enumerateObjectsUsingBlock(_ block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateObjectsWithOptions(_ opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateObjectsAtIndexes(_ s: NSIndexSet, options opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func indexOfObjectPassingTest(_ predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(watchOS 2.0, *)
  func indexOfObjectWithOptions(_ opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(watchOS 2.0, *)
  func indexOfObjectAtIndexes(_ s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(watchOS 2.0, *)
  func indexesOfObjectsPassingTest(_ predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(watchOS 2.0, *)
  func indexesOfObjectsWithOptions(_ opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(watchOS 2.0, *)
  func indexesOfObjectsAtIndexes(_ s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(watchOS 2.0, *)
  func sortedArrayUsingComparator(_ cmptr: NSComparator) -> [AnyObject]
  @available(watchOS 2.0, *)
  func sortedArrayWithOptions(_ opts: NSSortOptions, usingComparator cmptr: NSComparator) -> [AnyObject]
  @available(watchOS 2.0, *)
  func indexOfObject(_ obj: AnyObject, inSortedRange r: NSRange, options opts: NSBinarySearchingOptions, usingComparator cmp: NSComparator) -> Int
}
struct NSBinarySearchingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var FirstEqual: NSBinarySearchingOptions { get }
  static var LastEqual: NSBinarySearchingOptions { get }
  static var InsertionIndex: NSBinarySearchingOptions { get }
}
extension NSArray {
  convenience init(object anObject: AnyObject)
  convenience init(array array: [AnyObject])
  convenience init(array array: [AnyObject], copyItems flag: Bool)
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOfURL url: NSURL)
}
extension NSArray {
  func getObjects(_ objects: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
class NSMutableArray : NSArray {
  func addObject(_ anObject: AnyObject)
  func insertObject(_ anObject: AnyObject, atIndex index: Int)
  func removeLastObject()
  func removeObjectAtIndex(_ index: Int)
  func replaceObjectAtIndex(_ index: Int, withObject anObject: AnyObject)
  init(capacity numItems: Int)
}
extension NSMutableArray {
  func addObjectsFromArray(_ otherArray: [AnyObject])
  func exchangeObjectAtIndex(_ idx1: Int, withObjectAtIndex idx2: Int)
  func removeAllObjects()
  func removeObject(_ anObject: AnyObject, inRange range: NSRange)
  func removeObject(_ anObject: AnyObject)
  func removeObjectIdenticalTo(_ anObject: AnyObject, inRange range: NSRange)
  func removeObjectIdenticalTo(_ anObject: AnyObject)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func removeObjectsFromIndices(_ indices: UnsafeMutablePointer<Int>, numIndices cnt: Int)
  func removeObjectsInArray(_ otherArray: [AnyObject])
  func removeObjectsInRange(_ range: NSRange)
  func replaceObjectsInRange(_ range: NSRange, withObjectsFromArray otherArray: [AnyObject], range otherRange: NSRange)
  func replaceObjectsInRange(_ range: NSRange, withObjectsFromArray otherArray: [AnyObject])
  func setArray(_ otherArray: [AnyObject])
  func sortUsingFunction(_ compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context context: UnsafeMutablePointer<Void>)
  func sortUsingSelector(_ comparator: Selector)
  func insertObjects(_ objects: [AnyObject], atIndexes indexes: NSIndexSet)
  func removeObjectsAtIndexes(_ indexes: NSIndexSet)
  func replaceObjectsAtIndexes(_ indexes: NSIndexSet, withObjects objects: [AnyObject])
  @available(watchOS 2.0, *)
  func sortUsingComparator(_ cmptr: NSComparator)
  @available(watchOS 2.0, *)
  func sortWithOptions(_ opts: NSSortOptions, usingComparator cmptr: NSComparator)
}
extension NSMutableArray {
}
