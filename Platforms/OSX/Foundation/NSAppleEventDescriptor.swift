
@available(OSX 10.11, *)
struct NSAppleEventSendOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var noReply: NSAppleEventSendOptions { get }
  static var queueReply: NSAppleEventSendOptions { get }
  static var waitForReply: NSAppleEventSendOptions { get }
  static var neverInteract: NSAppleEventSendOptions { get }
  static var canInteract: NSAppleEventSendOptions { get }
  static var alwaysInteract: NSAppleEventSendOptions { get }
  static var canSwitchLayer: NSAppleEventSendOptions { get }
  static var dontRecord: NSAppleEventSendOptions { get }
  static var dontExecute: NSAppleEventSendOptions { get }
  static var dontAnnotate: NSAppleEventSendOptions { get }
  static var defaultOptions: NSAppleEventSendOptions { get }
}
class NSAppleEventDescriptor : NSObject, NSCopying, NSSecureCoding {
  class func null() -> NSAppleEventDescriptor
  /*not inherited*/ init(boolean: Bool)
  /*not inherited*/ init(enumCode enumerator: OSType)
  /*not inherited*/ init(int32 signedInt: Int32)
  @available(OSX 10.11, *)
  /*not inherited*/ init(double doubleValue: Double)
  /*not inherited*/ init(typeCode: OSType)
  /*not inherited*/ init(string: String)
  @available(OSX 10.11, *)
  /*not inherited*/ init(date: NSDate)
  @available(OSX 10.11, *)
  /*not inherited*/ init(fileURL: NSURL)
  class func appleEvent(withEventClass eventClass: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: AEReturnID, transactionID: AETransactionID) -> NSAppleEventDescriptor
  class func list() -> NSAppleEventDescriptor
  class func record() -> NSAppleEventDescriptor
  @available(OSX 10.11, *)
  class func currentProcess() -> NSAppleEventDescriptor
  @available(OSX 10.11, *)
  /*not inherited*/ init(processIdentifier: pid_t)
  @available(OSX 10.11, *)
  /*not inherited*/ init(bundleIdentifier: String)
  @available(OSX 10.11, *)
  /*not inherited*/ init(applicationURL: NSURL)
  init(aeDescNoCopy aeDesc: UnsafePointer<AEDesc>)
  convenience init?(descriptorType: DescType, bytes: UnsafePointer<Void>, length byteCount: Int)
  convenience init?(descriptorType: DescType, data: NSData?)
  convenience init(eventClass: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: AEReturnID, transactionID: AETransactionID)
  convenience init(listDescriptor: ())
  convenience init(recordDescriptor: ())
  var aeDesc: UnsafePointer<AEDesc> { get }
  var descriptorType: DescType { get }
  @NSCopying var data: NSData { get }
  var booleanValue: Bool { get }
  var enumCodeValue: OSType { get }
  var int32Value: Int32 { get }
  @available(OSX 10.11, *)
  var doubleValue: Double { get }
  var typeCodeValue: OSType { get }
  var stringValue: String? { get }
  @available(OSX 10.11, *)
  @NSCopying var dateValue: NSDate? { get }
  @available(OSX 10.11, *)
  @NSCopying var fileURLValue: NSURL? { get }
  var eventClass: AEEventClass { get }
  var eventID: AEEventID { get }
  var returnID: AEReturnID { get }
  var transactionID: AETransactionID { get }
  func setParamDescriptor(descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func paramDescriptor(forKeyword keyword: AEKeyword) -> NSAppleEventDescriptor?
  func removeParamDescriptor(keyword keyword: AEKeyword)
  func setAttributeDescriptor(descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func attributeDescriptor(forKeyword keyword: AEKeyword) -> NSAppleEventDescriptor?
  @available(OSX 10.11, *)
  func sendEvent(sendOptions: NSAppleEventSendOptions = [], timeout timeoutInSeconds: NSTimeInterval) throws -> NSAppleEventDescriptor
  @available(OSX 10.11, *)
  var isRecordDescriptor: Bool { get }
  var numberOfItems: Int { get }
  func insert(descriptor: NSAppleEventDescriptor, at index: Int)
  func atIndex(index: Int) -> NSAppleEventDescriptor?
  func remove(at index: Int)
  func setDescriptor(descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func forKeyword(keyword: AEKeyword) -> NSAppleEventDescriptor?
  func remove(keyword keyword: AEKeyword)
  func keywordForDescriptor(at index: Int) -> AEKeyword
  func coerce(toDescriptorType descriptorType: DescType) -> NSAppleEventDescriptor?
  convenience init()
  func copy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
