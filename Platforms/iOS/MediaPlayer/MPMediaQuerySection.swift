
@available(iOS 4.2, *)
class MPMediaQuerySection : Object, SecureCoding, Copying {
  var title: String { get }
  var range: NSRange { get }
  init()
  @available(iOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.2, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 4.2, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
