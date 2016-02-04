
@available(OSX 10.6, *)
struct NSFileWrapperReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immediate: NSFileWrapperReadingOptions { get }
  static var WithoutMapping: NSFileWrapperReadingOptions { get }
}
@available(OSX 10.6, *)
struct NSFileWrapperWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Atomic: NSFileWrapperWritingOptions { get }
  static var WithNameUpdating: NSFileWrapperWritingOptions { get }
}
@available(OSX 10.0, *)
class NSFileWrapper : NSObject, NSCoding {
  @available(OSX 10.6, *)
  init(URL url: NSURL, options: NSFileWrapperReadingOptions) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : NSFileWrapper])
  init(regularFileWithContents contents: NSData)
  @available(OSX 10.6, *)
  init(symbolicLinkWithDestinationURL url: NSURL)
  init?(serializedRepresentation serializeRepresentation: NSData)
  init?(coder inCoder: NSCoder)
  var directory: Bool { get }
  var regularFile: Bool { get }
  var symbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  @available(OSX 10.6, *)
  func matchesContentsOfURL(url: NSURL) -> Bool
  @available(OSX 10.6, *)
  func readFromURL(url: NSURL, options: NSFileWrapperReadingOptions) throws
  @available(OSX 10.6, *)
  func writeToURL(url: NSURL, options: NSFileWrapperWritingOptions, originalContentsURL: NSURL?) throws
  @NSCopying var serializedRepresentation: NSData? { get }
  func addFileWrapper(child: NSFileWrapper) -> String
  func addRegularFileWithContents(data: NSData, preferredFilename fileName: String) -> String
  func removeFileWrapper(child: NSFileWrapper)
  var fileWrappers: [String : NSFileWrapper]? { get }
  func keyForFileWrapper(child: NSFileWrapper) -> String?
  @NSCopying var regularFileContents: NSData? { get }
  @available(OSX 10.6, *)
  @NSCopying var symbolicLinkDestinationURL: NSURL? { get }
  convenience init()
  @available(OSX 10.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSFileWrapper {
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithURL:options:error: instead.")
  convenience init?(path: String)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initSymbolicLinkWithDestinationURL: and -setPreferredFileName:, if necessary, instead.")
  convenience init(symbolicLinkWithDestination path: String)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -matchesContentsOfURL: instead.")
  func needsToBeUpdatedFromPath(path: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -readFromURL:options:error: instead.")
  func updateFromPath(path: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -writeToURL:options:originalContentsURL:error: instead.")
  func writeToFile(path: String, atomically atomicFlag: Bool, updateFilenames updateFilenamesFlag: Bool) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Instantiate a new NSFileWrapper with -initWithURL:options:error:, send it -setPreferredFileName: if necessary, then use -addFileWrapper: instead.")
  func addFileWithPath(path: String) -> String
  @available(OSX, introduced=10.0, deprecated=10.10, message="Instantiate a new NSFileWrapper with -initWithSymbolicLinkDestinationURL:, send it -setPreferredFileName: if necessary, then use -addFileWrapper: instead.")
  func addSymbolicLinkWithDestination(path: String, preferredFilename filename: String) -> String
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -symbolicLinkDestinationURL instead.")
  func symbolicLinkDestination() -> String
}
