
class NSFileHandle : NSObject, NSSecureCoding {
  @NSCopying var availableData: NSData { get }
  func readDataToEndOfFile() -> NSData
  func readDataOfLength(_ length: Int) -> NSData
  func writeData(_ data: NSData)
  var offsetInFile: UInt64 { get }
  func seekToEndOfFile() -> UInt64
  func seekToFileOffset(_ offset: UInt64)
  func truncateFileAtOffset(_ offset: UInt64)
  func synchronizeFile()
  func closeFile()
  init(fileDescriptor fd: Int32, closeOnDealloc closeopt: Bool)
  init?(coder coder: NSCoder)
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
}
extension NSFileHandle {
  class func fileHandleWithStandardInput() -> NSFileHandle
  class func fileHandleWithStandardOutput() -> NSFileHandle
  class func fileHandleWithStandardError() -> NSFileHandle
  class func fileHandleWithNullDevice() -> NSFileHandle
  convenience init?(forReadingAtPath path: String)
  convenience init?(forWritingAtPath path: String)
  convenience init?(forUpdatingAtPath path: String)
  @available(tvOS 4.0, *)
  convenience init(forReadingFromURL url: NSURL) throws
  @available(tvOS 4.0, *)
  convenience init(forWritingToURL url: NSURL) throws
  @available(tvOS 4.0, *)
  convenience init(forUpdatingURL url: NSURL) throws
}
let NSFileHandleOperationException: String
let NSFileHandleReadCompletionNotification: String
let NSFileHandleReadToEndOfFileCompletionNotification: String
let NSFileHandleConnectionAcceptedNotification: String
let NSFileHandleDataAvailableNotification: String
let NSFileHandleNotificationDataItem: String
let NSFileHandleNotificationFileHandleItem: String
extension NSFileHandle {
  func readInBackgroundAndNotifyForModes(_ modes: [String]?)
  func readInBackgroundAndNotify()
  func readToEndOfFileInBackgroundAndNotifyForModes(_ modes: [String]?)
  func readToEndOfFileInBackgroundAndNotify()
  func acceptConnectionInBackgroundAndNotifyForModes(_ modes: [String]?)
  func acceptConnectionInBackgroundAndNotify()
  func waitForDataInBackgroundAndNotifyForModes(_ modes: [String]?)
  func waitForDataInBackgroundAndNotify()
  @available(tvOS 5.0, *)
  var readabilityHandler: ((NSFileHandle) -> Void)?
  @available(tvOS 5.0, *)
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
