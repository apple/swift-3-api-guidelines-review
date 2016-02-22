
class NSIndexSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init(indexesIn range: NSRange)
  init(indexSet: NSIndexSet)
  convenience init(index value: Int)
  func isEqual(to indexSet: NSIndexSet) -> Bool
  var count: Int { get }
  var firstIndex: Int { get }
  var lastIndex: Int { get }
  func indexGreaterThanIndex(value: Int) -> Int
  func indexLessThanIndex(value: Int) -> Int
  func indexGreaterThanOrEqual(to value: Int) -> Int
  func indexLessThanOrEqual(to value: Int) -> Int
  func getIndexes(indexBuffer: UnsafeMutablePointer<Int>, maxCount bufferSize: Int, inIndexRange range: NSRangePointer) -> Int
  @available(OSX 10.5, *)
  func countOfIndexes(in range: NSRange) -> Int
  func contains(value: Int) -> Bool
  func contains(in range: NSRange) -> Bool
  func contains(indexSet: NSIndexSet) -> Bool
  func intersects(in range: NSRange) -> Bool
  @available(OSX 10.6, *)
  func enumerate(block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerate(opts: NSEnumerationOptions = [], using block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerate(in range: NSRange, options opts: NSEnumerationOptions = [], using block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func index(passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func index(opts: NSEnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func index(in range: NSRange, options opts: NSEnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func indexes(passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(OSX 10.6, *)
  func indexes(opts: NSEnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(OSX 10.6, *)
  func indexes(in range: NSRange, options opts: NSEnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(OSX 10.7, *)
  func enumerateRanges(block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.7, *)
  func enumerateRanges(opts: NSEnumerationOptions = [], using block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.7, *)
  func enumerateRanges(in range: NSRange, options opts: NSEnumerationOptions = [], using block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  convenience init()
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSIndexSet : SequenceType {
  func generate() -> NSIndexSetGenerator
  typealias Generator = NSIndexSetGenerator
  typealias SubSequence = AnySequence<Element>
}
class NSMutableIndexSet : NSIndexSet {
  func add(indexSet: NSIndexSet)
  func remove(indexSet: NSIndexSet)
  func removeAllIndexes()
  func add(value: Int)
  func remove(value: Int)
  func add(in range: NSRange)
  func remove(in range: NSRange)
  func shiftIndexesStarting(at index: Int, by delta: Int)
  init(indexesIn range: NSRange)
  init(indexSet: NSIndexSet)
  convenience init(index value: Int)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
