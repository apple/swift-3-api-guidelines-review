
class IOBluetoothSDPUUID : Data {
  convenience init!(bytes: UnsafePointer<Void>, length: UInt32)
  convenience init!(data: Data!)
  class func uuid16(uuid16: BluetoothSDPUUID16) -> Self!
  class func uuid32(uuid32: BluetoothSDPUUID32) -> Self!
  init!(uuid16: BluetoothSDPUUID16)
  init!(uuid32: BluetoothSDPUUID32)
  func getWithLength(newLength: UInt32) -> Self!
  func isEqualTo(otherUUID: IOBluetoothSDPUUID!) -> Bool
  func classForCoder() -> AnyClass!
  func classForArchiver() -> AnyClass!
  func classForPortCoder() -> AnyClass!
  init()
  init?(coder aDecoder: Coder)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(OSX 10.9, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
}
