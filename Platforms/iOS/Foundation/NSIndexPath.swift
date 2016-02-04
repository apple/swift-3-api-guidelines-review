
class NSIndexPath : NSObject, NSCopying, NSSecureCoding {
  init(indexes: UnsafePointer<Int>, length: Int)
  convenience init(index: Int)
  func indexPathByAddingIndex(index: Int) -> NSIndexPath
  func indexPathByRemovingLastIndex() -> NSIndexPath
  func indexAtPosition(position: Int) -> Int
  var length: Int { get }
  @available(iOS 7.0, *)
  func getIndexes(indexes: UnsafeMutablePointer<Int>, range positionRange: NSRange)
  func compare(otherObject: NSIndexPath) -> NSComparisonResult
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSIndexPath {
  func getIndexes(indexes: UnsafeMutablePointer<Int>)
}
