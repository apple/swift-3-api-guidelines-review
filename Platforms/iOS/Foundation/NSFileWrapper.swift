
@available(iOS 4.0, *)
struct FileWrapperReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var immediate: FileWrapperReadingOptions { get }
  static var withoutMapping: FileWrapperReadingOptions { get }
}
@available(iOS 4.0, *)
struct FileWrapperWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var atomic: FileWrapperWritingOptions { get }
  static var withNameUpdating: FileWrapperWritingOptions { get }
}
@available(iOS 4.0, *)
class FileWrapper : Object, Coding {
  @available(iOS 4.0, *)
  init(url: URL, options: FileWrapperReadingOptions = []) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : FileWrapper])
  init(regularFileWithContents contents: Data)
  @available(iOS 4.0, *)
  init(symbolicLinkWithDestinationURL url: URL)
  init?(serializedRepresentation serializeRepresentation: Data)
  init?(coder inCoder: Coder)
  var isDirectory: Bool { get }
  var isRegularFile: Bool { get }
  var isSymbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  @available(iOS 4.0, *)
  func matchesContentsOf(url: URL) -> Bool
  @available(iOS 4.0, *)
  func readFrom(url: URL, options: FileWrapperReadingOptions = []) throws
  @available(iOS 4.0, *)
  func writeTo(url: URL, options: FileWrapperWritingOptions = [], originalContentsURL: URL?) throws
  @NSCopying var serializedRepresentation: Data? { get }
  func add(child: FileWrapper) -> String
  func addRegularFile(contents data: Data, preferredFilename fileName: String) -> String
  func remove(child: FileWrapper)
  var fileWrappers: [String : FileWrapper]? { get }
  func keyFor(child: FileWrapper) -> String?
  @NSCopying var regularFileContents: Data? { get }
  @available(iOS 4.0, *)
  @NSCopying var symbolicLinkDestinationURL: URL? { get }
  convenience init()
  @available(iOS 4.0, *)
  func encodeWith(aCoder: Coder)
}
