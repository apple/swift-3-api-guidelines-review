
@available(watchOS 2.0, *)
struct NSFileWrapperReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var immediate: NSFileWrapperReadingOptions { get }
  static var withoutMapping: NSFileWrapperReadingOptions { get }
}
@available(watchOS 2.0, *)
struct NSFileWrapperWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var atomic: NSFileWrapperWritingOptions { get }
  static var withNameUpdating: NSFileWrapperWritingOptions { get }
}
@available(watchOS 2.0, *)
class NSFileWrapper : NSObject, NSCoding {
  @available(watchOS 2.0, *)
  init(url: NSURL, options: NSFileWrapperReadingOptions = []) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : NSFileWrapper])
  init(regularFileWithContents contents: NSData)
  @available(watchOS 2.0, *)
  init(symbolicLinkWithDestinationURL url: NSURL)
  init?(serializedRepresentation serializeRepresentation: NSData)
  init?(coder inCoder: NSCoder)
  var isDirectory: Bool { get }
  var isRegularFile: Bool { get }
  var isSymbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  @available(watchOS 2.0, *)
  func matchesContentsOf(url: NSURL) -> Bool
  @available(watchOS 2.0, *)
  func read(from url: NSURL, options: NSFileWrapperReadingOptions = []) throws
  @available(watchOS 2.0, *)
  func write(to url: NSURL, options: NSFileWrapperWritingOptions = [], originalContentsURL: NSURL?) throws
  @NSCopying var serializedRepresentation: NSData? { get }
  func add(child: NSFileWrapper) -> String
  func addRegularFile(contents data: NSData, preferredFilename fileName: String) -> String
  func remove(child: NSFileWrapper)
  var fileWrappers: [String : NSFileWrapper]? { get }
  func key(for child: NSFileWrapper) -> String?
  @NSCopying var regularFileContents: NSData? { get }
  @available(watchOS 2.0, *)
  @NSCopying var symbolicLinkDestinationURL: NSURL? { get }
  convenience init()
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
}
