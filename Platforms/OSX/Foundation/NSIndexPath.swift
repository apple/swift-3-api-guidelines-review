
class IndexPath : Object, Copying, SecureCoding {
  init(indexes: UnsafePointer<Int>, length: Int)
  convenience init(index: Int)
  func adding(index: Int) -> IndexPath
  func removingLastIndex() -> IndexPath
  func index(atPosition position: Int) -> Int
  var length: Int { get }
  @available(OSX 10.9, *)
  func getIndexes(indexes: UnsafeMutablePointer<Int>, range positionRange: NSRange)
  func compare(otherObject: IndexPath) -> ComparisonResult
  convenience init()
  func copyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension IndexPath {
  func getIndexes(indexes: UnsafeMutablePointer<Int>)
}
