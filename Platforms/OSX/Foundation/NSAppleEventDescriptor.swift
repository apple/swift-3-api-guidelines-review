
@available(OSX 10.11, *)
struct NSAppleEventSendOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoReply: NSAppleEventSendOptions { get }
  static var QueueReply: NSAppleEventSendOptions { get }
  static var WaitForReply: NSAppleEventSendOptions { get }
  static var NeverInteract: NSAppleEventSendOptions { get }
  static var CanInteract: NSAppleEventSendOptions { get }
  static var AlwaysInteract: NSAppleEventSendOptions { get }
  static var CanSwitchLayer: NSAppleEventSendOptions { get }
  static var DontRecord: NSAppleEventSendOptions { get }
  static var DontExecute: NSAppleEventSendOptions { get }
  static var DontAnnotate: NSAppleEventSendOptions { get }
  static var DefaultOptions: NSAppleEventSendOptions { get }
}
class NSAppleEventDescriptor : NSObject, NSCopying, NSSecureCoding {
  class func nullDescriptor() -> NSAppleEventDescriptor
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
  class func appleEventWithEventClass(eventClass: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: AEReturnID, transactionID: AETransactionID) -> NSAppleEventDescriptor
  class func listDescriptor() -> NSAppleEventDescriptor
  class func recordDescriptor() -> NSAppleEventDescriptor
  @available(OSX 10.11, *)
  class func currentProcessDescriptor() -> NSAppleEventDescriptor
  @available(OSX 10.11, *)
  /*not inherited*/ init(processIdentifier: pid_t)
  @available(OSX 10.11, *)
  /*not inherited*/ init(bundleIdentifier: String)
  @available(OSX 10.11, *)
  /*not inherited*/ init(applicationURL: NSURL)
  init(AEDescNoCopy aeDesc: UnsafePointer<AEDesc>)
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
  func paramDescriptorForKeyword(keyword: AEKeyword) -> NSAppleEventDescriptor?
  func removeParamDescriptorWithKeyword(keyword: AEKeyword)
  func setAttributeDescriptor(descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func attributeDescriptorForKeyword(keyword: AEKeyword) -> NSAppleEventDescriptor?
  @available(OSX 10.11, *)
  func sendEventWithOptions(sendOptions: NSAppleEventSendOptions, timeout timeoutInSeconds: NSTimeInterval) throws -> NSAppleEventDescriptor
  @available(OSX 10.11, *)
  var isRecordDescriptor: Bool { get }
  var numberOfItems: Int { get }
  func insertDescriptor(descriptor: NSAppleEventDescriptor, atIndex index: Int)
  func descriptorAtIndex(index: Int) -> NSAppleEventDescriptor?
  func removeDescriptorAtIndex(index: Int)
  func setDescriptor(descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func descriptorForKeyword(keyword: AEKeyword) -> NSAppleEventDescriptor?
  func removeDescriptorWithKeyword(keyword: AEKeyword)
  func keywordForDescriptorAtIndex(index: Int) -> AEKeyword
  func coerceToDescriptorType(descriptorType: DescType) -> NSAppleEventDescriptor?
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
