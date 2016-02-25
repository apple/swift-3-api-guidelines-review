
struct NSDataReadingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var dataReadingMappedIfSafe: NSDataReadingOptions { get }
  static var dataReadingUncached: NSDataReadingOptions { get }
  @available(iOS 5.0, *)
  static var dataReadingMappedAlways: NSDataReadingOptions { get }
  static var dataReadingMapped: NSDataReadingOptions { get }
  static var mappedRead: NSDataReadingOptions { get }
  static var uncachedRead: NSDataReadingOptions { get }
}
struct NSDataWritingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var dataWritingAtomic: NSDataWritingOptions { get }
  @available(iOS 6.0, *)
  static var dataWritingWithoutOverwriting: NSDataWritingOptions { get }
  @available(iOS 4.0, *)
  static var dataWritingFileProtectionNone: NSDataWritingOptions { get }
  @available(iOS 4.0, *)
  static var dataWritingFileProtectionComplete: NSDataWritingOptions { get }
  @available(iOS 5.0, *)
  static var dataWritingFileProtectionCompleteUnlessOpen: NSDataWritingOptions { get }
  @available(iOS 5.0, *)
  static var dataWritingFileProtectionCompleteUntilFirstUserAuthentication: NSDataWritingOptions { get }
  @available(iOS 4.0, *)
  static var dataWritingFileProtectionMask: NSDataWritingOptions { get }
  static var atomicWrite: NSDataWritingOptions { get }
}
@available(iOS 4.0, *)
struct NSDataSearchOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var backwards: NSDataSearchOptions { get }
  static var anchored: NSDataSearchOptions { get }
}
@available(iOS 7.0, *)
struct NSDataBase64EncodingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var encoding64CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var encoding76CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var encodingEndLineWithCarriageReturn: NSDataBase64EncodingOptions { get }
  static var encodingEndLineWithLineFeed: NSDataBase64EncodingOptions { get }
}
@available(iOS 7.0, *)
struct NSDataBase64DecodingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var ignoreUnknownCharacters: NSDataBase64DecodingOptions { get }
}
class NSData : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  var bytes: UnsafePointer<Void> { get }
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSData {
  func getBytes(_ buffer: UnsafeMutablePointer<Void>, length length: Int)
  func getBytes(_ buffer: UnsafeMutablePointer<Void>, range range: NSRange)
  func isEqual(to other: NSData) -> Bool
  func subdata(with range: NSRange) -> NSData
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func write(to url: NSURL, atomically atomically: Bool) -> Bool
  func write(toFile path: String, options writeOptionsMask: NSDataWritingOptions = []) throws
  func write(to url: NSURL, options writeOptionsMask: NSDataWritingOptions = []) throws
  @available(iOS 4.0, *)
  func range(of dataToFind: NSData, options mask: NSDataSearchOptions = [], range searchRange: NSRange) -> NSRange
  @available(iOS 7.0, *)
  func enumerateByteRanges(_ block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSData {
  init(bytes bytes: UnsafePointer<Void>, length length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length length: Int, freeWhenDone b: Bool)
  @available(iOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length length: Int, deallocator deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions = []) throws
  init(contentsOf url: NSURL, options readOptionsMask: NSDataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: NSURL)
  init(data data: NSData)
}
extension NSData {
  @available(iOS 7.0, *)
  init?(base64EncodedString base64String: String, options options: NSDataBase64DecodingOptions = [])
  @available(iOS 7.0, *)
  func base64EncodedString(_ options: NSDataBase64EncodingOptions = []) -> String
  @available(iOS 7.0, *)
  init?(base64EncodedData base64Data: NSData, options options: NSDataBase64DecodingOptions = [])
  @available(iOS 7.0, *)
  func base64EncodedData(_ options: NSDataBase64EncodingOptions = []) -> NSData
}
extension NSData {
  @available(iOS, introduced=2.0, deprecated=8.0, message="This method is unsafe because it could potentially cause buffer overruns. Use -getBytes:length: instead.")
  func getBytes(_ buffer: UnsafeMutablePointer<Void>)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use +dataWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  class func data(withContentsOfMappedFile path: String) -> AnyObject?
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
class NSMutableData : NSData {
  var mutableBytes: UnsafeMutablePointer<Void> { get }
}
extension NSMutableData {
  func appendBytes(_ bytes: UnsafePointer<Void>, length length: Int)
  func append(_ other: NSData)
  func increaseLength(by extraLength: Int)
  func replaceBytes(in range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytes(in range: NSRange)
  func setData(_ data: NSData)
  func replaceBytes(in range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension NSMutableData {
  init?(capacity capacity: Int)
  init?(length length: Int)
}
@available(iOS 4.0, *)
class NSPurgeableData : NSMutableData, NSDiscardableContent {
  @available(iOS 4.0, *)
  func beginAccess() -> Bool
  @available(iOS 4.0, *)
  func endAccess()
  @available(iOS 4.0, *)
  func discardContentIfPossible()
  @available(iOS 4.0, *)
  func isContentDiscarded() -> Bool
}
