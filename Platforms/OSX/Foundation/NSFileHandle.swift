
class FileHandle : Object, SecureCoding {
  @NSCopying var availableData: Data { get }
  func readDataToEndOfFile() -> Data
  func readDataOfLength(length: Int) -> Data
  func write(data: Data)
  var offsetInFile: UInt64 { get }
  func seekToEndOfFile() -> UInt64
  func seekToFileOffset(offset: UInt64)
  func truncateFileAtOffset(offset: UInt64)
  func synchronizeFile()
  func closeFile()
  init(fileDescriptor fd: Int32, closeOnDealloc closeopt: Bool)
  init?(coder: Coder)
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
extension FileHandle {
  class func withStandardInput() -> FileHandle
  class func withStandardOutput() -> FileHandle
  class func withStandardError() -> FileHandle
  class func withNullDevice() -> FileHandle
  convenience init?(forReadingAtPath path: String)
  convenience init?(forWritingAtPath path: String)
  convenience init?(forUpdatingAtPath path: String)
  @available(OSX 10.6, *)
  convenience init(forReadingFrom url: URL) throws
  @available(OSX 10.6, *)
  convenience init(forWritingTo url: URL) throws
  @available(OSX 10.6, *)
  convenience init(forUpdatingURL url: URL) throws
}
let fileHandleOperationException: String
let fileHandleReadCompletionNotification: String
let fileHandleReadToEndOfFileCompletionNotification: String
let fileHandleConnectionAcceptedNotification: String
let fileHandleDataAvailableNotification: String
let fileHandleNotificationDataItem: String
let fileHandleNotificationFileHandleItem: String
extension FileHandle {
  func readInBackgroundAndNotifyForModes(modes: [String]?)
  func readInBackgroundAndNotify()
  func readToEndOfFileInBackgroundAndNotifyForModes(modes: [String]?)
  func readToEndOfFileInBackgroundAndNotify()
  func acceptConnectionInBackgroundAndNotifyForModes(modes: [String]?)
  func acceptConnectionInBackgroundAndNotify()
  func waitForDataInBackgroundAndNotifyForModes(modes: [String]?)
  func waitForDataInBackgroundAndNotify()
  @available(OSX 10.7, *)
  var readabilityHandler: ((FileHandle) -> Void)?
  @available(OSX 10.7, *)
  var writeabilityHandler: ((FileHandle) -> Void)?
}
extension FileHandle {
  convenience init(fileDescriptor fd: Int32)
  var fileDescriptor: Int32 { get }
}
class Pipe : Object {
  var fileHandleForReading: FileHandle { get }
  var fileHandleForWriting: FileHandle { get }
  init()
}
