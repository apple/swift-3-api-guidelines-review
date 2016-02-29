
@available(OSX 10.6, *)
struct NSFileWrapperReadingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var immediate: NSFileWrapperReadingOptions { get }
  static var withoutMapping: NSFileWrapperReadingOptions { get }
}
@available(OSX 10.6, *)
struct NSFileWrapperWritingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var atomic: NSFileWrapperWritingOptions { get }
  static var withNameUpdating: NSFileWrapperWritingOptions { get }
}
@available(OSX 10.0, *)
class NSFileWrapper : NSObject, NSCoding {
  @available(OSX 10.6, *)
  init(url url: NSURL, options options: NSFileWrapperReadingOptions = []) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : NSFileWrapper])
  init(regularFileWithContents contents: NSData)
  @available(OSX 10.6, *)
  init(symbolicLinkWithDestinationURL url: NSURL)
  init?(serializedRepresentation serializeRepresentation: NSData)
  init?(coder inCoder: NSCoder)
  var isDirectory: Bool { get }
  var isRegularFile: Bool { get }
  var isSymbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  @available(OSX 10.6, *)
  func matchesContents(of url: NSURL) -> Bool
  @available(OSX 10.6, *)
  func read(from url: NSURL, options options: NSFileWrapperReadingOptions = []) throws
  @available(OSX 10.6, *)
  func write(to url: NSURL, options options: NSFileWrapperWritingOptions = [], originalContentsURL originalContentsURL: NSURL?) throws
  @NSCopying var serializedRepresentation: NSData? { get }
  func addFileWrapper(_ child: NSFileWrapper) -> String
  func addRegularFile(withContents data: NSData, preferredFilename fileName: String) -> String
  func removeFileWrapper(_ child: NSFileWrapper)
  var fileWrappers: [String : NSFileWrapper]? { get }
  func key(for child: NSFileWrapper) -> String?
  @NSCopying var regularFileContents: NSData? { get }
  @available(OSX 10.6, *)
  @NSCopying var symbolicLinkDestinationURL: NSURL? { get }
  @available(OSX 10.0, *)
  func encode(with aCoder: NSCoder)
}
extension NSFileWrapper {
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithURL:options:error: instead.")
  convenience init?(path path: String)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initSymbolicLinkWithDestinationURL: and -setPreferredFileName:, if necessary, instead.")
  convenience init(symbolicLinkWithDestination path: String)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -matchesContentsOfURL: instead.")
  func needsToBeUpdated(fromPath path: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -readFromURL:options:error: instead.")
  func update(fromPath path: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -writeToURL:options:originalContentsURL:error: instead.")
  func write(toFile path: String, atomically atomicFlag: Bool, updateFilenames updateFilenamesFlag: Bool) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Instantiate a new NSFileWrapper with -initWithURL:options:error:, send it -setPreferredFileName: if necessary, then use -addFileWrapper: instead.")
  func addFile(withPath path: String) -> String
  @available(OSX, introduced=10.0, deprecated=10.10, message="Instantiate a new NSFileWrapper with -initWithSymbolicLinkDestinationURL:, send it -setPreferredFileName: if necessary, then use -addFileWrapper: instead.")
  func addSymbolicLink(withDestination path: String, preferredFilename filename: String) -> String
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -symbolicLinkDestinationURL instead.")
  func symbolicLinkDestination() -> String
}
