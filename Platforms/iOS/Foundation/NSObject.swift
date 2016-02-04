
protocol Copying {
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol MutableCopying {
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
protocol Coding {
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol SecureCoding : Coding {
  static func supportsSecureCoding() -> Bool
}
extension Object {
  class func version() -> Int
  class func setVersion(aVersion: Int)
  var classForCoder: AnyClass { get }
  class func replacementObjectFor(aCoder: Coder) -> AnyObject?
  func replacementObjectFor(aCoder: Coder) -> AnyObject?
  class func awakeAfterUsing(aDecoder: Coder) -> AnyObject?
  func awakeAfterUsing(aDecoder: Coder) -> AnyObject?
  class func classForCoder() -> AnyClass
}
protocol DiscardableContent {
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension Object {
  @available(iOS 4.0, *)
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(X: AnyObject?) -> CFTypeRef?
