
@available(OSX 10.11, *)
class CNContactProperty : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var contact: CNContact { get }
  var key: String { get }
  var value: AnyObject? { get }
  var identifier: String? { get }
  var label: String? { get }
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
