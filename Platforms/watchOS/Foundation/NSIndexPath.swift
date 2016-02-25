
class NSIndexPath : NSObject, NSCopying, NSSecureCoding {
  init(indexes indexes: UnsafePointer<Int>, length length: Int)
  convenience init(index index: Int)
  func adding(_ index: Int) -> NSIndexPath
  func removingLastIndex() -> NSIndexPath
  func index(atPosition position: Int) -> Int
  var length: Int { get }
  @available(watchOS 2.0, *)
  func getIndexes(_ indexes: UnsafeMutablePointer<Int>, range positionRange: NSRange)
  func compare(_ otherObject: NSIndexPath) -> NSComparisonResult
  func copy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSIndexPath {
  func getIndexes(_ indexes: UnsafeMutablePointer<Int>)
}
