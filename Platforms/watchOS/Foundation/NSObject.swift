
protocol NSCopying {
  func copy(with zone: NSZone = nil) -> AnyObject
}
protocol NSMutableCopying {
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
protocol NSCoding {
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSSecureCoding : NSCoding {
  static func supportsSecureCoding() -> Bool
}
extension NSObject {
  class func version() -> Int
  class func setVersion(_ aVersion: Int)
  var classForCoder: AnyClass { get }
  class func replacementObject(for aCoder: NSCoder) -> AnyObject?
  func replacementObject(for aCoder: NSCoder) -> AnyObject?
  class func awakeAfter(using aDecoder: NSCoder) -> AnyObject?
  func awakeAfter(using aDecoder: NSCoder) -> AnyObject?
  class func classForCoder() -> AnyClass
}
protocol NSDiscardableContent {
  func beginAccess() -> Bool
  func endAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension NSObject {
  @available(watchOS 2.0, *)
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(_ X: AnyObject?) -> CFTypeRef?
