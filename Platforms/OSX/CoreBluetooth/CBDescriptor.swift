
@available(OSX 10.7, *)
class CBDescriptor : NSObject {
  unowned(unsafe) var characteristic: @sil_unmanaged CBCharacteristic { get }
  var UUID: CBUUID { get }
  var value: AnyObject? { get }
  init()
}
@available(OSX 10.9, *)
class CBMutableDescriptor : CBDescriptor {
  init(type UUID: CBUUID, value: AnyObject?)
  init()
}
