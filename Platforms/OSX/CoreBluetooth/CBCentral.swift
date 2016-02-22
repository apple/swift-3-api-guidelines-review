
@available(OSX 10.9, *)
class CBCentral : NSObject, NSCopying {
  var identifier: NSUUID { get }
  var maximumUpdateValueLength: Int { get }
  init()
  @available(OSX 10.9, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
