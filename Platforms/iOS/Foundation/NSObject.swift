
protocol NSCopying {
  func copyWithZone(zone: NSZone) -> AnyObject
}
protocol NSMutableCopying {
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
protocol NSCoding {
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSSecureCoding : NSCoding {
  static func supportsSecureCoding() -> Bool
}
extension NSObject {
  class func version() -> Int
  class func setVersion(aVersion: Int)
  var classForCoder: AnyClass { get }
  class func replacementObjectForCoder(aCoder: NSCoder) -> AnyObject?
  func replacementObjectForCoder(aCoder: NSCoder) -> AnyObject?
  class func awakeAfterUsingCoder(aDecoder: NSCoder) -> AnyObject?
  func awakeAfterUsingCoder(aDecoder: NSCoder) -> AnyObject?
  class func classForCoder() -> AnyClass
}
protocol NSDiscardableContent {
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension NSObject {
  @available(iOS 4.0, *)
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(X: AnyObject?) -> CFTypeRef?
