
@available(iOS 9.0, *)
enum CNContainerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unassigned
  case local
  case exchange
  case cardDAV
}
@available(iOS 9.0, *)
class CNContainer : Object, Copying, SecureCoding {
  var identifier: String { get }
  var name: String { get }
  var type: CNContainerType { get }
  init()
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 9.0, *)
let CNContainerIdentifierKey: String
@available(iOS 9.0, *)
let CNContainerNameKey: String
@available(iOS 9.0, *)
let CNContainerTypeKey: String
