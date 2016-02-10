
class FileHandle : Object, SecureCoding {
  @NSCopying var availableData: Data { get }
  func readDataToEndOfFile() -> Data
  func readData(ofLength length: Int) -> Data
  func write(data: Data)
  var offsetInFile: UInt64 { get }
  func seekToEndOfFile() -> UInt64
  func seek(toFileOffset offset: UInt64)
  func truncateFile(atOffset offset: UInt64)
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
  @available(watchOS 2.0, *)
  convenience init(forReadingFrom url: URL) throws
  @available(watchOS 2.0, *)
  convenience init(forWritingTo url: URL) throws
  @available(watchOS 2.0, *)
  convenience init(forUpdatingURL url: URL) throws
}
let fileHandleOperationException: String
let fileHandleReadCompletionNotification: String
let fileHandleReadToEndOfFileCompletionNotification: String
let fileHandleConnectionAcceptedNotification: String
let fileHandleDataAvailableNotification: String
let fileHandleNotificationDataItem: String
let fileHandleNotificationFileHandleItem: String
@available(watchOS, introduced=2.0, deprecated=2.0)
let fileHandleNotificationMonitorModes: String
extension FileHandle {
  func readInBackgroundAndNotify(forModes modes: [String]?)
  func readInBackgroundAndNotify()
  func readToEndOfFileInBackgroundAndNotify(forModes modes: [String]?)
  func readToEndOfFileInBackgroundAndNotify()
  func acceptConnectionInBackgroundAndNotify(forModes modes: [String]?)
  func acceptConnectionInBackgroundAndNotify()
  func waitForDataInBackgroundAndNotify(forModes modes: [String]?)
  func waitForDataInBackgroundAndNotify()
  @available(watchOS 2.0, *)
  var readabilityHandler: ((FileHandle) -> Void)?
  @available(watchOS 2.0, *)
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
