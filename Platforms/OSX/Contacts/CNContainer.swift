
@available(OSX 10.11, *)
enum CNContainerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unassigned
  case local
  case exchange
  case cardDAV
}
@available(OSX 10.11, *)
class CNContainer : Object, Copying, SecureCoding {
  var identifier: String { get }
  var name: String { get }
  var type: CNContainerType { get }
  init()
  @available(OSX 10.11, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.11, *)
let CNContainerIdentifierKey: String
@available(OSX 10.11, *)
let CNContainerNameKey: String
@available(OSX 10.11, *)
let CNContainerTypeKey: String
