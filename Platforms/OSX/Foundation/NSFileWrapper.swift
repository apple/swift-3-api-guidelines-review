
@available(OSX 10.6, *)
struct FileWrapperReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var immediate: FileWrapperReadingOptions { get }
  static var withoutMapping: FileWrapperReadingOptions { get }
}
@available(OSX 10.6, *)
struct FileWrapperWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var atomic: FileWrapperWritingOptions { get }
  static var withNameUpdating: FileWrapperWritingOptions { get }
}
@available(OSX 10.0, *)
class FileWrapper : Object, Coding {
  @available(OSX 10.6, *)
  init(url: URL, options: FileWrapperReadingOptions = []) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : FileWrapper])
  init(regularFileWithContents contents: Data)
  @available(OSX 10.6, *)
  init(symbolicLinkWithDestinationURL url: URL)
  init?(serializedRepresentation serializeRepresentation: Data)
  init?(coder inCoder: Coder)
  var isDirectory: Bool { get }
  var isRegularFile: Bool { get }
  var isSymbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  @available(OSX 10.6, *)
  func matchesContents(of url: URL) -> Bool
  @available(OSX 10.6, *)
  func read(from url: URL, options: FileWrapperReadingOptions = []) throws
  @available(OSX 10.6, *)
  func write(to url: URL, options: FileWrapperWritingOptions = [], originalContentsURL: URL?) throws
  @NSCopying var serializedRepresentation: Data? { get }
  func add(child: FileWrapper) -> String
  func addRegularFile(contents data: Data, preferredFilename fileName: String) -> String
  func remove(child: FileWrapper)
  var fileWrappers: [String : FileWrapper]? { get }
  func key(forFileWrapper child: FileWrapper) -> String?
  @NSCopying var regularFileContents: Data? { get }
  @available(OSX 10.6, *)
  @NSCopying var symbolicLinkDestinationURL: URL? { get }
  convenience init()
  @available(OSX 10.0, *)
  func encodeWith(aCoder: Coder)
}
extension FileWrapper {
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithURL:options:error: instead.")
  convenience init?(path: String)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initSymbolicLinkWithDestinationURL: and -setPreferredFileName:, if necessary, instead.")
  convenience init(symbolicLinkWithDestination path: String)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -matchesContentsOfURL: instead.")
  func needsToBeUpdated(fromPath path: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -readFromURL:options:error: instead.")
  func update(fromPath path: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -writeToURL:options:originalContentsURL:error: instead.")
  func write(toFile path: String, atomically atomicFlag: Bool, updateFilenames updateFilenamesFlag: Bool) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Instantiate a new NSFileWrapper with -initWithURL:options:error:, send it -setPreferredFileName: if necessary, then use -addFileWrapper: instead.")
  func addFile(path path: String) -> String
  @available(OSX, introduced=10.0, deprecated=10.10, message="Instantiate a new NSFileWrapper with -initWithSymbolicLinkDestinationURL:, send it -setPreferredFileName: if necessary, then use -addFileWrapper: instead.")
  func addSymbolicLink(destination path: String, preferredFilename filename: String) -> String
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -symbolicLinkDestinationURL instead.")
  func symbolicLinkDestination() -> String
}
