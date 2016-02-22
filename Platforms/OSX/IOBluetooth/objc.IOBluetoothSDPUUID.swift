
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
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options options: NSDataBase64DecodingOptions = [])
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: NSData, options options: NSDataBase64DecodingOptions = [])
  init(bytes bytes: UnsafePointer<Void>, length length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length length: Int, freeWhenDone b: Bool)
  @available(OSX 10.9, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length length: Int, deallocator deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions = []) throws
  init(contentsOf url: NSURL, options readOptionsMask: NSDataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: NSURL)
  init(data data: NSData)
}
