
class NSFileHandle : NSObject, NSSecureCoding {
  @NSCopying var availableData: NSData { get }
  func readDataToEndOfFile() -> NSData
  func readData(ofLength length: Int) -> NSData
  func write(_ data: NSData)
  var offsetInFile: UInt64 { get }
  func seekToEndOfFile() -> UInt64
  func seek(toFileOffset offset: UInt64)
  func truncateFile(atOffset offset: UInt64)
  func synchronizeFile()
  func closeFile()
  init(fileDescriptor fd: Int32, closeOnDealloc closeopt: Bool)
  init?(coder coder: NSCoder)
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
}
extension NSFileHandle {
  class func withStandardInput() -> NSFileHandle
  class func withStandardOutput() -> NSFileHandle
  class func withStandardError() -> NSFileHandle
  class func withNullDevice() -> NSFileHandle
  convenience init?(forReadingAtPath path: String)
  convenience init?(forWritingAtPath path: String)
  convenience init?(forUpdatingAtPath path: String)
  @available(iOS 4.0, *)
  convenience init(forReadingFrom url: NSURL) throws
  @available(iOS 4.0, *)
  convenience init(forWritingTo url: NSURL) throws
  @available(iOS 4.0, *)
  convenience init(forUpdating url: NSURL) throws
}
let NSFileHandleOperationException: String
let NSFileHandleReadCompletionNotification: String
let NSFileHandleReadToEndOfFileCompletionNotification: String
let NSFileHandleConnectionAcceptedNotification: String
let NSFileHandleDataAvailableNotification: String
let NSFileHandleNotificationDataItem: String
let NSFileHandleNotificationFileHandleItem: String
extension NSFileHandle {
  func readInBackgroundAndNotify(forModes modes: [String]?)
  func readInBackgroundAndNotify()
  func readToEndOfFileInBackgroundAndNotify(forModes modes: [String]?)
  func readToEndOfFileInBackgroundAndNotify()
  func acceptConnectionInBackgroundAndNotify(forModes modes: [String]?)
  func acceptConnectionInBackgroundAndNotify()
  func waitForDataInBackgroundAndNotify(forModes modes: [String]?)
  func waitForDataInBackgroundAndNotify()
  @available(iOS 5.0, *)
  var readabilityHandler: ((NSFileHandle) -> Void)?
  @available(iOS 5.0, *)
  var writeabilityHandler: ((NSFileHandle) -> Void)?
}
extension NSFileHandle {
  convenience init(fileDescriptor fd: Int32)
  var fileDescriptor: Int32 { get }
}
class NSPipe : NSObject {
  var fileHandleForReading: NSFileHandle { get }
  var fileHandleForWriting: NSFileHandle { get }
}
