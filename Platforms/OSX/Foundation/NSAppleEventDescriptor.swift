
@available(OSX 10.11, *)
struct AppleEventSendOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoReply: AppleEventSendOptions { get }
  static var QueueReply: AppleEventSendOptions { get }
  static var WaitForReply: AppleEventSendOptions { get }
  static var NeverInteract: AppleEventSendOptions { get }
  static var CanInteract: AppleEventSendOptions { get }
  static var AlwaysInteract: AppleEventSendOptions { get }
  static var CanSwitchLayer: AppleEventSendOptions { get }
  static var DontRecord: AppleEventSendOptions { get }
  static var DontExecute: AppleEventSendOptions { get }
  static var DontAnnotate: AppleEventSendOptions { get }
  static var DefaultOptions: AppleEventSendOptions { get }
}
class AppleEventDescriptor : Object, Copying, SecureCoding {
  class func null() -> AppleEventDescriptor
  /*not inherited*/ init(boolean: Bool)
  /*not inherited*/ init(enumCode enumerator: OSType)
  /*not inherited*/ init(int32 signedInt: Int32)
  @available(OSX 10.11, *)
  /*not inherited*/ init(double doubleValue: Double)
  /*not inherited*/ init(typeCode: OSType)
  /*not inherited*/ init(string: String)
  @available(OSX 10.11, *)
  /*not inherited*/ init(date: Date)
  @available(OSX 10.11, *)
  /*not inherited*/ init(fileURL: URL)
  class func appleEventWithEventClass(eventClass: AEEventClass, eventID: AEEventID, targetDescriptor: AppleEventDescriptor?, returnID: AEReturnID, transactionID: AETransactionID) -> AppleEventDescriptor
  class func list() -> AppleEventDescriptor
  class func record() -> AppleEventDescriptor
  @available(OSX 10.11, *)
  class func currentProcess() -> AppleEventDescriptor
  @available(OSX 10.11, *)
  /*not inherited*/ init(processIdentifier: pid_t)
  @available(OSX 10.11, *)
  /*not inherited*/ init(bundleIdentifier: String)
  @available(OSX 10.11, *)
  /*not inherited*/ init(applicationURL: URL)
  init(aeDescNoCopy aeDesc: UnsafePointer<AEDesc>)
  convenience init?(descriptorType: DescType, bytes: UnsafePointer<Void>, length byteCount: Int)
  convenience init?(descriptorType: DescType, data: Data?)
  convenience init(eventClass: AEEventClass, eventID: AEEventID, targetDescriptor: AppleEventDescriptor?, returnID: AEReturnID, transactionID: AETransactionID)
  convenience init(listDescriptor: ())
  convenience init(recordDescriptor: ())
  var aeDesc: UnsafePointer<AEDesc> { get }
  var descriptorType: DescType { get }
  @NSCopying var data: Data { get }
  var booleanValue: Bool { get }
  var enumCodeValue: OSType { get }
  var int32Value: Int32 { get }
  @available(OSX 10.11, *)
  var doubleValue: Double { get }
  var typeCodeValue: OSType { get }
  var stringValue: String? { get }
  @available(OSX 10.11, *)
  @NSCopying var dateValue: Date? { get }
  @available(OSX 10.11, *)
  @NSCopying var fileURLValue: URL? { get }
  var eventClass: AEEventClass { get }
  var eventID: AEEventID { get }
  var returnID: AEReturnID { get }
  var transactionID: AETransactionID { get }
  func setParamDescriptor(descriptor: AppleEventDescriptor, forKeyword keyword: AEKeyword)
  func paramDescriptorForKeyword(keyword: AEKeyword) -> AppleEventDescriptor?
  func removeParamDescriptorWithKeyword(keyword: AEKeyword)
  func setAttributeDescriptor(descriptor: AppleEventDescriptor, forKeyword keyword: AEKeyword)
  func attributeDescriptorForKeyword(keyword: AEKeyword) -> AppleEventDescriptor?
  @available(OSX 10.11, *)
  func sendEvent(options sendOptions: AppleEventSendOptions = [], timeout timeoutInSeconds: TimeInterval) throws -> AppleEventDescriptor
  @available(OSX 10.11, *)
  var isRecordDescriptor: Bool { get }
  var numberOfItems: Int { get }
  func insert(descriptor: AppleEventDescriptor, at index: Int)
  func atIndex(index: Int) -> AppleEventDescriptor?
  func removeAt(index: Int)
  func setDescriptor(descriptor: AppleEventDescriptor, forKeyword keyword: AEKeyword)
  func forKeyword(keyword: AEKeyword) -> AppleEventDescriptor?
  func removeWithKeyword(keyword: AEKeyword)
  func keywordForDescriptorAt(index: Int) -> AEKeyword
  func coerceToDescriptorType(descriptorType: DescType) -> AppleEventDescriptor?
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
