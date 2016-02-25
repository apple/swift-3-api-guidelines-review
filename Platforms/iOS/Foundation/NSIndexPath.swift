
class NSIndexPath : NSObject, NSCopying, NSSecureCoding {
  init(indexes indexes: UnsafePointer<Int>, length length: Int)
  convenience init(index index: Int)
  func indexPathByAddingIndex(_ index: Int) -> NSIndexPath
  func indexPathByRemovingLastIndex() -> NSIndexPath
  func indexAtPosition(_ position: Int) -> Int
  var length: Int { get }
  @available(iOS 7.0, *)
  func getIndexes(_ indexes: UnsafeMutablePointer<Int>, range positionRange: NSRange)
  func compare(_ otherObject: NSIndexPath) -> NSComparisonResult
  func copyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSIndexPath {
  func getIndexes(_ indexes: UnsafeMutablePointer<Int>)
}
