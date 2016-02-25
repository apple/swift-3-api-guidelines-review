
@available(watchOS 2.0, *)
struct NSFileWrapperReadingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Immediate: NSFileWrapperReadingOptions { get }
  static var WithoutMapping: NSFileWrapperReadingOptions { get }
}
@available(watchOS 2.0, *)
struct NSFileWrapperWritingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Atomic: NSFileWrapperWritingOptions { get }
  static var WithNameUpdating: NSFileWrapperWritingOptions { get }
}
@available(watchOS 2.0, *)
class NSFileWrapper : NSObject, NSCoding {
  @available(watchOS 2.0, *)
  init(URL url: NSURL, options options: NSFileWrapperReadingOptions) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : NSFileWrapper])
  init(regularFileWithContents contents: NSData)
  @available(watchOS 2.0, *)
  init(symbolicLinkWithDestinationURL url: NSURL)
  init?(serializedRepresentation serializeRepresentation: NSData)
  init?(coder inCoder: NSCoder)
  var directory: Bool { get }
  var regularFile: Bool { get }
  var symbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  @available(watchOS 2.0, *)
  func matchesContentsOfURL(_ url: NSURL) -> Bool
  @available(watchOS 2.0, *)
  func readFromURL(_ url: NSURL, options options: NSFileWrapperReadingOptions) throws
  @available(watchOS 2.0, *)
  func writeToURL(_ url: NSURL, options options: NSFileWrapperWritingOptions, originalContentsURL originalContentsURL: NSURL?) throws
  @NSCopying var serializedRepresentation: NSData? { get }
  func addFileWrapper(_ child: NSFileWrapper) -> String
  func addRegularFileWithContents(_ data: NSData, preferredFilename fileName: String) -> String
  func removeFileWrapper(_ child: NSFileWrapper)
  var fileWrappers: [String : NSFileWrapper]? { get }
  func keyForFileWrapper(_ child: NSFileWrapper) -> String?
  @NSCopying var regularFileContents: NSData? { get }
  @available(watchOS 2.0, *)
  @NSCopying var symbolicLinkDestinationURL: NSURL? { get }
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
