
@available(OSX 10.11, *)
struct NSAppleEventSendOptions : OptionSetType {
  init(rawValue rawValue: UInt)
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
  /*not inherited*/ init(boolean boolean: Bool)
  /*not inherited*/ init(enumCode enumerator: OSType)
  /*not inherited*/ init(int32 signedInt: Int32)
  @available(OSX 10.11, *)
  /*not inherited*/ init(double doubleValue: Double)
  /*not inherited*/ init(typeCode typeCode: OSType)
  /*not inherited*/ init(string string: String)
  @available(OSX 10.11, *)
  /*not inherited*/ init(date date: NSDate)
  @available(OSX 10.11, *)
  /*not inherited*/ init(fileURL fileURL: NSURL)
  class func appleEventWithEventClass(_ eventClass: AEEventClass, eventID eventID: AEEventID, targetDescriptor targetDescriptor: NSAppleEventDescriptor?, returnID returnID: AEReturnID, transactionID transactionID: AETransactionID) -> NSAppleEventDescriptor
  class func listDescriptor() -> NSAppleEventDescriptor
  class func recordDescriptor() -> NSAppleEventDescriptor
  @available(OSX 10.11, *)
  class func currentProcessDescriptor() -> NSAppleEventDescriptor
  @available(OSX 10.11, *)
  /*not inherited*/ init(processIdentifier processIdentifier: pid_t)
  @available(OSX 10.11, *)
  /*not inherited*/ init(bundleIdentifier bundleIdentifier: String)
  @available(OSX 10.11, *)
  /*not inherited*/ init(applicationURL applicationURL: NSURL)
  init(AEDescNoCopy aeDesc: UnsafePointer<AEDesc>)
  convenience init?(descriptorType descriptorType: DescType, bytes bytes: UnsafePointer<Void>, length byteCount: Int)
  convenience init?(descriptorType descriptorType: DescType, data data: NSData?)
  convenience init(eventClass eventClass: AEEventClass, eventID eventID: AEEventID, targetDescriptor targetDescriptor: NSAppleEventDescriptor?, returnID returnID: AEReturnID, transactionID transactionID: AETransactionID)
  convenience init(listDescriptor listDescriptor: ())
  convenience init(recordDescriptor recordDescriptor: ())
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
  func setParamDescriptor(_ descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func paramDescriptorForKeyword(_ keyword: AEKeyword) -> NSAppleEventDescriptor?
  func removeParamDescriptorWithKeyword(_ keyword: AEKeyword)
  func setAttributeDescriptor(_ descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func attributeDescriptorForKeyword(_ keyword: AEKeyword) -> NSAppleEventDescriptor?
  @available(OSX 10.11, *)
  func sendEventWithOptions(_ sendOptions: NSAppleEventSendOptions, timeout timeoutInSeconds: NSTimeInterval) throws -> NSAppleEventDescriptor
  @available(OSX 10.11, *)
  var isRecordDescriptor: Bool { get }
  var numberOfItems: Int { get }
  func insertDescriptor(_ descriptor: NSAppleEventDescriptor, atIndex index: Int)
  func descriptorAtIndex(_ index: Int) -> NSAppleEventDescriptor?
  func removeDescriptorAtIndex(_ index: Int)
  func setDescriptor(_ descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func descriptorForKeyword(_ keyword: AEKeyword) -> NSAppleEventDescriptor?
  func removeDescriptorWithKeyword(_ keyword: AEKeyword)
  func keywordForDescriptorAtIndex(_ index: Int) -> AEKeyword
  func coerceToDescriptorType(_ descriptorType: DescType) -> NSAppleEventDescriptor?
  func copyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
