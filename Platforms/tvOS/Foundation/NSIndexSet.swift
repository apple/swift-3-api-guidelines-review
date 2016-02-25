
class NSIndexSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init(indexesInRange range: NSRange)
  init(indexSet indexSet: NSIndexSet)
  convenience init(index value: Int)
  func isEqualToIndexSet(_ indexSet: NSIndexSet) -> Bool
  var count: Int { get }
  var firstIndex: Int { get }
  var lastIndex: Int { get }
  func indexGreaterThanIndex(_ value: Int) -> Int
  func indexLessThanIndex(_ value: Int) -> Int
  func indexGreaterThanOrEqualToIndex(_ value: Int) -> Int
  func indexLessThanOrEqualToIndex(_ value: Int) -> Int
  func getIndexes(_ indexBuffer: UnsafeMutablePointer<Int>, maxCount bufferSize: Int, inIndexRange range: NSRangePointer) -> Int
  @available(tvOS 2.0, *)
  func countOfIndexesInRange(_ range: NSRange) -> Int
  func containsIndex(_ value: Int) -> Bool
  func containsIndexesInRange(_ range: NSRange) -> Bool
  func containsIndexes(_ indexSet: NSIndexSet) -> Bool
  func intersectsIndexesInRange(_ range: NSRange) -> Bool
  @available(tvOS 4.0, *)
  func enumerateIndexesUsingBlock(_ block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func enumerateIndexesWithOptions(_ opts: NSEnumerationOptions, usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func enumerateIndexesInRange(_ range: NSRange, options opts: NSEnumerationOptions, usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func indexPassingTest(_ predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(tvOS 4.0, *)
  func indexWithOptions(_ opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(tvOS 4.0, *)
  func indexInRange(_ range: NSRange, options opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(tvOS 4.0, *)
  func indexesPassingTest(_ predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(tvOS 4.0, *)
  func indexesWithOptions(_ opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(tvOS 4.0, *)
  func indexesInRange(_ range: NSRange, options opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(tvOS 5.0, *)
  func enumerateRangesUsingBlock(_ block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 5.0, *)
  func enumerateRangesWithOptions(_ opts: NSEnumerationOptions, usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 5.0, *)
  func enumerateRangesInRange(_ range: NSRange, options opts: NSEnumerationOptions, usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSIndexSet : SequenceType {
}
class NSMutableIndexSet : NSIndexSet {
  func addIndexes(_ indexSet: NSIndexSet)
  func removeIndexes(_ indexSet: NSIndexSet)
  func removeAllIndexes()
  func addIndex(_ value: Int)
  func removeIndex(_ value: Int)
  func addIndexesInRange(_ range: NSRange)
  func removeIndexesInRange(_ range: NSRange)
  func shiftIndexesStartingAtIndex(_ index: Int, by delta: Int)
}
