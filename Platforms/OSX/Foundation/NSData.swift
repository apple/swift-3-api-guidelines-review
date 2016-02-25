
struct NSDataReadingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
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
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var DataWritingAtomic: NSDataWritingOptions { get }
  @available(OSX 10.8, *)
  static var DataWritingWithoutOverwriting: NSDataWritingOptions { get }
  static var AtomicWrite: NSDataWritingOptions { get }
}
@available(OSX 10.6, *)
struct NSDataSearchOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Backwards: NSDataSearchOptions { get }
  static var Anchored: NSDataSearchOptions { get }
}
@available(OSX 10.9, *)
struct NSDataBase64EncodingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Encoding64CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var Encoding76CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithCarriageReturn: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithLineFeed: NSDataBase64EncodingOptions { get }
}
@available(OSX 10.9, *)
struct NSDataBase64DecodingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var IgnoreUnknownCharacters: NSDataBase64DecodingOptions { get }
}
class NSData : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  var bytes: UnsafePointer<Void> { get }
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSData {
  func getBytes(_ buffer: UnsafeMutablePointer<Void>, length length: Int)
  func getBytes(_ buffer: UnsafeMutablePointer<Void>, range range: NSRange)
  func isEqualToData(_ other: NSData) -> Bool
  func subdataWithRange(_ range: NSRange) -> NSData
  func writeToFile(_ path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(_ url: NSURL, atomically atomically: Bool) -> Bool
  func writeToFile(_ path: String, options writeOptionsMask: NSDataWritingOptions) throws
  func writeToURL(_ url: NSURL, options writeOptionsMask: NSDataWritingOptions) throws
  @available(OSX 10.6, *)
  func rangeOfData(_ dataToFind: NSData, options mask: NSDataSearchOptions, range searchRange: NSRange) -> NSRange
  @available(OSX 10.9, *)
  func enumerateByteRangesUsingBlock(_ block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSData {
  init(bytes bytes: UnsafePointer<Void>, length length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length length: Int, freeWhenDone b: Bool)
  @available(OSX 10.9, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length length: Int, deallocator deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data data: NSData)
}
extension NSData {
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options options: NSDataBase64DecodingOptions)
  @available(OSX 10.9, *)
  func base64EncodedStringWithOptions(_ options: NSDataBase64EncodingOptions) -> String
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: NSData, options options: NSDataBase64DecodingOptions)
  @available(OSX 10.9, *)
  func base64EncodedDataWithOptions(_ options: NSDataBase64EncodingOptions) -> NSData
}
extension NSData {
  @available(OSX, introduced=10.0, deprecated=10.10, message="This method is unsafe because it could potentially cause buffer overruns. Use -getBytes:length: instead.")
  func getBytes(_ buffer: UnsafeMutablePointer<Void>)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +dataWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  class func dataWithContentsOfMappedFile(_ path: String) -> AnyObject?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
class NSMutableData : NSData {
  var mutableBytes: UnsafeMutablePointer<Void> { get }
}
extension NSMutableData {
  func appendBytes(_ bytes: UnsafePointer<Void>, length length: Int)
  func appendData(_ other: NSData)
  func increaseLengthBy(_ extraLength: Int)
  func replaceBytesInRange(_ range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytesInRange(_ range: NSRange)
  func setData(_ data: NSData)
  func replaceBytesInRange(_ range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension NSMutableData {
  init?(capacity capacity: Int)
  init?(length length: Int)
}
@available(OSX 10.6, *)
class NSPurgeableData : NSMutableData, NSDiscardableContent {
  @available(OSX 10.6, *)
  func beginContentAccess() -> Bool
  @available(OSX 10.6, *)
  func endContentAccess()
  @available(OSX 10.6, *)
  func discardContentIfPossible()
  @available(OSX 10.6, *)
  func isContentDiscarded() -> Bool
}
