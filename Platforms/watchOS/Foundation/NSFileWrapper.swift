
@available(watchOS 2.0, *)
struct FileWrapperReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immediate: FileWrapperReadingOptions { get }
  static var WithoutMapping: FileWrapperReadingOptions { get }
}
@available(watchOS 2.0, *)
struct FileWrapperWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Atomic: FileWrapperWritingOptions { get }
  static var WithNameUpdating: FileWrapperWritingOptions { get }
}
@available(watchOS 2.0, *)
class FileWrapper : Object, Coding {
  @available(watchOS 2.0, *)
  init(url: URL, options: FileWrapperReadingOptions = []) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : FileWrapper])
  init(regularFileWithContents contents: Data)
  @available(watchOS 2.0, *)
  init(symbolicLinkWithDestinationURL url: URL)
  init?(serializedRepresentation serializeRepresentation: Data)
  init?(coder inCoder: Coder)
  var isDirectory: Bool { get }
  var isRegularFile: Bool { get }
  var isSymbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  @available(watchOS 2.0, *)
  func matchesContentsOf(url: URL) -> Bool
  @available(watchOS 2.0, *)
  func readFrom(url: URL, options: FileWrapperReadingOptions = []) throws
  @available(watchOS 2.0, *)
  func writeTo(url: URL, options: FileWrapperWritingOptions = [], originalContentsURL: URL?) throws
  @NSCopying var serializedRepresentation: Data? { get }
  func add(child: FileWrapper) -> String
  func addRegularFile(contents data: Data, preferredFilename fileName: String) -> String
  func remove(child: FileWrapper)
  var fileWrappers: [String : FileWrapper]? { get }
  func keyFor(child: FileWrapper) -> String?
  @NSCopying var regularFileContents: Data? { get }
  @available(watchOS 2.0, *)
  @NSCopying var symbolicLinkDestinationURL: URL? { get }
  convenience init()
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
}
