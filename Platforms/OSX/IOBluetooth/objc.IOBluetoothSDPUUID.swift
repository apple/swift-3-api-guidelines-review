
class IOBluetoothSDPUUID : NSData {
  class func uuidWithBytes(bytes: UnsafePointer<Void>, length: UInt32) -> Self!
  class func uuidWithData(data: NSData!) -> Self!
  class func uuid16(uuid16: BluetoothSDPUUID16) -> Self!
  class func uuid32(uuid32: BluetoothSDPUUID32) -> Self!
  init!(UUID16 uuid16: BluetoothSDPUUID16)
  init!(UUID32 uuid32: BluetoothSDPUUID32)
  func getUUIDWithLength(newLength: UInt32) -> Self!
  func isEqualToUUID(otherUUID: IOBluetoothSDPUUID!) -> Bool
  func classForCoder() -> AnyClass!
  func classForArchiver() -> AnyClass!
  func classForPortCoder() -> AnyClass!
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(OSX 10.9, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data: NSData)
}
