
protocol Copying {
  func copyWith(zone: Zone = nil) -> AnyObject
}
protocol MutableCopying {
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
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
  class func replacementObject(forCoder aCoder: Coder) -> AnyObject?
  func replacementObject(forCoder aCoder: Coder) -> AnyObject?
  class func awakeAfter(usingCoder aDecoder: Coder) -> AnyObject?
  func awakeAfter(usingCoder aDecoder: Coder) -> AnyObject?
  class func classForCoder() -> AnyClass
}
protocol DiscardableContent {
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension Object {
  @available(tvOS 4.0, *)
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(X: AnyObject?) -> CFTypeRef?
