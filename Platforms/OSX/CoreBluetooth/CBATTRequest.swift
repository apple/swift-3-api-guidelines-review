
@available(OSX 10.9, *)
class CBATTRequest : Object {
  var central: CBCentral { get }
  var characteristic: CBCharacteristic { get }
  var offset: Int { get }
  @NSCopying var value: Data?
  init()
}
