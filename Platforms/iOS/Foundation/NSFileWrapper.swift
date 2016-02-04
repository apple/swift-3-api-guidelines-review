
@available(iOS 4.0, *)
struct NSFileWrapperReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immediate: NSFileWrapperReadingOptions { get }
  static var WithoutMapping: NSFileWrapperReadingOptions { get }
}
@available(iOS 4.0, *)
struct NSFileWrapperWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Atomic: NSFileWrapperWritingOptions { get }
  static var WithNameUpdating: NSFileWrapperWritingOptions { get }
}
@available(iOS 4.0, *)
class NSFileWrapper : NSObject, NSCoding {
  @available(iOS 4.0, *)
  init(URL url: NSURL, options: NSFileWrapperReadingOptions) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : NSFileWrapper])
  init(regularFileWithContents contents: NSData)
  @available(iOS 4.0, *)
  init(symbolicLinkWithDestinationURL url: NSURL)
  init?(serializedRepresentation serializeRepresentation: NSData)
  init?(coder inCoder: NSCoder)
  var directory: Bool { get }
  var regularFile: Bool { get }
  var symbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  @available(iOS 4.0, *)
  func matchesContentsOfURL(url: NSURL) -> Bool
  @available(iOS 4.0, *)
  func readFromURL(url: NSURL, options: NSFileWrapperReadingOptions) throws
  @available(iOS 4.0, *)
  func writeToURL(url: NSURL, options: NSFileWrapperWritingOptions, originalContentsURL: NSURL?) throws
  @NSCopying var serializedRepresentation: NSData? { get }
  func addFileWrapper(child: NSFileWrapper) -> String
  func addRegularFileWithContents(data: NSData, preferredFilename fileName: String) -> String
  func removeFileWrapper(child: NSFileWrapper)
  var fileWrappers: [String : NSFileWrapper]? { get }
  func keyForFileWrapper(child: NSFileWrapper) -> String?
  @NSCopying var regularFileContents: NSData? { get }
  @available(iOS 4.0, *)
  @NSCopying var symbolicLinkDestinationURL: NSURL? { get }
  convenience init()
  @available(iOS 4.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
