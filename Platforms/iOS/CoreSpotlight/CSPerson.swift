
@available(iOS 9.0, *)
class CSPerson : NSObject, NSSecureCoding, NSCopying {
  init(displayName: String?, handles: [String], handleIdentifier: String)
  var displayName: String? { get }
  var handles: [String] { get }
  var handleIdentifier: String { get }
  var contactIdentifier: String?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
