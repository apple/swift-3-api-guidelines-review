
struct DataReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var dataReadingMappedIfSafe: DataReadingOptions { get }
  static var dataReadingUncached: DataReadingOptions { get }
  @available(tvOS 5.0, *)
  static var dataReadingMappedAlways: DataReadingOptions { get }
  static var dataReadingMapped: DataReadingOptions { get }
  static var mappedRead: DataReadingOptions { get }
  static var uncachedRead: DataReadingOptions { get }
}
struct DataWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var dataWritingAtomic: DataWritingOptions { get }
  @available(tvOS 6.0, *)
  static var dataWritingWithoutOverwriting: DataWritingOptions { get }
  @available(tvOS 4.0, *)
  static var dataWritingFileProtectionNone: DataWritingOptions { get }
  @available(tvOS 4.0, *)
  static var dataWritingFileProtectionComplete: DataWritingOptions { get }
  @available(tvOS 5.0, *)
  static var dataWritingFileProtectionCompleteUnlessOpen: DataWritingOptions { get }
  @available(tvOS 5.0, *)
  static var dataWritingFileProtectionCompleteUntilFirstUserAuthentication: DataWritingOptions { get }
  @available(tvOS 4.0, *)
  static var dataWritingFileProtectionMask: DataWritingOptions { get }
  static var atomicWrite: DataWritingOptions { get }
}
@available(tvOS 4.0, *)
struct DataSearchOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var backwards: DataSearchOptions { get }
  static var anchored: DataSearchOptions { get }
}
@available(tvOS 7.0, *)
struct DataBase64EncodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var encoding64CharacterLineLength: DataBase64EncodingOptions { get }
  static var encoding76CharacterLineLength: DataBase64EncodingOptions { get }
  static var encodingEndLineWithCarriageReturn: DataBase64EncodingOptions { get }
  static var encodingEndLineWithLineFeed: DataBase64EncodingOptions { get }
}
@available(tvOS 7.0, *)
struct DataBase64DecodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ignoreUnknownCharacters: DataBase64DecodingOptions { get }
}
class Data : Object, Copying, MutableCopying, SecureCoding {
  var length: Int { get }
  var bytes: UnsafePointer<Void> { get }
  init()
  func copy(with zone: Zone = nil) -> AnyObject
  func mutableCopy(with zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension Data {
  var description: String { get }
  func getBytes(buffer: UnsafeMutablePointer<Void>, length: Int)
  func getBytes(buffer: UnsafeMutablePointer<Void>, range: NSRange)
  func isEqual(to other: Data) -> Bool
  func subdata(with range: NSRange) -> Data
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func write(to url: URL, atomically: Bool) -> Bool
  func write(toFile path: String, options writeOptionsMask: DataWritingOptions = []) throws
  func write(to url: URL, options writeOptionsMask: DataWritingOptions = []) throws
  @available(tvOS 4.0, *)
  func range(of dataToFind: Data, options mask: DataSearchOptions = [], range searchRange: NSRange) -> NSRange
  @available(tvOS 7.0, *)
  func enumerateByteRanges(block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension Data {
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(tvOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
}
extension Data {
  @available(tvOS 7.0, *)
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  @available(tvOS 7.0, *)
  func base64EncodedString(options: DataBase64EncodingOptions = []) -> String
  @available(tvOS 7.0, *)
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
  @available(tvOS 7.0, *)
  func base64EncodedData(options: DataBase64EncodingOptions = []) -> Data
}
extension Data {
  @available(tvOS, introduced=2.0, deprecated=8.0, message="This method is unsafe because it could potentially cause buffer overruns. Use -getBytes:length: instead.")
  func getBytes(buffer: UnsafeMutablePointer<Void>)
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use +dataWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  class func dataWithContents(ofMappedFile path: String) -> AnyObject?
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
class MutableData : Data {
  var mutableBytes: UnsafeMutablePointer<Void> { get }
  var length: Int
  init()
  init?(coder aDecoder: Coder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(tvOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
  @available(tvOS 7.0, *)
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  @available(tvOS 7.0, *)
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
extension MutableData {
  func appendBytes(bytes: UnsafePointer<Void>, length: Int)
  func append(other: Data)
  func increaseLength(by extraLength: Int)
  func replaceBytes(in range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytes(in range: NSRange)
  func setData(data: Data)
  func replaceBytes(in range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension MutableData {
  init?(capacity: Int)
  init?(length: Int)
}
@available(tvOS 4.0, *)
class PurgeableData : MutableData, DiscardableContent {
  init()
  init?(coder aDecoder: Coder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(tvOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
  @available(tvOS 7.0, *)
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  @available(tvOS 7.0, *)
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  init?(capacity: Int)
  init?(length: Int)
  @available(tvOS 4.0, *)
  func beginContentAccess() -> Bool
  @available(tvOS 4.0, *)
  func endContentAccess()
  @available(tvOS 4.0, *)
  func discardContentIfPossible()
  @available(tvOS 4.0, *)
  func isContentDiscarded() -> Bool
}
