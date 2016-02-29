
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
extension NSObject {
}
protocol NSDiscardableContent {
  func beginAccess() -> Bool
  func endAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension NSObject {
  @available(OSX 10.6, *)
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(_ X: AnyObject?) -> CFTypeRef?
