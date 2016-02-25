
@available(OSX 10.9, *)
class CBCentral : NSObject, NSCopying {
  var identifier: NSUUID { get }
  var maximumUpdateValueLength: Int { get }
  @available(OSX 10.9, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
