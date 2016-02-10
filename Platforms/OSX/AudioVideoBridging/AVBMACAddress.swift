
@available(OSX 10.8, *)
class AVBMACAddress : Object, Copying {
  init(bytes: UnsafePointer<UInt8>)
  var bytes: UnsafePointer<UInt8> { get }
  @NSCopying var dataRepresentation: Data
  var stringRepresentation: String
  var isMulticast: Bool
  init()
  @available(OSX 10.8, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
