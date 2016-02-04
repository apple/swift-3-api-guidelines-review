
class NSIndexSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init(indexesInRange range: NSRange)
  init(indexSet: NSIndexSet)
  convenience init(index value: Int)
  func isEqualToIndexSet(indexSet: NSIndexSet) -> Bool
  var count: Int { get }
  var firstIndex: Int { get }
  var lastIndex: Int { get }
  func indexGreaterThanIndex(value: Int) -> Int
  func indexLessThanIndex(value: Int) -> Int
  func indexGreaterThanOrEqualToIndex(value: Int) -> Int
  func indexLessThanOrEqualToIndex(value: Int) -> Int
  func getIndexes(indexBuffer: UnsafeMutablePointer<Int>, maxCount bufferSize: Int, inIndexRange range: NSRangePointer) -> Int
  @available(watchOS 2.0, *)
  func countOfIndexesInRange(range: NSRange) -> Int
  func containsIndex(value: Int) -> Bool
  func containsIndexesInRange(range: NSRange) -> Bool
  func containsIndexes(indexSet: NSIndexSet) -> Bool
  func intersectsIndexesInRange(range: NSRange) -> Bool
  @available(watchOS 2.0, *)
  func enumerateIndexesUsingBlock(block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateIndexesWithOptions(opts: NSEnumerationOptions, usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateIndexesInRange(range: NSRange, options opts: NSEnumerationOptions, usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func indexPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(watchOS 2.0, *)
  func indexWithOptions(opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(watchOS 2.0, *)
  func indexInRange(range: NSRange, options opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(watchOS 2.0, *)
  func indexesPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(watchOS 2.0, *)
  func indexesWithOptions(opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(watchOS 2.0, *)
  func indexesInRange(range: NSRange, options opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(watchOS 2.0, *)
  func enumerateRangesUsingBlock(block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateRangesWithOptions(opts: NSEnumerationOptions, usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateRangesInRange(range: NSRange, options opts: NSEnumerationOptions, usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSIndexSet : SequenceType {
  func generate() -> NSIndexSetGenerator
  typealias Generator = NSIndexSetGenerator
  typealias SubSequence = AnySequence<Element>
}
class NSMutableIndexSet : NSIndexSet {
  func addIndexes(indexSet: NSIndexSet)
  func removeIndexes(indexSet: NSIndexSet)
  func removeAllIndexes()
  func addIndex(value: Int)
  func removeIndex(value: Int)
  func addIndexesInRange(range: NSRange)
  func removeIndexesInRange(range: NSRange)
  func shiftIndexesStartingAtIndex(index: Int, by delta: Int)
  init(indexesInRange range: NSRange)
  init(indexSet: NSIndexSet)
  convenience init(index value: Int)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
