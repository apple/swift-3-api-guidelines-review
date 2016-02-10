
@available(OSX 10.9, *)
class CBCentral : Object, Copying {
  var identifier: UUID { get }
  var maximumUpdateValueLength: Int { get }
  init()
  @available(OSX 10.9, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
