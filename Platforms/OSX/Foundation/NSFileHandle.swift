
class NSFileHandle : NSObject, NSSecureCoding {
  @NSCopying var availableData: NSData { get }
  func readDataToEndOfFile() -> NSData
  func readDataOfLength(length: Int) -> NSData
  func writeData(data: NSData)
  var offsetInFile: UInt64 { get }
  func seekToEndOfFile() -> UInt64
  func seekToFileOffset(offset: UInt64)
  func truncateFileAtOffset(offset: UInt64)
  func synchronizeFile()
  func closeFile()
  init(fileDescriptor fd: Int32, closeOnDealloc closeopt: Bool)
  init?(coder: NSCoder)
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSFileHandle {
  class func fileHandleWithStandardInput() -> NSFileHandle
  class func fileHandleWithStandardOutput() -> NSFileHandle
  class func fileHandleWithStandardError() -> NSFileHandle
  class func fileHandleWithNullDevice() -> NSFileHandle
  convenience init?(forReadingAtPath path: String)
  convenience init?(forWritingAtPath path: String)
  convenience init?(forUpdatingAtPath path: String)
  @available(OSX 10.6, *)
  convenience init(forReadingFromURL url: NSURL) throws
  @available(OSX 10.6, *)
  convenience init(forWritingToURL url: NSURL) throws
  @available(OSX 10.6, *)
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
  func readInBackgroundAndNotifyForModes(modes: [String]?)
  func readInBackgroundAndNotify()
  func readToEndOfFileInBackgroundAndNotifyForModes(modes: [String]?)
  func readToEndOfFileInBackgroundAndNotify()
  func acceptConnectionInBackgroundAndNotifyForModes(modes: [String]?)
  func acceptConnectionInBackgroundAndNotify()
  func waitForDataInBackgroundAndNotifyForModes(modes: [String]?)
  func waitForDataInBackgroundAndNotify()
  @available(OSX 10.7, *)
  var readabilityHandler: ((NSFileHandle) -> Void)?
  @available(OSX 10.7, *)
  var writeabilityHandler: ((NSFileHandle) -> Void)?
}
extension NSFileHandle {
  convenience init(fileDescriptor fd: Int32)
  var fileDescriptor: Int32 { get }
}
class NSPipe : NSObject {
  var fileHandleForReading: NSFileHandle { get }
  var fileHandleForWriting: NSFileHandle { get }
  init()
}
