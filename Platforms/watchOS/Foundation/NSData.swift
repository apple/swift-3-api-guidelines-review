
struct NSDataReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var dataReadingMappedIfSafe: NSDataReadingOptions { get }
  static var dataReadingUncached: NSDataReadingOptions { get }
  @available(watchOS 2.0, *)
  static var dataReadingMappedAlways: NSDataReadingOptions { get }
  static var dataReadingMapped: NSDataReadingOptions { get }
  static var mappedRead: NSDataReadingOptions { get }
  static var uncachedRead: NSDataReadingOptions { get }
}
struct NSDataWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var dataWritingAtomic: NSDataWritingOptions { get }
  @available(watchOS 2.0, *)
  static var dataWritingWithoutOverwriting: NSDataWritingOptions { get }
  @available(watchOS 2.0, *)
  static var dataWritingFileProtectionNone: NSDataWritingOptions { get }
  @available(watchOS 2.0, *)
  static var dataWritingFileProtectionComplete: NSDataWritingOptions { get }
  @available(watchOS 2.0, *)
  static var dataWritingFileProtectionCompleteUnlessOpen: NSDataWritingOptions { get }
  @available(watchOS 2.0, *)
  static var dataWritingFileProtectionCompleteUntilFirstUserAuthentication: NSDataWritingOptions { get }
  @available(watchOS 2.0, *)
  static var dataWritingFileProtectionMask: NSDataWritingOptions { get }
  static var atomicWrite: NSDataWritingOptions { get }
}
@available(watchOS 2.0, *)
struct NSDataSearchOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var backwards: NSDataSearchOptions { get }
  static var anchored: NSDataSearchOptions { get }
}
@available(watchOS 2.0, *)
struct NSDataBase64EncodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var encoding64CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var encoding76CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var encodingEndLineWithCarriageReturn: NSDataBase64EncodingOptions { get }
  static var encodingEndLineWithLineFeed: NSDataBase64EncodingOptions { get }
}
@available(watchOS 2.0, *)
struct NSDataBase64DecodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ignoreUnknownCharacters: NSDataBase64DecodingOptions { get }
}
class NSData : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  var bytes: UnsafePointer<Void> { get }
  init()
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSData {
  var description: String { get }
  func getBytes(buffer: UnsafeMutablePointer<Void>, length: Int)
  func getBytes(buffer: UnsafeMutablePointer<Void>, range: NSRange)
  func isEqual(to other: NSData) -> Bool
  func subdata(with range: NSRange) -> NSData
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func write(to url: NSURL, atomically: Bool) -> Bool
  func write(toFile path: String, options writeOptionsMask: NSDataWritingOptions = []) throws
  func write(to url: NSURL, options writeOptionsMask: NSDataWritingOptions = []) throws
  @available(watchOS 2.0, *)
  func rangeOf(dataToFind: NSData, options mask: NSDataSearchOptions = [], range searchRange: NSRange) -> NSRange
  @available(watchOS 2.0, *)
  func enumerateByteRanges(block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSData {
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(watchOS 2.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions = []) throws
  init(contentsOf url: NSURL, options readOptionsMask: NSDataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: NSURL)
  init(data: NSData)
}
extension NSData {
  @available(watchOS 2.0, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions = [])
  @available(watchOS 2.0, *)
  func base64EncodedString(options: NSDataBase64EncodingOptions = []) -> String
  @available(watchOS 2.0, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions = [])
  @available(watchOS 2.0, *)
  func base64EncodedData(options: NSDataBase64EncodingOptions = []) -> NSData
}
extension NSData {
  @available(watchOS, introduced=2.0, deprecated=2.0, message="This method is unsafe because it could potentially cause buffer overruns. Use -getBytes:length: instead.")
  func getBytes(buffer: UnsafeMutablePointer<Void>)
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use +dataWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  class func data(withContentsOfMappedFile path: String) -> AnyObject?
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  init?(base64Encoding base64String: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func base64Encoding() -> String
}
class NSMutableData : NSData {
  var mutableBytes: UnsafeMutablePointer<Void> { get }
  var length: Int
  init()
  init?(coder aDecoder: NSCoder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(watchOS 2.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions = []) throws
  init(contentsOf url: NSURL, options readOptionsMask: NSDataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: NSURL)
  init(data: NSData)
  @available(watchOS 2.0, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions = [])
  @available(watchOS 2.0, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions = [])
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  init?(base64Encoding base64String: String)
}
extension NSMutableData {
  func appendBytes(bytes: UnsafePointer<Void>, length: Int)
  func append(other: NSData)
  func increaseLength(by extraLength: Int)
  func replaceBytes(in range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytes(in range: NSRange)
  func setData(data: NSData)
  func replaceBytes(in range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension NSMutableData {
  init?(capacity: Int)
  init?(length: Int)
}
@available(watchOS 2.0, *)
class NSPurgeableData : NSMutableData, NSDiscardableContent {
  init()
  init?(coder aDecoder: NSCoder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(watchOS 2.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions = []) throws
  init(contentsOf url: NSURL, options readOptionsMask: NSDataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: NSURL)
  init(data: NSData)
  @available(watchOS 2.0, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions = [])
  @available(watchOS 2.0, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions = [])
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  init?(base64Encoding base64String: String)
  init?(capacity: Int)
  init?(length: Int)
  @available(watchOS 2.0, *)
  func beginAccess() -> Bool
  @available(watchOS 2.0, *)
  func endAccess()
  @available(watchOS 2.0, *)
  func discardContentIfPossible()
  @available(watchOS 2.0, *)
  func isContentDiscarded() -> Bool
}
