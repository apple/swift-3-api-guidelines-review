
struct NSDataReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataReadingMappedIfSafe: NSDataReadingOptions { get }
  static var DataReadingUncached: NSDataReadingOptions { get }
  @available(OSX 10.7, *)
  static var DataReadingMappedAlways: NSDataReadingOptions { get }
  static var DataReadingMapped: NSDataReadingOptions { get }
  static var MappedRead: NSDataReadingOptions { get }
  static var UncachedRead: NSDataReadingOptions { get }
}
struct NSDataWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataWritingAtomic: NSDataWritingOptions { get }
  @available(OSX 10.8, *)
  static var DataWritingWithoutOverwriting: NSDataWritingOptions { get }
  static var AtomicWrite: NSDataWritingOptions { get }
}
@available(OSX 10.6, *)
struct NSDataSearchOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Backwards: NSDataSearchOptions { get }
  static var Anchored: NSDataSearchOptions { get }
}
@available(OSX 10.9, *)
struct NSDataBase64EncodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Encoding64CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var Encoding76CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithCarriageReturn: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithLineFeed: NSDataBase64EncodingOptions { get }
}
@available(OSX 10.9, *)
struct NSDataBase64DecodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var IgnoreUnknownCharacters: NSDataBase64DecodingOptions { get }
}
class NSData : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  var bytes: UnsafePointer<Void> { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSData {
  var description: String { get }
  func getBytes(buffer: UnsafeMutablePointer<Void>, length: Int)
  func getBytes(buffer: UnsafeMutablePointer<Void>, range: NSRange)
  func isEqualToData(other: NSData) -> Bool
  func subdataWithRange(range: NSRange) -> NSData
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(url: NSURL, atomically: Bool) -> Bool
  func writeToFile(path: String, options writeOptionsMask: NSDataWritingOptions) throws
  func writeToURL(url: NSURL, options writeOptionsMask: NSDataWritingOptions) throws
  @available(OSX 10.6, *)
  func rangeOfData(dataToFind: NSData, options mask: NSDataSearchOptions, range searchRange: NSRange) -> NSRange
  @available(OSX 10.9, *)
  func enumerateByteRangesUsingBlock(block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSData {
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
extension NSData {
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  @available(OSX 10.9, *)
  func base64EncodedStringWithOptions(options: NSDataBase64EncodingOptions) -> String
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  @available(OSX 10.9, *)
  func base64EncodedDataWithOptions(options: NSDataBase64EncodingOptions) -> NSData
}
extension NSData {
  @available(OSX, introduced=10.0, deprecated=10.10, message="This method is unsafe because it could potentially cause buffer overruns. Use -getBytes:length: instead.")
  func getBytes(buffer: UnsafeMutablePointer<Void>)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +dataWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  class func dataWithContentsOfMappedFile(path: String) -> AnyObject?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
class NSMutableData : NSData {
  var mutableBytes: UnsafeMutablePointer<Void> { get }
  var length: Int
  init()
  init?(coder aDecoder: NSCoder)
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
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
extension NSMutableData {
  func appendBytes(bytes: UnsafePointer<Void>, length: Int)
  func appendData(other: NSData)
  func increaseLengthBy(extraLength: Int)
  func replaceBytesInRange(range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytesInRange(range: NSRange)
  func setData(data: NSData)
  func replaceBytesInRange(range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension NSMutableData {
  init?(capacity: Int)
  init?(length: Int)
}
@available(OSX 10.6, *)
class NSPurgeableData : NSMutableData, NSDiscardableContent {
  init()
  init?(coder aDecoder: NSCoder)
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
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  init?(capacity: Int)
  init?(length: Int)
  @available(OSX 10.6, *)
  func beginContentAccess() -> Bool
  @available(OSX 10.6, *)
  func endContentAccess()
  @available(OSX 10.6, *)
  func discardContentIfPossible()
  @available(OSX 10.6, *)
  func isContentDiscarded() -> Bool
}
