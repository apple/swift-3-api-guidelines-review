
class IOBluetoothSDPUUID : NSData {
  convenience init!(bytes bytes: UnsafePointer<Void>, length length: UInt32)
  convenience init!(data data: NSData!)
  class func uuid16(_ uuid16: BluetoothSDPUUID16) -> Self!
  class func uuid32(_ uuid32: BluetoothSDPUUID32) -> Self!
  init!(uuid16 uuid16: BluetoothSDPUUID16)
  init!(uuid32 uuid32: BluetoothSDPUUID32)
  func getWithLength(_ newLength: UInt32) -> Self!
  func isEqual(to otherUUID: IOBluetoothSDPUUID!) -> Bool
  func classForCoder() -> AnyClass!
  func classForArchiver() -> AnyClass!
  func classForPortCoder() -> AnyClass!
}
