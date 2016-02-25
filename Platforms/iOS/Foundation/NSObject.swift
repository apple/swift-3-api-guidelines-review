
protocol NSCopying {
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
protocol NSMutableCopying {
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
protocol NSCoding {
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSSecureCoding : NSCoding {
  static func supportsSecureCoding() -> Bool
}
extension NSObject {
  class func version() -> Int
  class func setVersion(_ aVersion: Int)
  var classForCoder: AnyClass { get }
  class func replacementObjectForCoder(_ aCoder: NSCoder) -> AnyObject?
  func replacementObjectForCoder(_ aCoder: NSCoder) -> AnyObject?
  class func awakeAfterUsingCoder(_ aDecoder: NSCoder) -> AnyObject?
  func awakeAfterUsingCoder(_ aDecoder: NSCoder) -> AnyObject?
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
func CFBridgingRetain(_ X: AnyObject?) -> CFTypeRef?
