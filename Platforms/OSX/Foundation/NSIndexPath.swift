
class NSIndexPath : NSObject, NSCopying, NSSecureCoding {
  init(indexes: UnsafePointer<Int>, length: Int)
  convenience init(index: Int)
  func adding(index: Int) -> NSIndexPath
  func removingLastIndex() -> NSIndexPath
  func index(atPosition position: Int) -> Int
  var length: Int { get }
  @available(OSX 10.9, *)
  func getIndexes(indexes: UnsafeMutablePointer<Int>, range positionRange: NSRange)
  func compare(otherObject: NSIndexPath) -> NSComparisonResult
  convenience init()
  func copy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSIndexPath {
  func getIndexes(indexes: UnsafeMutablePointer<Int>)
}
