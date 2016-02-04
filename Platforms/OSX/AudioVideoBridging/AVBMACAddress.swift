
@available(OSX 10.8, *)
class AVBMACAddress : NSObject, NSCopying {
  init(bytes: UnsafePointer<UInt8>)
  var bytes: UnsafePointer<UInt8> { get }
  @NSCopying var dataRepresentation: NSData
  var stringRepresentation: String
  var multicast: Bool
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
