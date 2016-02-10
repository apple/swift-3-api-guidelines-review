
@available(iOS 9.0, *)
class CSPerson : Object, SecureCoding, Copying {
  init(displayName: String?, handles: [String], handleIdentifier: String)
  var displayName: String? { get }
  var handles: [String] { get }
  var handleIdentifier: String { get }
  var contactIdentifier: String?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
