
class IndexPath : Object, Copying, SecureCoding {
  init(indexes: UnsafePointer<Int>, length: Int)
  convenience init(index: Int)
  func adding(index: Int) -> IndexPath
  func removingLastIndex() -> IndexPath
  func index(atPosition position: Int) -> Int
  var length: Int { get }
  @available(tvOS 7.0, *)
  func getIndexes(indexes: UnsafeMutablePointer<Int>, range positionRange: NSRange)
  func compare(otherObject: IndexPath) -> ComparisonResult
  convenience init()
  func copy(withZone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension IndexPath {
  func getIndexes(indexes: UnsafeMutablePointer<Int>)
}
