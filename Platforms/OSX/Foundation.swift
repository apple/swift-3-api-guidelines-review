
var NSFileNoSuchFileError: Int { get }
var NSFileLockingError: Int { get }
var NSFileReadUnknownError: Int { get }
var NSFileReadNoPermissionError: Int { get }
var NSFileReadInvalidFileNameError: Int { get }
var NSFileReadCorruptFileError: Int { get }
var NSFileReadNoSuchFileError: Int { get }
var NSFileReadInapplicableStringEncodingError: Int { get }
var NSFileReadUnsupportedSchemeError: Int { get }
@available(OSX 10.5, *)
var NSFileReadTooLargeError: Int { get }
@available(OSX 10.5, *)
var NSFileReadUnknownStringEncodingError: Int { get }
var NSFileWriteUnknownError: Int { get }
var NSFileWriteNoPermissionError: Int { get }
var NSFileWriteInvalidFileNameError: Int { get }
@available(OSX 10.7, *)
var NSFileWriteFileExistsError: Int { get }
var NSFileWriteInapplicableStringEncodingError: Int { get }
var NSFileWriteUnsupportedSchemeError: Int { get }
var NSFileWriteOutOfSpaceError: Int { get }
@available(OSX 10.6, *)
var NSFileWriteVolumeReadOnlyError: Int { get }
@available(OSX 10.11, *)
var NSFileManagerUnmountUnknownError: Int { get }
@available(OSX 10.11, *)
var NSFileManagerUnmountBusyError: Int { get }
var NSKeyValueValidationError: Int { get }
var NSFormattingError: Int { get }
var NSUserCancelledError: Int { get }
@available(OSX 10.8, *)
var NSFeatureUnsupportedError: Int { get }
@available(OSX 10.5, *)
var NSExecutableNotLoadableError: Int { get }
@available(OSX 10.5, *)
var NSExecutableArchitectureMismatchError: Int { get }
@available(OSX 10.5, *)
var NSExecutableRuntimeMismatchError: Int { get }
@available(OSX 10.5, *)
var NSExecutableLoadError: Int { get }
@available(OSX 10.5, *)
var NSExecutableLinkError: Int { get }
var NSFileErrorMinimum: Int { get }
var NSFileErrorMaximum: Int { get }
var NSValidationErrorMinimum: Int { get }
var NSValidationErrorMaximum: Int { get }
@available(OSX 10.5, *)
var NSExecutableErrorMinimum: Int { get }
@available(OSX 10.5, *)
var NSExecutableErrorMaximum: Int { get }
var NSFormattingErrorMinimum: Int { get }
var NSFormattingErrorMaximum: Int { get }
@available(OSX 10.6, *)
var NSPropertyListReadCorruptError: Int { get }
@available(OSX 10.6, *)
var NSPropertyListReadUnknownVersionError: Int { get }
@available(OSX 10.6, *)
var NSPropertyListReadStreamError: Int { get }
@available(OSX 10.6, *)
var NSPropertyListWriteStreamError: Int { get }
@available(OSX 10.10, *)
var NSPropertyListWriteInvalidError: Int { get }
@available(OSX 10.6, *)
var NSPropertyListErrorMinimum: Int { get }
@available(OSX 10.6, *)
var NSPropertyListErrorMaximum: Int { get }
@available(OSX 10.8, *)
var NSXPCConnectionInterrupted: Int { get }
@available(OSX 10.8, *)
var NSXPCConnectionInvalid: Int { get }
@available(OSX 10.8, *)
var NSXPCConnectionReplyInvalid: Int { get }
@available(OSX 10.8, *)
var NSXPCConnectionErrorMinimum: Int { get }
@available(OSX 10.8, *)
var NSXPCConnectionErrorMaximum: Int { get }
@available(OSX 10.9, *)
var NSUbiquitousFileUnavailableError: Int { get }
@available(OSX 10.9, *)
var NSUbiquitousFileNotUploadedDueToQuotaError: Int { get }
@available(OSX 10.9, *)
var NSUbiquitousFileUbiquityServerNotAvailable: Int { get }
@available(OSX 10.9, *)
var NSUbiquitousFileErrorMinimum: Int { get }
@available(OSX 10.9, *)
var NSUbiquitousFileErrorMaximum: Int { get }
@available(OSX 10.10, *)
var NSUserActivityHandoffFailedError: Int { get }
@available(OSX 10.10, *)
var NSUserActivityConnectionUnavailableError: Int { get }
@available(OSX 10.10, *)
var NSUserActivityRemoteApplicationTimedOutError: Int { get }
@available(OSX 10.10, *)
var NSUserActivityHandoffUserInfoTooLargeError: Int { get }
@available(OSX 10.10, *)
var NSUserActivityErrorMinimum: Int { get }
@available(OSX 10.10, *)
var NSUserActivityErrorMaximum: Int { get }
@available(OSX 10.11, *)
var NSCoderReadCorruptError: Int { get }
@available(OSX 10.11, *)
var NSCoderValueNotFoundError: Int { get }
@available(OSX 10.11, *)
var NSCoderErrorMinimum: Int { get }
@available(OSX 10.11, *)
var NSCoderErrorMaximum: Int { get }
@available(OSX 10.11, *)
var NSBundleErrorMinimum: Int { get }
@available(OSX 10.11, *)
var NSBundleErrorMaximum: Int { get }
struct NSAffineTransformStruct {
  var m11: CGFloat
  var m12: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var tX: CGFloat
  var tY: CGFloat
  init()
  init(m11: CGFloat, m12: CGFloat, m21: CGFloat, m22: CGFloat, tX: CGFloat, tY: CGFloat)
}
class NSAffineTransform : NSObject, NSCopying, NSSecureCoding {
  convenience init(transform: NSAffineTransform)
  init()
  func translateXBy(deltaX: CGFloat, yBy deltaY: CGFloat)
  func rotateByDegrees(angle: CGFloat)
  func rotateByRadians(angle: CGFloat)
  func scaleBy(scale: CGFloat)
  func scaleXBy(scaleX: CGFloat, yBy scaleY: CGFloat)
  func invert()
  func append(transform: NSAffineTransform)
  func prependTransform(transform: NSAffineTransform)
  func transform(aPoint: NSPoint) -> NSPoint
  func transform(aSize: NSSize) -> NSSize
  var transformStruct: NSAffineTransformStruct
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
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
  class func appleEventWithEventClass(eventClass: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: AEReturnID, transactionID: AETransactionID) -> NSAppleEventDescriptor
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
  func paramDescriptorForKeyword(keyword: AEKeyword) -> NSAppleEventDescriptor?
  func removeParamDescriptorWithKeyword(keyword: AEKeyword)
  func setAttributeDescriptor(descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func attributeDescriptorForKeyword(keyword: AEKeyword) -> NSAppleEventDescriptor?
  @available(OSX 10.11, *)
  func sendEvent(options sendOptions: NSAppleEventSendOptions = [], timeout timeoutInSeconds: NSTimeInterval) throws -> NSAppleEventDescriptor
  @available(OSX 10.11, *)
  var isRecordDescriptor: Bool { get }
  var numberOfItems: Int { get }
  func insert(descriptor: NSAppleEventDescriptor, at index: Int)
  func atIndex(index: Int) -> NSAppleEventDescriptor?
  func removeAt(index: Int)
  func setDescriptor(descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func forKeyword(keyword: AEKeyword) -> NSAppleEventDescriptor?
  func removeWithKeyword(keyword: AEKeyword)
  func keywordForDescriptorAt(index: Int) -> AEKeyword
  func coerceToDescriptorType(descriptorType: DescType) -> NSAppleEventDescriptor?
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias NSAppleEventManagerSuspensionID = COpaquePointer
let NSAppleEventTimeOutDefault: Double
let NSAppleEventTimeOutNone: Double
let NSAppleEventManagerWillProcessFirstEventNotification: String
class NSAppleEventManager : NSObject {
  class func shared() -> NSAppleEventManager
  func setEventHandler(handler: AnyObject, andSelector handleEventSelector: Selector, forEventClass eventClass: AEEventClass, andEventID eventID: AEEventID)
  func removeEventHandlerForEventClass(eventClass: AEEventClass, andEventID eventID: AEEventID)
  func dispatchRawAppleEvent(theAppleEvent: UnsafePointer<AppleEvent>, withRawReply theReply: UnsafeMutablePointer<AppleEvent>, handlerRefCon: SRefCon) -> OSErr
  var currentAppleEvent: NSAppleEventDescriptor? { get }
  var currentReplyAppleEvent: NSAppleEventDescriptor? { get }
  func suspendCurrentAppleEvent() -> NSAppleEventManagerSuspensionID
  func appleEventForSuspensionID(suspensionID: NSAppleEventManagerSuspensionID) -> NSAppleEventDescriptor
  func replyAppleEventForSuspensionID(suspensionID: NSAppleEventManagerSuspensionID) -> NSAppleEventDescriptor
  func setCurrentAppleEventAndReplyEventWithSuspensionID(suspensionID: NSAppleEventManagerSuspensionID)
  func resumeWithSuspensionID(suspensionID: NSAppleEventManagerSuspensionID)
  init()
}
@available(OSX 10.2, *)
let NSAppleScriptErrorMessage: String
@available(OSX 10.2, *)
let NSAppleScriptErrorNumber: String
@available(OSX 10.2, *)
let NSAppleScriptErrorAppName: String
@available(OSX 10.2, *)
let NSAppleScriptErrorBriefMessage: String
@available(OSX 10.2, *)
let NSAppleScriptErrorRange: String
class NSAppleScript : NSObject, NSCopying {
  init?(contentsOf url: NSURL, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(source: String)
  var source: String? { get }
  var isCompiled: Bool { get }
  func compileAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func executeAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor
  func executeAppleEvent(event: NSAppleEventDescriptor, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/************		Archiving: Writing	****************/
class NSArchiver : NSCoder {
  init(forWritingWith mdata: NSMutableData)
  var archiverData: NSMutableData { get }
  func encodeRootObject(rootObject: AnyObject)
  func encodeConditionalObject(object: AnyObject?)
  class func archivedDataWithRootObject(rootObject: AnyObject) -> NSData
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  func encodeClassName(trueName: String, intoClassName inArchiveName: String)
  func classNameEncodedForTrueClassName(trueName: String) -> String?
  func replace(object: AnyObject, withObject newObject: AnyObject)
  convenience init()
}

/************		Archiving: Reading		****************/
class NSUnarchiver : NSCoder {
  init?(forReadingWith data: NSData)
  var isAtEnd: Bool { get }
  var systemVersion: UInt32 { get }
  class func unarchiveObjectWith(data: NSData) -> AnyObject?
  class func unarchiveObjectWithFile(path: String) -> AnyObject?
  class func decodeClassName(inArchiveName: String, asClassName trueName: String)
  func decodeClassName(inArchiveName: String, asClassName trueName: String)
  class func classNameDecodedForArchiveClassName(inArchiveName: String) -> String
  func classNameDecodedForArchiveClassName(inArchiveName: String) -> String
  func replace(object: AnyObject, withObject newObject: AnyObject)
  convenience init()
}

/************		Exceptions		****************/
let NSInconsistentArchiveException: String

/************		Object call back		****************/
extension NSObject {
  var classForArchiver: AnyClass? { get }
  class func replacementObjectFor(archiver: NSArchiver) -> AnyObject?
  func replacementObjectFor(archiver: NSArchiver) -> AnyObject?
  class func classForArchiver() -> AnyClass?
}

/****************	Immutable Array		****************/
class NSArray : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectAt(index: Int) -> AnyObject
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSArray : ArrayLiteralConvertible {
  /// Create an instance initialized with `elements`.
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}

extension NSArray : SequenceType {
  /// Return a *generator* over the elements of this *sequence*.
  ///
  /// - Complexity: O(1).
  final func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}

extension NSArray {
  convenience init(objects elements: AnyObject...)
}

extension NSArray {
  /// Initializes a newly allocated array by placing in it the objects
  /// contained in a given array.
  ///
  /// - Returns: An array initialized to contain the objects in
  ///    `anArray``. The returned object might be different than the
  ///    original receiver.
  ///
  /// Discussion: After an immutable array has been initialized in
  /// this way, it cannot be modified.
  @objc(_swiftInitWithArray_NSArray:) convenience init(array anArray: NSArray)
}

extension NSArray : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension NSArray {
  func adding(anObject: AnyObject) -> [AnyObject]
  func addingObjectsFrom(otherArray: [AnyObject]) -> [AnyObject]
  func componentsJoinedBy(separator: String) -> String
  func contains(anObject: AnyObject) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
  func firstObjectCommonWith(otherArray: [AnyObject]) -> AnyObject?
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func indexOf(anObject: AnyObject) -> Int
  func indexOf(anObject: AnyObject, in range: NSRange) -> Int
  func indexOfObjectIdenticalTo(anObject: AnyObject) -> Int
  func indexOfObjectIdenticalTo(anObject: AnyObject, in range: NSRange) -> Int
  func isEqualTo(otherArray: [AnyObject]) -> Bool
  @available(OSX 10.6, *)
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var sortedArrayHint: NSData { get }
  func sortedArrayUsing(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>) -> [AnyObject]
  func sortedArrayUsing(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>, hint: NSData?) -> [AnyObject]
  func sortedArrayUsing(comparator: Selector) -> [AnyObject]
  func subarrayWith(range: NSRange) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: NSURL, atomically: Bool) -> Bool
  func objectsAt(indexes: NSIndexSet) -> [AnyObject]
  @available(OSX 10.8, *)
  subscript (idx: Int) -> AnyObject { get }
  @available(OSX 10.6, *)
  func enumerateObjectsUsing(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateObjects(options opts: NSEnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateObjectsAt(s: NSIndexSet, options opts: NSEnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func indexOfObject(options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func indexOfObjectAt(s: NSIndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(OSX 10.6, *)
  func indexesOfObjects(options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(OSX 10.6, *)
  func indexesOfObjectsAt(s: NSIndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(OSX 10.6, *)
  func sortedArrayUsingComparator(cmptr: NSComparator) -> [AnyObject]
  @available(OSX 10.6, *)
  func sortedArray(options opts: NSSortOptions = [], usingComparator cmptr: NSComparator) -> [AnyObject]
  @available(OSX 10.6, *)
  func indexOf(obj: AnyObject, inSortedRange r: NSRange, options opts: NSBinarySearchingOptions = [], usingComparator cmp: NSComparator) -> Int
}
struct NSBinarySearchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var FirstEqual: NSBinarySearchingOptions { get }
  static var LastEqual: NSBinarySearchingOptions { get }
  static var InsertionIndex: NSBinarySearchingOptions { get }
}
extension NSArray {
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: NSURL)
}
extension NSArray {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}

/****************	Mutable Array		****************/
class NSMutableArray : NSArray {
  func add(anObject: AnyObject)
  func insert(anObject: AnyObject, at index: Int)
  func removeLastObject()
  func removeObjectAt(index: Int)
  func replaceObjectAt(index: Int, withObject anObject: AnyObject)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
}
extension NSMutableArray {
  func addObjectsFrom(otherArray: [AnyObject])
  func exchangeObjectAt(idx1: Int, withObjectAt idx2: Int)
  func removeAllObjects()
  func remove(anObject: AnyObject, in range: NSRange)
  func remove(anObject: AnyObject)
  func removeObjectIdenticalTo(anObject: AnyObject, in range: NSRange)
  func removeObjectIdenticalTo(anObject: AnyObject)
  func removeObjectsIn(otherArray: [AnyObject])
  func removeObjectsIn(range: NSRange)
  func replaceObjectsIn(range: NSRange, withObjectsFrom otherArray: [AnyObject], range otherRange: NSRange)
  func replaceObjectsIn(range: NSRange, withObjectsFrom otherArray: [AnyObject])
  func setArray(otherArray: [AnyObject])
  func sortUsing(compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>)
  func sortUsing(comparator: Selector)
  func insert(objects: [AnyObject], at indexes: NSIndexSet)
  func removeObjectsAt(indexes: NSIndexSet)
  func replaceObjectsAt(indexes: NSIndexSet, withObjects objects: [AnyObject])
  @available(OSX 10.8, *)
  subscript (idx: Int) -> AnyObject
  @available(OSX 10.6, *)
  func sortUsingComparator(cmptr: NSComparator)
  @available(OSX 10.6, *)
  func sort(options opts: NSSortOptions = [], usingComparator cmptr: NSComparator)
}
extension NSMutableArray {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: NSURL)
}
@available(OSX 10.0, *)
class NSAttributedString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var string: String { get }
  func attributesAt(location: Int, effectiveRange range: NSRangePointer) -> [String : AnyObject]
  init()
  @available(OSX 10.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.0, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.0, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
  var length: Int { get }
  func attribute(attrName: String, at location: Int, effectiveRange range: NSRangePointer) -> AnyObject?
  func attributedSubstringFrom(range: NSRange) -> NSAttributedString
  func attributesAt(location: Int, longestEffectiveRange range: NSRangePointer, in rangeLimit: NSRange) -> [String : AnyObject]
  func attribute(attrName: String, at location: Int, longestEffectiveRange range: NSRangePointer, in rangeLimit: NSRange) -> AnyObject?
  func isEqualTo(other: NSAttributedString) -> Bool
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: NSAttributedString)
  @available(OSX 10.6, *)
  func enumerateAttributesIn(enumerationRange: NSRange, options opts: NSAttributedStringEnumerationOptions = [], usingBlock block: ([String : AnyObject], NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateAttribute(attrName: String, in enumerationRange: NSRange, options opts: NSAttributedStringEnumerationOptions = [], usingBlock block: (AnyObject?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
struct NSAttributedStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Reverse: NSAttributedStringEnumerationOptions { get }
  static var LongestEffectiveRangeNotRequired: NSAttributedStringEnumerationOptions { get }
}
@available(OSX 10.0, *)
class NSMutableAttributedString : NSAttributedString {
  func replaceCharactersIn(range: NSRange, withString str: String)
  func setAttributes(attrs: [String : AnyObject]? = [:], range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: NSAttributedString)
}
extension NSMutableAttributedString {
  var mutableString: NSMutableString { get }
  func addAttribute(name: String, value: AnyObject, range: NSRange)
  func addAttributes(attrs: [String : AnyObject] = [:], range: NSRange)
  func removeAttribute(name: String, range: NSRange)
  func replaceCharactersIn(range: NSRange, withAttributedString attrString: NSAttributedString)
  func insert(attrString: NSAttributedString, at loc: Int)
  func append(attrString: NSAttributedString)
  func deleteCharactersIn(range: NSRange)
  func setAttributedString(attrString: NSAttributedString)
  func beginEditing()
  func endEditing()
}
@available(OSX 10.10, *)
enum NSBackgroundActivityResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Finished
  case Deferred
}
typealias NSBackgroundActivityCompletionHandler = (NSBackgroundActivityResult) -> Void
@available(OSX 10.10, *)
class NSBackgroundActivityScheduler : NSObject {
  init(identifier: String)
  var identifier: String { get }
  var qualityOfService: NSQualityOfService
  var repeats: Bool
  var interval: NSTimeInterval
  var tolerance: NSTimeInterval
  func scheduleWith(block: (NSBackgroundActivityCompletionHandler) -> Void)
  func invalidate()
  var shouldDefer: Bool { get }
  convenience init()
}
class NSBundle : NSObject {
  class func main() -> NSBundle
  init?(path: String)
  @available(OSX 10.6, *)
  convenience init?(url: NSURL)
  /*not inherited*/ init(forClass aClass: AnyClass)
  /*not inherited*/ init?(identifier: String)
  class func allBundles() -> [NSBundle]
  class func allFrameworks() -> [NSBundle]
  func load() -> Bool
  var isLoaded: Bool { get }
  func unload() -> Bool
  @available(OSX 10.5, *)
  func preflight() throws
  @available(OSX 10.5, *)
  func loadAndReturnError() throws
  @available(OSX 10.6, *)
  @NSCopying var bundleURL: NSURL { get }
  @available(OSX 10.6, *)
  @NSCopying var resourceURL: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var executableURL: NSURL? { get }
  @available(OSX 10.6, *)
  func urlForAuxiliaryExecutable(executableName: String) -> NSURL?
  @available(OSX 10.6, *)
  @NSCopying var privateFrameworksURL: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var sharedFrameworksURL: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var sharedSupportURL: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var builtInPlugInsURL: NSURL? { get }
  @available(OSX 10.7, *)
  @NSCopying var appStoreReceiptURL: NSURL? { get }
  var bundlePath: String { get }
  var resourcePath: String? { get }
  var executablePath: String? { get }
  func pathForAuxiliaryExecutable(executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  @available(OSX 10.6, *)
  class func urlForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?, inBundleWith bundleURL: NSURL) -> NSURL?
  @available(OSX 10.6, *)
  class func urLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?, inBundleWith bundleURL: NSURL) -> [NSURL]?
  @available(OSX 10.6, *)
  func urlForResource(name: String?, withExtension ext: String?) -> NSURL?
  @available(OSX 10.6, *)
  func urlForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?) -> NSURL?
  @available(OSX 10.6, *)
  func urlForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> NSURL?
  @available(OSX 10.6, *)
  func urLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?) -> [NSURL]?
  @available(OSX 10.6, *)
  func urLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> [NSURL]?
  class func pathForResource(name: String?, ofType ext: String?, inDirectory bundlePath: String) -> String?
  class func pathsForResourcesOfType(ext: String?, inDirectory bundlePath: String) -> [String]
  func pathForResource(name: String?, ofType ext: String?) -> String?
  func pathForResource(name: String?, ofType ext: String?, inDirectory subpath: String?) -> String?
  func pathForResource(name: String?, ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> String?
  func pathsForResourcesOfType(ext: String?, inDirectory subpath: String?) -> [String]
  func pathsForResourcesOfType(ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> [String]
  func localizedStringForKey(key: String, value: String?, table tableName: String?) -> String
  var bundleIdentifier: String? { get }
  var infoDictionary: [String : AnyObject]? { get }
  var localizedInfoDictionary: [String : AnyObject]? { get }
  func objectForInfoDictionaryKey(key: String) -> AnyObject?
  func classNamed(className: String) -> AnyClass?
  var principalClass: AnyClass? { get }
  var preferredLocalizations: [String] { get }
  var localizations: [String] { get }
  var developmentLocalization: String? { get }
  class func preferredLocalizationsFrom(localizationsArray: [String]) -> [String]
  class func preferredLocalizationsFrom(localizationsArray: [String], forPreferences preferencesArray: [String]?) -> [String]
  @available(OSX 10.5, *)
  var executableArchitectures: [NSNumber]? { get }
  convenience init()
}
var NSBundleExecutableArchitectureI386: Int { get }
var NSBundleExecutableArchitecturePPC: Int { get }
var NSBundleExecutableArchitectureX86_64: Int { get }
var NSBundleExecutableArchitecturePPC64: Int { get }
extension NSString {
  @available(OSX 10.11, *)
  func variantFittingPresentationWidth(width: Int) -> String
}
let NSBundleDidLoadNotification: String
let NSLoadedClasses: String
extension NSBundle {
}
struct NSByteCountFormatterUnits : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UseDefault: NSByteCountFormatterUnits { get }
  static var UseBytes: NSByteCountFormatterUnits { get }
  static var UseKB: NSByteCountFormatterUnits { get }
  static var UseMB: NSByteCountFormatterUnits { get }
  static var UseGB: NSByteCountFormatterUnits { get }
  static var UseTB: NSByteCountFormatterUnits { get }
  static var UsePB: NSByteCountFormatterUnits { get }
  static var UseEB: NSByteCountFormatterUnits { get }
  static var UseZB: NSByteCountFormatterUnits { get }
  static var UseYBOrHigher: NSByteCountFormatterUnits { get }
  static var UseAll: NSByteCountFormatterUnits { get }
}
enum NSByteCountFormatterCountStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case File
  case Memory
  case Decimal
  case Binary
}
@available(OSX 10.8, *)
class NSByteCountFormatter : NSFormatter {
  class func stringFromByteCount(byteCount: Int64, countStyle: NSByteCountFormatterCountStyle) -> String
  func stringFromByteCount(byteCount: Int64) -> String
  var allowedUnits: NSByteCountFormatterUnits
  var countStyle: NSByteCountFormatterCountStyle
  var allowsNonnumericFormatting: Bool
  var includesUnit: Bool
  var includesCount: Bool
  var includesActualByteCount: Bool
  var isAdaptive: Bool
  var zeroPadsFractionDigits: Bool
  @available(OSX 10.10, *)
  var formattingContext: NSFormattingContext
  init()
  init?(coder aDecoder: NSCoder)
}
var NS_UnknownByteOrder: Int { get }
var NS_LittleEndian: Int { get }
var NS_BigEndian: Int { get }
func NSHostByteOrder() -> Int
func NSSwapShort(inv: UInt16) -> UInt16
func NSSwapInt(inv: UInt32) -> UInt32
func NSSwapLong(inv: UInt) -> UInt
func NSSwapLongLong(inv: UInt64) -> UInt64
func NSSwapBigShortToHost(x: UInt16) -> UInt16
func NSSwapBigIntToHost(x: UInt32) -> UInt32
func NSSwapBigLongToHost(x: UInt) -> UInt
func NSSwapBigLongLongToHost(x: UInt64) -> UInt64
func NSSwapHostShortToBig(x: UInt16) -> UInt16
func NSSwapHostIntToBig(x: UInt32) -> UInt32
func NSSwapHostLongToBig(x: UInt) -> UInt
func NSSwapHostLongLongToBig(x: UInt64) -> UInt64
func NSSwapLittleShortToHost(x: UInt16) -> UInt16
func NSSwapLittleIntToHost(x: UInt32) -> UInt32
func NSSwapLittleLongToHost(x: UInt) -> UInt
func NSSwapLittleLongLongToHost(x: UInt64) -> UInt64
func NSSwapHostShortToLittle(x: UInt16) -> UInt16
func NSSwapHostIntToLittle(x: UInt32) -> UInt32
func NSSwapHostLongToLittle(x: UInt) -> UInt
func NSSwapHostLongLongToLittle(x: UInt64) -> UInt64
struct NSSwappedFloat {
  var v: UInt32
  init()
  init(v: UInt32)
}
struct NSSwappedDouble {
  var v: UInt64
  init()
  init(v: UInt64)
}
func NSConvertHostFloatToSwapped(x: Float) -> NSSwappedFloat
func NSConvertSwappedFloatToHost(x: NSSwappedFloat) -> Float
func NSConvertHostDoubleToSwapped(x: Double) -> NSSwappedDouble
func NSConvertSwappedDoubleToHost(x: NSSwappedDouble) -> Double
func NSSwapFloat(x: NSSwappedFloat) -> NSSwappedFloat
func NSSwapDouble(x: NSSwappedDouble) -> NSSwappedDouble
func NSSwapBigDoubleToHost(x: NSSwappedDouble) -> Double
func NSSwapBigFloatToHost(x: NSSwappedFloat) -> Float
func NSSwapHostDoubleToBig(x: Double) -> NSSwappedDouble
func NSSwapHostFloatToBig(x: Float) -> NSSwappedFloat
func NSSwapLittleDoubleToHost(x: NSSwappedDouble) -> Double
func NSSwapLittleFloatToHost(x: NSSwappedFloat) -> Float
func NSSwapHostDoubleToLittle(x: Double) -> NSSwappedDouble
func NSSwapHostFloatToLittle(x: Float) -> NSSwappedFloat
@available(OSX 10.6, *)
class NSCache : NSObject {
  var name: String
  unowned(unsafe) var delegate: @sil_unmanaged NSCacheDelegate?
  func objectFor(key: AnyObject) -> AnyObject?
  func setObject(obj: AnyObject, forKey key: AnyObject)
  func setObject(obj: AnyObject, forKey key: AnyObject, cost g: Int)
  func removeObjectFor(key: AnyObject)
  func removeAllObjects()
  var totalCostLimit: Int
  var countLimit: Int
  var evictsObjectsWithDiscardedContent: Bool
  init()
}
protocol NSCacheDelegate : NSObjectProtocol {
  @available(OSX 10.6, *)
  optional func cache(cache: NSCache, willEvictObject obj: AnyObject)
}
@available(OSX 10.6, *)
let NSCalendarIdentifierGregorian: String
@available(OSX 10.6, *)
let NSCalendarIdentifierBuddhist: String
@available(OSX 10.6, *)
let NSCalendarIdentifierChinese: String
@available(OSX 10.6, *)
let NSCalendarIdentifierCoptic: String
@available(OSX 10.6, *)
let NSCalendarIdentifierEthiopicAmeteMihret: String
@available(OSX 10.6, *)
let NSCalendarIdentifierEthiopicAmeteAlem: String
@available(OSX 10.6, *)
let NSCalendarIdentifierHebrew: String
@available(OSX 10.6, *)
let NSCalendarIdentifierISO8601: String
@available(OSX 10.6, *)
let NSCalendarIdentifierIndian: String
@available(OSX 10.6, *)
let NSCalendarIdentifierIslamic: String
@available(OSX 10.6, *)
let NSCalendarIdentifierIslamicCivil: String
@available(OSX 10.6, *)
let NSCalendarIdentifierJapanese: String
@available(OSX 10.6, *)
let NSCalendarIdentifierPersian: String
@available(OSX 10.6, *)
let NSCalendarIdentifierRepublicOfChina: String
@available(OSX 10.10, *)
let NSCalendarIdentifierIslamicTabular: String
@available(OSX 10.10, *)
let NSCalendarIdentifierIslamicUmmAlQura: String
struct NSCalendarUnit : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Era: NSCalendarUnit { get }
  static var Year: NSCalendarUnit { get }
  static var Month: NSCalendarUnit { get }
  static var Day: NSCalendarUnit { get }
  static var Hour: NSCalendarUnit { get }
  static var Minute: NSCalendarUnit { get }
  static var Second: NSCalendarUnit { get }
  static var Weekday: NSCalendarUnit { get }
  static var WeekdayOrdinal: NSCalendarUnit { get }
  @available(OSX 10.6, *)
  static var Quarter: NSCalendarUnit { get }
  @available(OSX 10.7, *)
  static var WeekOfMonth: NSCalendarUnit { get }
  @available(OSX 10.7, *)
  static var WeekOfYear: NSCalendarUnit { get }
  @available(OSX 10.7, *)
  static var YearForWeekOfYear: NSCalendarUnit { get }
  @available(OSX 10.7, *)
  static var Nanosecond: NSCalendarUnit { get }
  @available(OSX 10.7, *)
  static var Calendar: NSCalendarUnit { get }
  @available(OSX 10.7, *)
  static var TimeZone: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitEra instead")
  static var NSEraCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitYear instead")
  static var NSYearCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitMonth instead")
  static var NSMonthCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitDay instead")
  static var NSDayCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitHour instead")
  static var NSHourCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitMinute instead")
  static var NSMinuteCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitSecond instead")
  static var NSSecondCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitWeekOfMonth or NSCalendarUnitWeekOfYear, depending on which you mean")
  static var NSWeekCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitWeekday instead")
  static var NSWeekdayCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitWeekdayOrdinal instead")
  static var NSWeekdayOrdinalCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use NSCalendarUnitQuarter instead")
  static var NSQuarterCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitWeekOfMonth instead")
  static var NSWeekOfMonthCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitWeekOfYear instead")
  static var NSWeekOfYearCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitYearForWeekOfYear instead")
  static var NSYearForWeekOfYearCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitCalendar instead")
  static var NSCalendarCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitTimeZone instead")
  static var NSTimeZoneCalendarUnit: NSCalendarUnit { get }
}
struct NSCalendarOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WrapComponents: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchStrictly: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var SearchBackwards: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchPreviousTimePreservingSmallerUnits: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchNextTimePreservingSmallerUnits: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchNextTime: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchFirst: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchLast: NSCalendarOptions { get }
}
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarWrapComponents instead")
var NSWrapCalendarComponents: Int { get }
class NSCalendar : NSObject, NSCopying, NSSecureCoding {
  class func current() -> NSCalendar
  @available(OSX 10.5, *)
  class func autoupdatingCurrent() -> NSCalendar
  @available(OSX 10.9, *)
  /*not inherited*/ init?(identifier calendarIdentifierConstant: String)
  init?(calendarIdentifier ident: String)
  var calendarIdentifier: String { get }
  @NSCopying var locale: NSLocale?
  @NSCopying var timeZone: NSTimeZone
  var firstWeekday: Int
  var minimumDaysInFirstWeek: Int
  @available(OSX 10.7, *)
  var eraSymbols: [String] { get }
  @available(OSX 10.7, *)
  var longEraSymbols: [String] { get }
  @available(OSX 10.7, *)
  var monthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var veryShortMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var standaloneMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortStandaloneMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var veryShortStandaloneMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var weekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var veryShortWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var standaloneWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortStandaloneWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var veryShortStandaloneWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var quarterSymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortQuarterSymbols: [String] { get }
  @available(OSX 10.7, *)
  var standaloneQuarterSymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortStandaloneQuarterSymbols: [String] { get }
  @available(OSX 10.7, *)
  var amSymbol: String { get }
  @available(OSX 10.7, *)
  var pmSymbol: String { get }
  func minimumRangeOf(unit: NSCalendarUnit) -> NSRange
  func maximumRangeOf(unit: NSCalendarUnit) -> NSRange
  func rangeOf(smaller: NSCalendarUnit, in larger: NSCalendarUnit, forDate date: NSDate) -> NSRange
  func ordinalityOf(smaller: NSCalendarUnit, in larger: NSCalendarUnit, forDate date: NSDate) -> Int
  @available(OSX 10.5, *)
  func rangeOf(unit: NSCalendarUnit, start datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, forDate date: NSDate) -> Bool
  func dateFrom(comps: NSDateComponents) -> NSDate?
  func components(unitFlags: NSCalendarUnit, from date: NSDate) -> NSDateComponents
  func dateByAdding(comps: NSDateComponents, to date: NSDate, options opts: NSCalendarOptions = []) -> NSDate?
  func components(unitFlags: NSCalendarUnit, from startingDate: NSDate, to resultDate: NSDate, options opts: NSCalendarOptions = []) -> NSDateComponents
  @available(OSX 10.9, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, year yearValuePointer: UnsafeMutablePointer<Int>, month monthValuePointer: UnsafeMutablePointer<Int>, day dayValuePointer: UnsafeMutablePointer<Int>, from date: NSDate)
  @available(OSX 10.9, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, yearForWeekOfYear yearValuePointer: UnsafeMutablePointer<Int>, weekOfYear weekValuePointer: UnsafeMutablePointer<Int>, weekday weekdayValuePointer: UnsafeMutablePointer<Int>, from date: NSDate)
  @available(OSX 10.9, *)
  func getHour(hourValuePointer: UnsafeMutablePointer<Int>, minute minuteValuePointer: UnsafeMutablePointer<Int>, second secondValuePointer: UnsafeMutablePointer<Int>, nanosecond nanosecondValuePointer: UnsafeMutablePointer<Int>, from date: NSDate)
  @available(OSX 10.9, *)
  func component(unit: NSCalendarUnit, from date: NSDate) -> Int
  @available(OSX 10.9, *)
  func dateWithEra(eraValue: Int, year yearValue: Int, month monthValue: Int, day dayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> NSDate?
  @available(OSX 10.9, *)
  func dateWithEra(eraValue: Int, yearForWeekOfYear yearValue: Int, weekOfYear weekValue: Int, weekday weekdayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> NSDate?
  @available(OSX 10.9, *)
  func startOfDayFor(date: NSDate) -> NSDate
  @available(OSX 10.9, *)
  func componentsIn(timezone: NSTimeZone, from date: NSDate) -> NSDateComponents
  @available(OSX 10.9, *)
  func compare(date1: NSDate, to date2: NSDate, toUnitGranularity unit: NSCalendarUnit) -> NSComparisonResult
  @available(OSX 10.9, *)
  func isDate(date1: NSDate, equalTo date2: NSDate, toUnitGranularity unit: NSCalendarUnit) -> Bool
  @available(OSX 10.9, *)
  func isDate(date1: NSDate, inSameDayAs date2: NSDate) -> Bool
  @available(OSX 10.9, *)
  func isDateInToday(date: NSDate) -> Bool
  @available(OSX 10.9, *)
  func isDateInYesterday(date: NSDate) -> Bool
  @available(OSX 10.9, *)
  func isDateInTomorrow(date: NSDate) -> Bool
  @available(OSX 10.9, *)
  func isDateInWeekend(date: NSDate) -> Bool
  @available(OSX 10.9, *)
  func rangeOfWeekendStart(datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, containing date: NSDate) -> Bool
  @available(OSX 10.9, *)
  func nextWeekendStart(datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, options: NSCalendarOptions = [], after date: NSDate) -> Bool
  @available(OSX 10.9, *)
  func components(unitFlags: NSCalendarUnit, from startingDateComp: NSDateComponents, to resultDateComp: NSDateComponents, options: NSCalendarOptions = []) -> NSDateComponents
  @available(OSX 10.9, *)
  func dateByAdding(unit: NSCalendarUnit, value: Int, to date: NSDate, options: NSCalendarOptions = []) -> NSDate?
  @available(OSX 10.9, *)
  func enumerateDatesStartingAfter(start: NSDate, matching comps: NSDateComponents, options opts: NSCalendarOptions = [], usingBlock block: (NSDate?, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.9, *)
  func nextDateAfter(date: NSDate, matching comps: NSDateComponents, options: NSCalendarOptions = []) -> NSDate?
  @available(OSX 10.9, *)
  func nextDateAfter(date: NSDate, matching unit: NSCalendarUnit, value: Int, options: NSCalendarOptions = []) -> NSDate?
  @available(OSX 10.9, *)
  func nextDateAfter(date: NSDate, matchingHour hourValue: Int, minute minuteValue: Int, second secondValue: Int, options: NSCalendarOptions = []) -> NSDate?
  @available(OSX 10.9, *)
  func dateBySettingUnit(unit: NSCalendarUnit, value v: Int, of date: NSDate, options opts: NSCalendarOptions = []) -> NSDate?
  @available(OSX 10.9, *)
  func dateBySettingHour(h: Int, minute m: Int, second s: Int, of date: NSDate, options opts: NSCalendarOptions = []) -> NSDate?
  @available(OSX 10.9, *)
  func date(date: NSDate, matchesComponents components: NSDateComponents) -> Bool
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.9, *)
let NSCalendarDayChangedNotification: String
var NSDateComponentUndefined: Int { get }
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSDateComponentUndefined instead")
var NSUndefinedDateComponent: Int { get }
class NSDateComponents : NSObject, NSCopying, NSSecureCoding {
  @available(OSX 10.7, *)
  @NSCopying var calendar: NSCalendar?
  @available(OSX 10.7, *)
  @NSCopying var timeZone: NSTimeZone?
  var era: Int
  var year: Int
  var month: Int
  var day: Int
  var hour: Int
  var minute: Int
  var second: Int
  @available(OSX 10.7, *)
  var nanosecond: Int
  var weekday: Int
  var weekdayOrdinal: Int
  @available(OSX 10.6, *)
  var quarter: Int
  @available(OSX 10.7, *)
  var weekOfMonth: Int
  @available(OSX 10.7, *)
  var weekOfYear: Int
  @available(OSX 10.7, *)
  var yearForWeekOfYear: Int
  @available(OSX 10.8, *)
  var isLeapMonth: Bool
  @available(OSX 10.7, *)
  @NSCopying var date: NSDate? { get }
  @available(OSX 10.9, *)
  func setValue(value: Int, forComponent unit: NSCalendarUnit)
  @available(OSX 10.9, *)
  func valueForComponent(unit: NSCalendarUnit) -> Int
  @available(OSX 10.9, *)
  var isValidDate: Bool { get }
  @available(OSX 10.9, *)
  func isValidDateIn(calendar: NSCalendar) -> Bool
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSDate {
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func dateWithNaturalLanguageString(string: String, locale: AnyObject?) -> AnyObject?
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func dateWithNaturalLanguageString(string: String) -> AnyObject?
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func dateWith(aString: String) -> AnyObject
  @available(OSX, introduced=10.4, deprecated=10.10)
  func dateWithCalendarFormat(format: String?, timeZone aTimeZone: NSTimeZone?) -> NSCalendarDate
  @available(OSX, introduced=10.4, deprecated=10.10)
  func descriptionWithCalendarFormat(format: String?, timeZone aTimeZone: NSTimeZone?, locale: AnyObject?) -> String?
  @available(OSX, introduced=10.4, deprecated=10.10)
  convenience init?(string description: String)
}
var NSOpenStepUnicodeReservedBase: Int { get }
class NSCharacterSet : NSObject, NSCopying, NSMutableCopying, NSCoding {
  class func control() -> NSCharacterSet
  class func whitespace() -> NSCharacterSet
  class func whitespaceAndNewline() -> NSCharacterSet
  class func decimalDigit() -> NSCharacterSet
  class func letter() -> NSCharacterSet
  class func lowercaseLetter() -> NSCharacterSet
  class func uppercaseLetter() -> NSCharacterSet
  class func nonBase() -> NSCharacterSet
  class func alphanumeric() -> NSCharacterSet
  class func decomposable() -> NSCharacterSet
  class func illegal() -> NSCharacterSet
  class func punctuation() -> NSCharacterSet
  class func capitalizedLetter() -> NSCharacterSet
  class func symbol() -> NSCharacterSet
  @available(OSX 10.5, *)
  class func newline() -> NSCharacterSet
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersIn aString: String)
  /*not inherited*/ init(bitmapRepresentation data: NSData)
  /*not inherited*/ init?(contentsOfFile fName: String)
  init(coder aDecoder: NSCoder)
  func characterIsMember(aCharacter: unichar) -> Bool
  @NSCopying var bitmapRepresentation: NSData { get }
  @NSCopying var inverted: NSCharacterSet { get }
  func longCharacterIsMember(theLongChar: UTF32Char) -> Bool
  func isSupersetOf(theOtherSet: NSCharacterSet) -> Bool
  func hasMemberInPlane(thePlane: UInt8) -> Bool
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
}
class NSMutableCharacterSet : NSCharacterSet, NSCopying, NSMutableCopying {
  func addCharactersIn(aRange: NSRange)
  func removeCharactersIn(aRange: NSRange)
  func addCharactersIn(aString: String)
  func removeCharactersIn(aString: String)
  func formUnionWith(otherSet: NSCharacterSet)
  func formIntersectionWith(otherSet: NSCharacterSet)
  func invert()
  class func control() -> NSMutableCharacterSet
  class func whitespace() -> NSMutableCharacterSet
  class func whitespaceAndNewline() -> NSMutableCharacterSet
  class func decimalDigit() -> NSMutableCharacterSet
  class func letter() -> NSMutableCharacterSet
  class func lowercaseLetter() -> NSMutableCharacterSet
  class func uppercaseLetter() -> NSMutableCharacterSet
  class func nonBase() -> NSMutableCharacterSet
  class func alphanumeric() -> NSMutableCharacterSet
  class func decomposable() -> NSMutableCharacterSet
  class func illegal() -> NSMutableCharacterSet
  class func punctuation() -> NSMutableCharacterSet
  class func capitalizedLetter() -> NSMutableCharacterSet
  class func symbol() -> NSMutableCharacterSet
  @available(OSX 10.5, *)
  class func newline() -> NSMutableCharacterSet
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersIn aString: String)
  /*not inherited*/ init(bitmapRepresentation data: NSData)
  /*not inherited*/ init?(contentsOfFile fName: String)
  init(coder aDecoder: NSCoder)
  convenience init()
}
class NSClassDescription : NSObject {
  class func register(description: NSClassDescription, forClass aClass: AnyClass)
  class func invalidateClassDescriptionCache()
  /*not inherited*/ init?(forClass aClass: AnyClass)
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  func inverseForRelationshipKey(relationshipKey: String) -> String?
  init()
}
extension NSObject {
  @NSCopying var classDescription: NSClassDescription { get }
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  class func inverseForRelationshipKey(relationshipKey: String) -> String?
  func inverseForRelationshipKey(relationshipKey: String) -> String?
  class func classDescription() -> NSClassDescription
  class func attributeKeys() -> [String]
  class func toOneRelationshipKeys() -> [String]
  class func toManyRelationshipKeys() -> [String]
}
let NSClassDescriptionNeededForClassNotification: String
class NSCoder : NSObject {
  func encodeValueOfObjCType(type: UnsafePointer<Int8>, at addr: UnsafePointer<Void>)
  func encodeDataObject(data: NSData)
  func decodeValueOfObjCType(type: UnsafePointer<Int8>, at data: UnsafeMutablePointer<Void>)
  func decodeDataObject() -> NSData?
  func versionForClassName(className: String) -> Int
  init()
}

extension NSCoder {
  @warn_unused_result
  func decodeObjectOfClass<DecodedObjectType : NSCoding where DecodedObjectType : NSObject>(cls: DecodedObjectType.Type, forKey key: String) -> DecodedObjectType?
  @warn_unused_result
  @nonobjc func decodeObjectOfClasses(classes: NSSet?, forKey key: String) -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObject() throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectForKey(key: String) throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectOfClass<DecodedObjectType : NSCoding where DecodedObjectType : NSObject>(cls: DecodedObjectType.Type, forKey key: String) throws -> DecodedObjectType?
  @warn_unused_result
  func decodeTopLevelObjectOfClasses(classes: NSSet?, forKey key: String) throws -> AnyObject?
}
extension NSCoder {
  func encode(object: AnyObject?)
  func encodeRootObject(rootObject: AnyObject)
  func encodeBycopyObject(anObject: AnyObject?)
  func encodeByrefObject(anObject: AnyObject?)
  func encodeConditionalObject(object: AnyObject?)
  func encodeArrayOfObjCType(type: UnsafePointer<Int8>, count: Int, at array: UnsafePointer<Void>)
  func encodeBytes(byteaddr: UnsafePointer<Void>, length: Int)
  func decodeObject() -> AnyObject?
  func decodeArrayOfObjCType(itemType: UnsafePointer<Int8>, count: Int, at array: UnsafeMutablePointer<Void>)
  func decodeBytesWithReturnedLength(lengthp: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Void>
  func encodePropertyList(aPropertyList: AnyObject)
  func decodePropertyList() -> AnyObject?
  var systemVersion: UInt32 { get }
  var allowsKeyedCoding: Bool { get }
  func encode(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encode(boolv: Bool, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int64, forKey key: String)
  func encode(realv: Float, forKey key: String)
  func encode(realv: Double, forKey key: String)
  func encodeBytes(bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  func containsValueForKey(key: String) -> Bool
  func decodeObjectForKey(key: String) -> AnyObject?
  func decodeBoolForKey(key: String) -> Bool
  func decodeIntForKey(key: String) -> Int32
  func decodeInt32ForKey(key: String) -> Int32
  func decodeInt64ForKey(key: String) -> Int64
  func decodeFloatForKey(key: String) -> Float
  func decodeDoubleForKey(key: String) -> Double
  func decodeBytesForKey(key: String, returnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafePointer<UInt8>
  @available(OSX 10.5, *)
  func encode(intv: Int, forKey key: String)
  @available(OSX 10.5, *)
  func decodeIntegerForKey(key: String) -> Int
  @available(OSX 10.8, *)
  var requiresSecureCoding: Bool { get }
  @available(OSX 10.8, *)
  func __decodeObjectOfClasses(classes: Set<NSObject>?, forKey key: String) -> AnyObject?
  @available(OSX 10.8, *)
  func decodePropertyListForKey(key: String) -> AnyObject?
  @available(OSX 10.8, *)
  var allowedClasses: Set<NSObject>? { get }
  @available(OSX 10.11, *)
  func failWithError(error: NSError)
}
extension NSCoder {
}
struct NSComparisonPredicateOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitivePredicateOption: NSComparisonPredicateOptions { get }
  static var DiacriticInsensitivePredicateOption: NSComparisonPredicateOptions { get }
  @available(OSX 10.6, *)
  static var NormalizedPredicateOption: NSComparisonPredicateOptions { get }
}
enum NSComparisonPredicateModifier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DirectPredicateModifier
  case AllPredicateModifier
  case AnyPredicateModifier
}
enum NSPredicateOperatorType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case LessThanPredicateOperatorType
  case LessThanOrEqualToPredicateOperatorType
  case GreaterThanPredicateOperatorType
  case GreaterThanOrEqualToPredicateOperatorType
  case EqualToPredicateOperatorType
  case NotEqualToPredicateOperatorType
  case MatchesPredicateOperatorType
  case LikePredicateOperatorType
  case BeginsWithPredicateOperatorType
  case EndsWithPredicateOperatorType
  case InPredicateOperatorType
  case CustomSelectorPredicateOperatorType
  @available(OSX 10.5, *)
  case ContainsPredicateOperatorType
  @available(OSX 10.5, *)
  case BetweenPredicateOperatorType
}
@available(OSX 10.4, *)
class NSComparisonPredicate : NSPredicate {
  init(leftExpression lhs: NSExpression, rightExpression rhs: NSExpression, modifier: NSComparisonPredicateModifier, type: NSPredicateOperatorType, options: NSComparisonPredicateOptions = [])
  init(leftExpression lhs: NSExpression, rightExpression rhs: NSExpression, customSelector selector: Selector)
  init?(coder: NSCoder)
  var predicateOperatorType: NSPredicateOperatorType { get }
  var comparisonPredicateModifier: NSComparisonPredicateModifier { get }
  var leftExpression: NSExpression { get }
  var rightExpression: NSExpression { get }
  var customSelector: Selector { get }
  var options: NSComparisonPredicateOptions { get }
  convenience init()
}
enum NSCompoundPredicateType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotPredicateType
  case AndPredicateType
  case OrPredicateType
}
@available(OSX 10.4, *)
class NSCompoundPredicate : NSPredicate {
  init(type: NSCompoundPredicateType, subpredicates: [NSPredicate])
  init?(coder: NSCoder)
  var compoundPredicateType: NSCompoundPredicateType { get }
  var subpredicates: [AnyObject] { get }

  /*** Convenience Methods ***/
  /*not inherited*/ init(andPredicateWithSubpredicates subpredicates: [NSPredicate])
  /*not inherited*/ init(orPredicateWithSubpredicates subpredicates: [NSPredicate])
  /*not inherited*/ init(notPredicateWithSubpredicate predicate: NSPredicate)
  convenience init()
}

/****************	Read/Write Options	****************/
struct NSDataReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataReadingMappedIfSafe: NSDataReadingOptions { get }
  static var DataReadingUncached: NSDataReadingOptions { get }
  @available(OSX 10.7, *)
  static var DataReadingMappedAlways: NSDataReadingOptions { get }
  static var DataReadingMapped: NSDataReadingOptions { get }
  static var MappedRead: NSDataReadingOptions { get }
  static var UncachedRead: NSDataReadingOptions { get }
}
struct NSDataWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataWritingAtomic: NSDataWritingOptions { get }
  @available(OSX 10.8, *)
  static var DataWritingWithoutOverwriting: NSDataWritingOptions { get }
  static var AtomicWrite: NSDataWritingOptions { get }
}

/****************	Data Search Options	****************/
@available(OSX 10.6, *)
struct NSDataSearchOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Backwards: NSDataSearchOptions { get }
  static var Anchored: NSDataSearchOptions { get }
}

/****************        Base 64 Options	****************/
@available(OSX 10.9, *)
struct NSDataBase64EncodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Encoding64CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var Encoding76CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithCarriageReturn: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithLineFeed: NSDataBase64EncodingOptions { get }
}
@available(OSX 10.9, *)
struct NSDataBase64DecodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var IgnoreUnknownCharacters: NSDataBase64DecodingOptions { get }
}

/****************	Immutable Data		****************/
class NSData : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  var bytes: UnsafePointer<Void> { get }
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSData {
  var description: String { get }
  func getBytes(buffer: UnsafeMutablePointer<Void>, length: Int)
  func getBytes(buffer: UnsafeMutablePointer<Void>, range: NSRange)
  func isEqualTo(other: NSData) -> Bool
  func subdataWith(range: NSRange) -> NSData
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: NSURL, atomically: Bool) -> Bool
  func writeToFile(path: String, options writeOptionsMask: NSDataWritingOptions = []) throws
  func writeTo(url: NSURL, options writeOptionsMask: NSDataWritingOptions = []) throws
  @available(OSX 10.6, *)
  func rangeOf(dataToFind: NSData, options mask: NSDataSearchOptions = [], range searchRange: NSRange) -> NSRange
  @available(OSX 10.9, *)
  func enumerateByteRangesUsing(block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSData {
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(OSX 10.9, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions = []) throws
  init(contentsOf url: NSURL, options readOptionsMask: NSDataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: NSURL)
  init(data: NSData)
}
extension NSData {
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions = [])
  @available(OSX 10.9, *)
  func base64EncodedString(options options: NSDataBase64EncodingOptions = []) -> String
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions = [])
  @available(OSX 10.9, *)
  func base64EncodedData(options options: NSDataBase64EncodingOptions = []) -> NSData
}
extension NSData {
  @available(OSX, introduced=10.0, deprecated=10.10, message="This method is unsafe because it could potentially cause buffer overruns. Use -getBytes:length: instead.")
  func getBytes(buffer: UnsafeMutablePointer<Void>)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +dataWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  class func dataWithContentsOfMappedFile(path: String) -> AnyObject?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}

/****************	Mutable Data		****************/
class NSMutableData : NSData {
  var mutableBytes: UnsafeMutablePointer<Void> { get }
  var length: Int
  init()
  init?(coder aDecoder: NSCoder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(OSX 10.9, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions = []) throws
  init(contentsOf url: NSURL, options readOptionsMask: NSDataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: NSURL)
  init(data: NSData)
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions = [])
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions = [])
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
extension NSMutableData {
  func appendBytes(bytes: UnsafePointer<Void>, length: Int)
  func append(other: NSData)
  func increaseLengthBy(extraLength: Int)
  func replaceBytesIn(range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytesIn(range: NSRange)
  func setData(data: NSData)
  func replaceBytesIn(range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension NSMutableData {
  init?(capacity: Int)
  init?(length: Int)
}

/****************	    Purgeable Data	****************/
@available(OSX 10.6, *)
class NSPurgeableData : NSMutableData, NSDiscardableContent {
  init()
  init?(coder aDecoder: NSCoder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(OSX 10.9, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions = []) throws
  init(contentsOf url: NSURL, options readOptionsMask: NSDataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: NSURL)
  init(data: NSData)
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions = [])
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions = [])
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  init?(capacity: Int)
  init?(length: Int)
  @available(OSX 10.6, *)
  func beginContentAccess() -> Bool
  @available(OSX 10.6, *)
  func endContentAccess()
  @available(OSX 10.6, *)
  func discardContentIfPossible()
  @available(OSX 10.6, *)
  func isContentDiscarded() -> Bool
}
@available(OSX 10.6, *)
let NSSystemClockDidChangeNotification: String
typealias NSTimeInterval = Double
var NSTimeIntervalSince1970: Double { get }
class NSDate : NSObject, NSCopying, NSSecureCoding {
  var timeIntervalSinceReferenceDate: NSTimeInterval { get }
  init()
  init(timeIntervalSinceReferenceDate ti: NSTimeInterval)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
}

extension NSDate : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension NSDate {
  func timeIntervalSince(anotherDate: NSDate) -> NSTimeInterval
  var timeIntervalSinceNow: NSTimeInterval { get }
  var timeIntervalSince1970: NSTimeInterval { get }
  @available(OSX 10.6, *)
  func addingTimeInterval(ti: NSTimeInterval) -> Self
  func earlierDate(anotherDate: NSDate) -> NSDate
  func laterDate(anotherDate: NSDate) -> NSDate
  func compare(other: NSDate) -> NSComparisonResult
  func isEqualTo(otherDate: NSDate) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  class func timeIntervalSinceReferenceDate() -> NSTimeInterval
}
extension NSDate {
  class func distantFuture() -> NSDate
  class func distantPast() -> NSDate
  convenience init(timeIntervalSinceNow secs: NSTimeInterval)
  convenience init(timeIntervalSince1970 secs: NSTimeInterval)
  convenience init(timeInterval secsToBeAdded: NSTimeInterval, since date: NSDate)
}
@available(OSX 10.10, *)
enum NSDateComponentsFormatterUnitsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Positional
  case Abbreviated
  case Short
  case Full
  case SpellOut
}
@available(OSX 10.10, *)
struct NSDateComponentsFormatterZeroFormattingBehavior : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var Default: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropLeading: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropMiddle: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropTrailing: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropAll: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var Pad: NSDateComponentsFormatterZeroFormattingBehavior { get }
}
@available(OSX 10.10, *)
class NSDateComponentsFormatter : NSFormatter {
  func stringForObjectValue(obj: AnyObject) -> String?
  func stringFrom(components: NSDateComponents) -> String?
  func stringFrom(startDate: NSDate, to endDate: NSDate) -> String?
  func stringFromTimeInterval(ti: NSTimeInterval) -> String?
  class func localizedStringFrom(components: NSDateComponents, unitsStyle: NSDateComponentsFormatterUnitsStyle) -> String?
  var unitsStyle: NSDateComponentsFormatterUnitsStyle
  var allowedUnits: NSCalendarUnit
  var zeroFormattingBehavior: NSDateComponentsFormatterZeroFormattingBehavior
  @NSCopying var calendar: NSCalendar?
  var allowsFractionalUnits: Bool
  var maximumUnitCount: Int
  var collapsesLargestUnit: Bool
  var includesApproximationPhrase: Bool
  var includesTimeRemainingPhrase: Bool
  var formattingContext: NSFormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
class NSDateFormatter : NSFormatter {
  @available(OSX 10.10, *)
  var formattingContext: NSFormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFrom(date: NSDate) -> String
  func dateFrom(string: String) -> NSDate?
  @available(OSX 10.6, *)
  class func localizedStringFrom(date: NSDate, dateStyle dstyle: NSDateFormatterStyle, time tstyle: NSDateFormatterStyle) -> String
  @available(OSX 10.6, *)
  class func dateFormatFromTemplate(tmplate: String, options opts: Int, locale: NSLocale?) -> String?
  class func defaultFormatterBehavior() -> NSDateFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: NSDateFormatterBehavior)
  @available(OSX 10.10, *)
  func setLocalizedDateFormatFromTemplate(dateFormatTemplate: String)
  var dateFormat: String!
  var dateStyle: NSDateFormatterStyle
  var timeStyle: NSDateFormatterStyle
  @NSCopying var locale: NSLocale!
  var generatesCalendarDates: Bool
  var formatterBehavior: NSDateFormatterBehavior
  @NSCopying var timeZone: NSTimeZone!
  @NSCopying var calendar: NSCalendar!
  var isLenient: Bool
  @NSCopying var twoDigitStartDate: NSDate?
  @NSCopying var defaultDate: NSDate?
  var eraSymbols: [String]!
  var monthSymbols: [String]!
  var shortMonthSymbols: [String]!
  var weekdaySymbols: [String]!
  var shortWeekdaySymbols: [String]!
  var amSymbol: String!
  var pmSymbol: String!
  @available(OSX 10.5, *)
  var longEraSymbols: [String]!
  @available(OSX 10.5, *)
  var veryShortMonthSymbols: [String]!
  @available(OSX 10.5, *)
  var standaloneMonthSymbols: [String]!
  @available(OSX 10.5, *)
  var shortStandaloneMonthSymbols: [String]!
  @available(OSX 10.5, *)
  var veryShortStandaloneMonthSymbols: [String]!
  @available(OSX 10.5, *)
  var veryShortWeekdaySymbols: [String]!
  @available(OSX 10.5, *)
  var standaloneWeekdaySymbols: [String]!
  @available(OSX 10.5, *)
  var shortStandaloneWeekdaySymbols: [String]!
  @available(OSX 10.5, *)
  var veryShortStandaloneWeekdaySymbols: [String]!
  @available(OSX 10.5, *)
  var quarterSymbols: [String]!
  @available(OSX 10.5, *)
  var shortQuarterSymbols: [String]!
  @available(OSX 10.5, *)
  var standaloneQuarterSymbols: [String]!
  @available(OSX 10.5, *)
  var shortStandaloneQuarterSymbols: [String]!
  @available(OSX 10.5, *)
  @NSCopying var gregorianStartDate: NSDate?
  @available(OSX 10.6, *)
  var doesRelativeDateFormatting: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
enum NSDateFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
enum NSDateFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_0
  case Behavior10_4
}
extension NSDateFormatter {
}
@available(OSX 10.10, *)
enum NSDateIntervalFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
@available(OSX 10.10, *)
class NSDateIntervalFormatter : NSFormatter {
  @NSCopying var locale: NSLocale!
  @NSCopying var calendar: NSCalendar!
  @NSCopying var timeZone: NSTimeZone!
  var dateTemplate: String!
  var dateStyle: NSDateIntervalFormatterStyle
  var timeStyle: NSDateIntervalFormatterStyle
  func stringFrom(fromDate: NSDate, to toDate: NSDate) -> String
  init()
  init?(coder aDecoder: NSCoder)
}

/***************	Type definitions		***********/
enum NSRoundingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RoundPlain
  case RoundDown
  case RoundUp
  case RoundBankers
}
enum NSCalculationError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoError
  case LossOfPrecision
  case Underflow
  case Overflow
  case DivideByZero
}
var NSDecimalMaxSize: Int32 { get }
var NSDecimalNoScale: Int32 { get }
struct NSDecimal {
  var _exponent: Int32
  var _length: UInt32
  var _isNegative: UInt32
  var _isCompact: UInt32
  var _reserved: UInt32
  var _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)
  init()
  init(_exponent: Int32, _length: UInt32, _isNegative: UInt32, _isCompact: UInt32, _reserved: UInt32, _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16))
}
func NSDecimalIsNotANumber(dcm: UnsafePointer<NSDecimal>) -> Bool

/***************	Operations		***********/
func NSDecimalCopy(destination: UnsafeMutablePointer<NSDecimal>, _ source: UnsafePointer<NSDecimal>)
func NSDecimalCompact(number: UnsafeMutablePointer<NSDecimal>)
func NSDecimalCompare(leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>) -> NSComparisonResult
func NSDecimalRound(result: UnsafeMutablePointer<NSDecimal>, _ number: UnsafePointer<NSDecimal>, _ scale: Int, _ roundingMode: NSRoundingMode)
func NSDecimalNormalize(number1: UnsafeMutablePointer<NSDecimal>, _ number2: UnsafeMutablePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalAdd(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalSubtract(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalMultiply(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalDivide(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalPower(result: UnsafeMutablePointer<NSDecimal>, _ number: UnsafePointer<NSDecimal>, _ power: Int, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalMultiplyByPowerOf10(result: UnsafeMutablePointer<NSDecimal>, _ number: UnsafePointer<NSDecimal>, _ power: Int16, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalString(dcm: UnsafePointer<NSDecimal>, _ locale: AnyObject?) -> String

/***************	Exceptions		***********/
let NSDecimalNumberExactnessException: String
let NSDecimalNumberOverflowException: String
let NSDecimalNumberUnderflowException: String
let NSDecimalNumberDivideByZeroException: String
protocol NSDecimalNumberBehaviors {
  func roundingMode() -> NSRoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(operation: Selector, error: NSCalculationError, leftOperand: NSDecimalNumber, rightOperand: NSDecimalNumber?) -> NSDecimalNumber?
}

/***************	NSDecimalNumber: the class		***********/
class NSDecimalNumber : NSNumber {
  convenience init(mantissa: UInt64, exponent: Int16, isNegative flag: Bool)
  init(decimal dcm: NSDecimal)
  convenience init(string numberValue: String?)
  convenience init(string numberValue: String?, locale: AnyObject?)
  func descriptionWithLocale(locale: AnyObject?) -> String
  var decimalValue: NSDecimal { get }
  class func zero() -> NSDecimalNumber
  class func one() -> NSDecimalNumber
  class func minimum() -> NSDecimalNumber
  class func maximum() -> NSDecimalNumber
  class func notA() -> NSDecimalNumber
  func adding(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func adding(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func subtracting(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func subtracting(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func multiplyingBy(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func multiplyingBy(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func dividingBy(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func dividingBy(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func raisingToPower(power: Int) -> NSDecimalNumber
  func raisingToPower(power: Int, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func multiplyingByPowerOf10(power: Int16) -> NSDecimalNumber
  func multiplyingByPowerOf10(power: Int16, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func byRoundingAccordingToBehavior(behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func compare(decimalNumber: NSNumber) -> NSComparisonResult
  class func setDefaultBehavior(behavior: NSDecimalNumberBehaviors)
  class func defaultBehavior() -> NSDecimalNumberBehaviors
  var objCType: UnsafePointer<Int8> { get }
  var doubleValue: Double { get }
  init?(coder aDecoder: NSCoder)
  convenience init(char value: Int8)
  convenience init(unsignedChar value: UInt8)
  convenience init(short value: Int16)
  convenience init(unsignedShort value: UInt16)
  convenience init(int value: Int32)
  convenience init(unsignedInt value: UInt32)
  convenience init(long value: Int)
  convenience init(unsignedLong value: UInt)
  convenience init(longLong value: Int64)
  convenience init(unsignedLongLong value: UInt64)
  convenience init(float value: Float)
  convenience init(double value: Double)
  convenience init(bool value: Bool)
  @available(OSX 10.5, *)
  convenience init(integer value: Int)
  @available(OSX 10.5, *)
  convenience init(unsignedInteger value: UInt)
  convenience init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  convenience init()
}

/***********	A class for defining common behaviors		*******/
class NSDecimalNumberHandler : NSObject, NSDecimalNumberBehaviors, NSCoding {
  class func defaultDecimalNumberHandler() -> NSDecimalNumberHandler
  init(roundingMode: NSRoundingMode, scale: Int16, raiseOnExactness exact: Bool, raiseOnOverflow overflow: Bool, raiseOnUnderflow underflow: Bool, raiseOnDivideByZero divideByZero: Bool)
  convenience init()
  func roundingMode() -> NSRoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(operation: Selector, error: NSCalculationError, leftOperand: NSDecimalNumber, rightOperand: NSDecimalNumber?) -> NSDecimalNumber?
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/***********	Extensions to other classes		*******/
extension NSNumber {
  var decimalValue: NSDecimal { get }
}
extension NSScanner {
  func scanDecimal(dcm: UnsafeMutablePointer<NSDecimal>) -> Bool
}

/****************	Immutable Dictionary	****************/
class NSDictionary : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectFor(aKey: AnyObject) -> AnyObject?
  func keyEnumerator() -> NSEnumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<NSCopying?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSDictionary : DictionaryLiteralConvertible {
  required convenience init(dictionaryLiteral elements: (NSCopying, AnyObject)...)
  typealias Key = NSCopying
  typealias Value = AnyObject
}

extension NSDictionary : SequenceType {
  final class Generator : GeneratorType {
    var _fastGenerator: NSFastGenerator
    var _dictionary: NSDictionary { get }
    func next() -> (key: AnyObject, value: AnyObject)?
    init(_ _dict: NSDictionary)
    typealias Element = (key: AnyObject, value: AnyObject)
  }
  /// Return a *generator* over the elements of this *sequence*.
  ///
  /// - Complexity: O(1).
  func generate() -> NSDictionary.Generator
  typealias SubSequence = AnySequence<(key: AnyObject, value: AnyObject)>
}

extension NSDictionary {
  /// Initializes a newly allocated dictionary and adds to it objects from
  /// another given dictionary.
  ///
  /// - Returns: An initialized dictionary—which might be different
  ///   than the original receiver—containing the keys and values
  ///   found in `otherDictionary`.
  @objc(_swiftInitWithDictionary_NSDictionary:) convenience init(dictionary otherDictionary: NSDictionary)
}

extension NSDictionary : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension NSDictionary {
  var allKeys: [AnyObject] { get }
  func allKeysFor(anObject: AnyObject) -> [AnyObject]
  var allValues: [AnyObject] { get }
  var description: String { get }
  var descriptionInStringsFileFormat: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
  func isEqualTo(otherDictionary: [NSObject : AnyObject]) -> Bool
  func objectEnumerator() -> NSEnumerator
  func objectsFor(keys: [AnyObject], notFoundMarker marker: AnyObject) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: NSURL, atomically: Bool) -> Bool
  func keysSortedByValueUsing(comparator: Selector) -> [AnyObject]
  @available(OSX 10.7, *)
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>, count: Int)
  @available(OSX 10.8, *)
  subscript (key: NSCopying) -> AnyObject? { get }
  @available(OSX 10.6, *)
  func enumerateKeysAndObjectsUsing(block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateKeysAndObjects(options opts: NSEnumerationOptions = [], usingBlock block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func keysSortedByValueUsingComparator(cmptr: NSComparator) -> [AnyObject]
  @available(OSX 10.6, *)
  func keysSortedByValue(options opts: NSSortOptions = [], usingComparator cmptr: NSComparator) -> [AnyObject]
  @available(OSX 10.6, *)
  func keysOfEntriesPassingTest(predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  @available(OSX 10.6, *)
  func keysOfEntries(options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
}
extension NSDictionary {

  /// This method is unsafe because it could potentially cause buffer overruns. You should use -getObjects:andKeys:count:
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
extension NSDictionary {
  convenience init(object: AnyObject, forKey key: NSCopying)
  convenience init(dictionary otherDictionary: [NSObject : AnyObject])
  convenience init(dictionary otherDictionary: [NSObject : AnyObject], copyItems flag: Bool)
  convenience init(objects: [AnyObject], forKeys keys: [NSCopying])
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: NSURL)
}

/****************	Mutable Dictionary	****************/
class NSMutableDictionary : NSDictionary {
  func removeObjectFor(aKey: AnyObject)
  func setObject(anObject: AnyObject, forKey aKey: NSCopying)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  convenience init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<NSCopying?>, count cnt: Int)
  convenience init(object: AnyObject, forKey key: NSCopying)
  convenience init(dictionary otherDictionary: [NSObject : AnyObject])
  convenience init(dictionary otherDictionary: [NSObject : AnyObject], copyItems flag: Bool)
  convenience init(objects: [AnyObject], forKeys keys: [NSCopying])
}
extension NSMutableDictionary {
  func addEntriesFrom(otherDictionary: [NSObject : AnyObject])
  func removeAllObjects()
  func removeObjectsFor(keyArray: [AnyObject])
  func setDictionary(otherDictionary: [NSObject : AnyObject])
  @available(OSX 10.8, *)
  subscript (key: NSCopying) -> AnyObject?
}
extension NSMutableDictionary {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: NSURL)
}
extension NSDictionary {
  @available(OSX 10.8, *)
  class func sharedKeySetForKeys(keys: [NSCopying]) -> AnyObject
}
extension NSMutableDictionary {
  @available(OSX 10.8, *)
  /*not inherited*/ init(sharedKeySet keyset: AnyObject)
}
class NSDistributedLock : NSObject {
  init?(path: String)
  func tryLock() -> Bool
  func unlock()
  func breakLock()
  @NSCopying var lockDate: NSDate { get }
}
let NSLocalNotificationCenterType: String
enum NSNotificationSuspensionBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Drop
  case Coalesce
  case Hold
  case DeliverImmediately
}
struct NSDistributedNotificationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DeliverImmediately: NSDistributedNotificationOptions { get }
  static var PostToAllSessions: NSDistributedNotificationOptions { get }
}
let NSNotificationDeliverImmediately: NSDistributedNotificationOptions
let NSNotificationPostToAllSessions: NSDistributedNotificationOptions
class NSDistributedNotificationCenter : NSNotificationCenter {
  class func forType(notificationCenterType: String) -> NSDistributedNotificationCenter
  class func defaultCenter() -> NSDistributedNotificationCenter
  func addObserver(observer: AnyObject, selector: Selector, name: String?, object: String?, suspensionBehavior: NSNotificationSuspensionBehavior)
  func postNotificationName(name: String, object: String?, userInfo: [NSObject : AnyObject]? = [:], deliverImmediately: Bool)
  func postNotificationName(name: String, object: String?, userInfo: [NSObject : AnyObject]? = [:], options: NSDistributedNotificationOptions = [])
  var suspended: Bool
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: String?)
  func postNotificationName(aName: String, object anObject: String?)
  func postNotificationName(aName: String, object anObject: String?, userInfo aUserInfo: [NSObject : AnyObject]? = [:])
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: String?)
  init()
}
@available(OSX 10.10, *)
enum NSEnergyFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Joule
  case Kilojoule
  case Calorie
  case Kilocalorie
}
@available(OSX 10.10, *)
class NSEnergyFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var isForFoodEnergyUse: Bool
  func stringFromValue(value: Double, unit: NSEnergyFormatterUnit) -> String
  func stringFromJoules(numberInJoules: Double) -> String
  func unitStringFromValue(value: Double, unit: NSEnergyFormatterUnit) -> String
  func unitStringFromJoules(numberInJoules: Double, usedUnit unitp: UnsafeMutablePointer<NSEnergyFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
struct NSFastEnumerationState {
  var state: UInt
  var itemsPtr: AutoreleasingUnsafeMutablePointer<AnyObject?>
  var mutationsPtr: UnsafeMutablePointer<UInt>
  var extra: (UInt, UInt, UInt, UInt, UInt)
  init()
  init(state: UInt, itemsPtr: AutoreleasingUnsafeMutablePointer<AnyObject?>, mutationsPtr: UnsafeMutablePointer<UInt>, extra: (UInt, UInt, UInt, UInt, UInt))
}
protocol NSFastEnumeration {
  func countByEnumeratingWith(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class NSEnumerator : NSObject, NSFastEnumeration {
  func nextObject() -> AnyObject?
  init()
  func countByEnumeratingWith(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSEnumerator : SequenceType {
  /// Return a *generator* over the *enumerator*.
  ///
  /// - Complexity: O(1).
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}
extension NSEnumerator {
  var allObjects: [AnyObject] { get }
}
let NSCocoaErrorDomain: String
let NSPOSIXErrorDomain: String
let NSOSStatusErrorDomain: String
let NSMachErrorDomain: String
let NSUnderlyingErrorKey: String
let NSLocalizedDescriptionKey: String
let NSLocalizedFailureReasonErrorKey: String
let NSLocalizedRecoverySuggestionErrorKey: String
let NSLocalizedRecoveryOptionsErrorKey: String
let NSRecoveryAttempterErrorKey: String
let NSHelpAnchorErrorKey: String
let NSStringEncodingErrorKey: String
let NSURLErrorKey: String
let NSFilePathErrorKey: String
class NSError : NSObject, NSCopying, NSSecureCoding {
  init(domain: String, code: Int, userInfo dict: [NSObject : AnyObject]? = [:])
  var domain: String { get }
  var code: Int { get }
  var userInfo: [NSObject : AnyObject] { get }
  var localizedDescription: String { get }
  var localizedFailureReason: String? { get }
  var localizedRecoverySuggestion: String? { get }
  var localizedRecoveryOptions: [String]? { get }
  var recoveryAttempter: AnyObject? { get }
  var helpAnchor: String? { get }
  @available(OSX 10.11, *)
  class func setUserInfoValueProviderForDomain(errorDomain: String, provider: ((NSError, String) -> AnyObject?)? = nil)
  @available(OSX 10.11, *)
  class func userInfoValueProviderForDomain(errorDomain: String) -> ((NSError, String) -> AnyObject?)?
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSError : ErrorType {
  var _domain: String { get }
  var _code: Int { get }
}
extension NSObject {
  class func attemptRecoveryFromError(error: NSError, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecoverSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func attemptRecoveryFromError(error: NSError, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecoverSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  class func attemptRecoveryFromError(error: NSError, optionIndex recoveryOptionIndex: Int) -> Bool
  func attemptRecoveryFromError(error: NSError, optionIndex recoveryOptionIndex: Int) -> Bool
}

/***************	Generic Exception names		***************/
let NSGenericException: String
let NSRangeException: String
let NSInvalidArgumentException: String
let NSInternalInconsistencyException: String
let NSMallocException: String
let NSObjectInaccessibleException: String
let NSObjectNotAvailableException: String
let NSDestinationInvalidException: String
let NSPortTimeoutException: String
let NSInvalidSendPortException: String
let NSInvalidReceivePortException: String
let NSPortSendException: String
let NSPortReceiveException: String
let NSOldStyleException: String
class NSException : NSObject, NSCopying, NSCoding {
  init(name aName: String, reason aReason: String?, userInfo aUserInfo: [NSObject : AnyObject]? = [:])
  var name: String { get }
  var reason: String? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  @available(OSX 10.5, *)
  var callStackReturnAddresses: [NSNumber] { get }
  @available(OSX 10.6, *)
  var callStackSymbols: [String] { get }
  func raise()
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSException {
  class func raise(name: String, format: String, arguments argList: CVaListPointer)
}
typealias NSUncaughtExceptionHandler = (NSException) -> Void
func NSGetUncaughtExceptionHandler() -> (@convention(c) (NSException) -> Void)?
func NSSetUncaughtExceptionHandler(_: (@convention(c) (NSException) -> Void)?)
@available(OSX 10.6, *)
let NSAssertionHandlerKey: String
class NSAssertionHandler : NSObject {
  class func current() -> NSAssertionHandler
  init()
}
enum NSExpressionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ConstantValueExpressionType
  case EvaluatedObjectExpressionType
  case VariableExpressionType
  case KeyPathExpressionType
  case FunctionExpressionType
  @available(OSX 10.5, *)
  case UnionSetExpressionType
  @available(OSX 10.5, *)
  case IntersectSetExpressionType
  @available(OSX 10.5, *)
  case MinusSetExpressionType
  @available(OSX 10.5, *)
  case SubqueryExpressionType
  @available(OSX 10.5, *)
  case AggregateExpressionType
  @available(OSX 10.9, *)
  case AnyKeyExpressionType
  case BlockExpressionType
  @available(OSX 10.11, *)
  case ConditionalExpressionType
}
@available(OSX 10.4, *)
class NSExpression : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.6, *)
  /*not inherited*/ init(format expressionFormat: String, argumentArray arguments: [AnyObject])
  @available(OSX 10.6, *)
  /*not inherited*/ init(format expressionFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(forConstantValue obj: AnyObject?)
  class func forEvaluatedObject() -> NSExpression
  /*not inherited*/ init(forVariable string: String)
  /*not inherited*/ init(forKeyPath keyPath: String)
  /*not inherited*/ init(forFunction name: String, arguments parameters: [AnyObject])
  @available(OSX 10.5, *)
  /*not inherited*/ init(forAggregate subexpressions: [AnyObject])
  @available(OSX 10.5, *)
  /*not inherited*/ init(forUnionSet left: NSExpression, with right: NSExpression)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forIntersectSet left: NSExpression, with right: NSExpression)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forMinusSet left: NSExpression, with right: NSExpression)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forSubquery expression: NSExpression, usingIteratorVariable variable: String, predicate: AnyObject)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forFunction target: NSExpression, selectorName name: String, arguments parameters: [AnyObject]?)
  @available(OSX 10.9, *)
  class func forAnyKey() -> NSExpression
  @available(OSX 10.6, *)
  /*not inherited*/ init(forBlock block: (AnyObject?, [AnyObject], NSMutableDictionary?) -> AnyObject, arguments: [NSExpression]?)
  @available(OSX 10.11, *)
  /*not inherited*/ init(forConditional predicate: NSPredicate, trueExpression: NSExpression, falseExpression: NSExpression)
  init(expressionType type: NSExpressionType)
  init?(coder: NSCoder)
  var expressionType: NSExpressionType { get }
  var constantValue: AnyObject { get }
  var keyPath: String { get }
  var function: String { get }
  var variable: String { get }
  @NSCopying var operand: NSExpression { get }
  var arguments: [NSExpression]? { get }
  @available(OSX 10.5, *)
  var collection: AnyObject { get }
  @available(OSX 10.5, *)
  @NSCopying var predicate: NSPredicate { get }
  @available(OSX 10.5, *)
  @NSCopying var left: NSExpression { get }
  @available(OSX 10.5, *)
  @NSCopying var right: NSExpression { get }
  @available(OSX 10.11, *)
  @NSCopying var trueExpression: NSExpression { get }
  @available(OSX 10.11, *)
  @NSCopying var falseExpression: NSExpression { get }
  @available(OSX 10.6, *)
  var expressionBlock: (AnyObject?, [AnyObject], NSMutableDictionary?) -> AnyObject { get }
  func expressionValueWith(object: AnyObject?, context: NSMutableDictionary?) -> AnyObject
  @available(OSX 10.9, *)
  func allowEvaluation()
  convenience init()
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWith(aCoder: NSCoder)
  @available(OSX 10.4, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

extension NSExpression {
  convenience init(format expressionFormat: String, _ args: CVarArgType...)
}
struct _expressionFlags {
  var _evaluationBlocked: UInt32
  var _reservedExpressionFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedExpressionFlags: UInt32)
}
@available(OSX 10.10, *)
class NSExtensionContext : NSObject {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)? = nil)
  func cancelRequestWithError(error: NSError)
  func open(URL: NSURL, completionHandler: ((Bool) -> Void)? = nil)
  init()
}
@available(OSX 10.10, *)
let NSExtensionItemsAndErrorsKey: String
@available(OSX 10.10, *)
class NSExtensionItem : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var attributedTitle: NSAttributedString?
  @NSCopying var attributedContentText: NSAttributedString?
  var attachments: [AnyObject]?
  var userInfo: [NSObject : AnyObject]?
  init()
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.10, *)
let NSExtensionItemAttributedTitleKey: String
@available(OSX 10.10, *)
let NSExtensionItemAttributedContentTextKey: String
@available(OSX 10.10, *)
let NSExtensionItemAttachmentsKey: String
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(OSX 10.10, *)
  func beginRequestWith(context: NSExtensionContext)
}
struct NSFileCoordinatorReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutChanges: NSFileCoordinatorReadingOptions { get }
  static var ResolvesSymbolicLink: NSFileCoordinatorReadingOptions { get }
  @available(OSX 10.10, *)
  static var ImmediatelyAvailableMetadataOnly: NSFileCoordinatorReadingOptions { get }
  @available(OSX 10.10, *)
  static var ForUploading: NSFileCoordinatorReadingOptions { get }
}
struct NSFileCoordinatorWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ForDeleting: NSFileCoordinatorWritingOptions { get }
  static var ForMoving: NSFileCoordinatorWritingOptions { get }
  static var ForMerging: NSFileCoordinatorWritingOptions { get }
  static var ForReplacing: NSFileCoordinatorWritingOptions { get }
  @available(OSX 10.10, *)
  static var ContentIndependentMetadataOnly: NSFileCoordinatorWritingOptions { get }
}
@available(OSX 10.10, *)
class NSFileAccessIntent : NSObject {
  class func readingIntentWith(url: NSURL, options: NSFileCoordinatorReadingOptions = []) -> Self
  class func writingIntentWith(url: NSURL, options: NSFileCoordinatorWritingOptions = []) -> Self
  @NSCopying var url: NSURL { get }
  init()
}
@available(OSX 10.7, *)
class NSFileCoordinator : NSObject {
  class func addFilePresenter(filePresenter: NSFilePresenter)
  class func removeFilePresenter(filePresenter: NSFilePresenter)
  class func filePresenters() -> [NSFilePresenter]
  init(filePresenter filePresenterOrNil: NSFilePresenter?)
  @available(OSX 10.7, *)
  var purposeIdentifier: String
  @available(OSX 10.10, *)
  func coordinateAccessWith(intents: [NSFileAccessIntent], queue: NSOperationQueue, byAccessor accessor: (NSError?) -> Void)
  func coordinateReadingItemAt(url: NSURL, options: NSFileCoordinatorReadingOptions = [], error outError: NSErrorPointer, byAccessor reader: (NSURL) -> Void)
  func coordinateWritingItemAt(url: NSURL, options: NSFileCoordinatorWritingOptions = [], error outError: NSErrorPointer, byAccessor writer: (NSURL) -> Void)
  func coordinateReadingItemAt(readingURL: NSURL, options readingOptions: NSFileCoordinatorReadingOptions = [], writingItemAt writingURL: NSURL, options writingOptions: NSFileCoordinatorWritingOptions = [], error outError: NSErrorPointer, byAccessor readerWriter: (NSURL, NSURL) -> Void)
  func coordinateWritingItemAt(url1: NSURL, options options1: NSFileCoordinatorWritingOptions = [], writingItemAt url2: NSURL, options options2: NSFileCoordinatorWritingOptions = [], error outError: NSErrorPointer, byAccessor writer: (NSURL, NSURL) -> Void)
  func prepareForReadingItemsAtURLs(readingURLs: [NSURL], options readingOptions: NSFileCoordinatorReadingOptions = [], writingItemsAtURLs writingURLs: [NSURL], options writingOptions: NSFileCoordinatorWritingOptions = [], error outError: NSErrorPointer, byAccessor batchAccessor: (() -> Void) -> Void)
  @available(OSX 10.8, *)
  func itemAt(oldURL: NSURL, willMoveTo newURL: NSURL)
  func itemAt(oldURL: NSURL, didMoveTo newURL: NSURL)
  func cancel()
  convenience init()
}
class NSFileHandle : NSObject, NSSecureCoding {
  @NSCopying var availableData: NSData { get }
  func readDataToEndOfFile() -> NSData
  func readDataOfLength(length: Int) -> NSData
  func write(data: NSData)
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
  func encodeWith(aCoder: NSCoder)
}
extension NSFileHandle {
  class func withStandardInput() -> NSFileHandle
  class func withStandardOutput() -> NSFileHandle
  class func withStandardError() -> NSFileHandle
  class func withNullDevice() -> NSFileHandle
  convenience init?(forReadingAtPath path: String)
  convenience init?(forWritingAtPath path: String)
  convenience init?(forUpdatingAtPath path: String)
  @available(OSX 10.6, *)
  convenience init(forReadingFrom url: NSURL) throws
  @available(OSX 10.6, *)
  convenience init(forWritingTo url: NSURL) throws
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
var NSFoundationVersionWithFileManagerResourceForkSupport: Int32 { get }
@available(OSX 10.6, *)
struct NSVolumeEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipHiddenVolumes: NSVolumeEnumerationOptions { get }
  static var ProduceFileReferenceURLs: NSVolumeEnumerationOptions { get }
}
@available(OSX 10.6, *)
struct NSDirectoryEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipsSubdirectoryDescendants: NSDirectoryEnumerationOptions { get }
  static var SkipsPackageDescendants: NSDirectoryEnumerationOptions { get }
  static var SkipsHiddenFiles: NSDirectoryEnumerationOptions { get }
}
@available(OSX 10.6, *)
struct NSFileManagerItemReplacementOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UsingNewMetadataOnly: NSFileManagerItemReplacementOptions { get }
  static var WithoutDeletingBackupItem: NSFileManagerItemReplacementOptions { get }
}
@available(OSX 10.10, *)
enum NSURLRelationship : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contains
  case Same
  case Other
}
@available(OSX 10.11, *)
struct NSFileManagerUnmountOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AllPartitionsAndEjectDisk: NSFileManagerUnmountOptions { get }
  static var WithoutUI: NSFileManagerUnmountOptions { get }
}
@available(OSX 10.11, *)
let NSFileManagerUnmountDissentingProcessIdentifierErrorKey: String
@available(OSX 10.8, *)
let NSUbiquityIdentityDidChangeNotification: String
class NSFileManager : NSObject {
  class func defaultManager() -> NSFileManager
  @available(OSX 10.6, *)
  func mountedVolumeURLsIncludingResourceValuesForKeys(propertyKeys: [String]?, options: NSVolumeEnumerationOptions = []) -> [NSURL]?
  @available(OSX 10.11, *)
  func unmountVolumeAt(url: NSURL, options mask: NSFileManagerUnmountOptions = [], completionHandler: (NSError?) -> Void)
  @available(OSX 10.6, *)
  func contentsOfDirectoryAt(url: NSURL, includingPropertiesForKeys keys: [String]?, options mask: NSDirectoryEnumerationOptions = []) throws -> [NSURL]
  @available(OSX 10.6, *)
  func urLsFor(directory: NSSearchPathDirectory, inDomains domainMask: NSSearchPathDomainMask) -> [NSURL]
  @available(OSX 10.6, *)
  func urlFor(directory: NSSearchPathDirectory, inDomain domain: NSSearchPathDomainMask, appropriateFor url: NSURL?, create shouldCreate: Bool) throws -> NSURL
  @available(OSX 10.10, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<NSURLRelationship>, ofDirectoryAt directoryURL: NSURL, toItemAt otherURL: NSURL) throws
  @available(OSX 10.10, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<NSURLRelationship>, of directory: NSSearchPathDirectory, inDomain domainMask: NSSearchPathDomainMask, toItemAt url: NSURL) throws
  @available(OSX 10.7, *)
  func createDirectoryAt(url: NSURL, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  @available(OSX 10.7, *)
  func createSymbolicLinkAt(url: NSURL, withDestinationURL destURL: NSURL) throws
  @available(OSX 10.5, *)
  unowned(unsafe) var delegate: @sil_unmanaged NSFileManagerDelegate?
  @available(OSX 10.5, *)
  func setAttributes(attributes: [String : AnyObject] = [:], ofItemAtPath path: String) throws
  @available(OSX 10.5, *)
  func createDirectoryAtPath(path: String, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  @available(OSX 10.5, *)
  func contentsOfDirectoryAtPath(path: String) throws -> [String]
  @available(OSX 10.5, *)
  func subpathsOfDirectoryAtPath(path: String) throws -> [String]
  @available(OSX 10.5, *)
  func attributesOfItemAtPath(path: String) throws -> [String : AnyObject]
  @available(OSX 10.5, *)
  func attributesOfFileSystemForPath(path: String) throws -> [String : AnyObject]
  @available(OSX 10.5, *)
  func createSymbolicLinkAtPath(path: String, withDestinationPath destPath: String) throws
  @available(OSX 10.5, *)
  func destinationOfSymbolicLinkAtPath(path: String) throws -> String
  @available(OSX 10.5, *)
  func copyItemAtPath(srcPath: String, toPath dstPath: String) throws
  @available(OSX 10.5, *)
  func moveItemAtPath(srcPath: String, toPath dstPath: String) throws
  @available(OSX 10.5, *)
  func linkItemAtPath(srcPath: String, toPath dstPath: String) throws
  @available(OSX 10.5, *)
  func removeItemAtPath(path: String) throws
  @available(OSX 10.6, *)
  func copyItemAt(srcURL: NSURL, to dstURL: NSURL) throws
  @available(OSX 10.6, *)
  func moveItemAt(srcURL: NSURL, to dstURL: NSURL) throws
  @available(OSX 10.6, *)
  func linkItemAt(srcURL: NSURL, to dstURL: NSURL) throws
  @available(OSX 10.6, *)
  func removeItemAt(URL: NSURL) throws
  @available(OSX 10.8, *)
  func trashItemAt(url: NSURL, resultingItemURL outResultingURL: AutoreleasingUnsafeMutablePointer<NSURL?>) throws
  var currentDirectoryPath: String { get }
  func changeCurrentDirectoryPath(path: String) -> Bool
  func fileExistsAtPath(path: String) -> Bool
  func fileExistsAtPath(path: String, isDirectory: UnsafeMutablePointer<ObjCBool>) -> Bool
  func isReadableFileAtPath(path: String) -> Bool
  func isWritableFileAtPath(path: String) -> Bool
  func isExecutableFileAtPath(path: String) -> Bool
  func isDeletableFileAtPath(path: String) -> Bool
  func contentsEqualAtPath(path1: String, andPath path2: String) -> Bool
  func displayNameAtPath(path: String) -> String
  func componentsToDisplayForPath(path: String) -> [String]?
  func enumeratorAtPath(path: String) -> NSDirectoryEnumerator?
  @available(OSX 10.6, *)
  func enumeratorAt(url: NSURL, includingPropertiesForKeys keys: [String]?, options mask: NSDirectoryEnumerationOptions = [], errorHandler handler: ((NSURL, NSError) -> Bool)? = nil) -> NSDirectoryEnumerator?
  func subpathsAtPath(path: String) -> [String]?
  func contentsAtPath(path: String) -> NSData?
  func createFileAtPath(path: String, contents data: NSData?, attributes attr: [String : AnyObject]? = [:]) -> Bool
  func fileSystemRepresentationWithPath(path: String) -> UnsafePointer<Int8>
  func stringWithFileSystemRepresentation(str: UnsafePointer<Int8>, length len: Int) -> String
  @available(OSX 10.6, *)
  func replaceItemAt(originalItemURL: NSURL, withItemAt newItemURL: NSURL, backupItemName: String?, options: NSFileManagerItemReplacementOptions = [], resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<NSURL?>) throws
  @available(OSX 10.7, *)
  func setUbiquitous(flag: Bool, itemAt url: NSURL, destinationURL: NSURL) throws
  @available(OSX 10.7, *)
  func isUbiquitousItemAt(url: NSURL) -> Bool
  @available(OSX 10.7, *)
  func startDownloadingUbiquitousItemAt(url: NSURL) throws
  @available(OSX 10.7, *)
  func evictUbiquitousItemAt(url: NSURL) throws
  @available(OSX 10.7, *)
  func urlForUbiquityContainerIdentifier(containerIdentifier: String?) -> NSURL?
  @available(OSX 10.7, *)
  func urlForPublishingUbiquitousItemAt(url: NSURL, expirationDate outDate: AutoreleasingUnsafeMutablePointer<NSDate?>) throws -> NSURL
  @available(OSX 10.8, *)
  @NSCopying var ubiquityIdentityToken: protocol<NSCoding, NSCopying, NSObjectProtocol>? { get }
  @available(OSX 10.8, *)
  func containerURLForSecurityApplicationGroupIdentifier(groupIdentifier: String) -> NSURL?
  init()
}
extension NSObject {
}
protocol NSFileManagerDelegate : NSObjectProtocol {
  optional func fileManager(fileManager: NSFileManager, shouldCopyItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldCopyItemAt srcURL: NSURL, to dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, copyingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, copyingItemAt srcURL: NSURL, to dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldMoveItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldMoveItemAt srcURL: NSURL, to dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, movingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, movingItemAt srcURL: NSURL, to dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldLinkItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldLinkItemAt srcURL: NSURL, to dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, linkingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, linkingItemAt srcURL: NSURL, to dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldRemoveItemAtPath path: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldRemoveItemAt URL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, removingItemAtPath path: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, removingItemAt URL: NSURL) -> Bool
}
class NSDirectoryEnumerator : NSEnumerator {
  var fileAttributes: [String : AnyObject]? { get }
  var directoryAttributes: [String : AnyObject]? { get }
  func skipDescendents()
  @available(OSX 10.6, *)
  var level: Int { get }
  @available(OSX 10.6, *)
  func skipDescendants()
  init()
}
let NSFileType: String
let NSFileTypeDirectory: String
let NSFileTypeRegular: String
let NSFileTypeSymbolicLink: String
let NSFileTypeSocket: String
let NSFileTypeCharacterSpecial: String
let NSFileTypeBlockSpecial: String
let NSFileTypeUnknown: String
let NSFileSize: String
let NSFileModificationDate: String
let NSFileReferenceCount: String
let NSFileDeviceIdentifier: String
let NSFileOwnerAccountName: String
let NSFileGroupOwnerAccountName: String
let NSFilePosixPermissions: String
let NSFileSystemNumber: String
let NSFileSystemFileNumber: String
let NSFileExtensionHidden: String
let NSFileHFSCreatorCode: String
let NSFileHFSTypeCode: String
let NSFileImmutable: String
let NSFileAppendOnly: String
let NSFileCreationDate: String
let NSFileOwnerAccountID: String
let NSFileGroupOwnerAccountID: String
let NSFileBusy: String
let NSFileSystemSize: String
let NSFileSystemFreeSize: String
let NSFileSystemNodes: String
let NSFileSystemFreeNodes: String
extension NSDictionary {
  func fileSize() -> UInt64
  func fileModificationDate() -> NSDate?
  func fileType() -> String?
  func filePosixPermissions() -> Int
  func fileOwnerAccountName() -> String?
  func fileGroupOwnerAccountName() -> String?
  func fileSystemNumber() -> Int
  func fileSystemFileNumber() -> Int
  func fileExtensionHidden() -> Bool
  func fileHFSCreatorCode() -> OSType
  func fileHFSTypeCode() -> OSType
  func fileIsImmutable() -> Bool
  func fileIsAppendOnly() -> Bool
  func fileCreationDate() -> NSDate?
  func fileOwnerAccountID() -> NSNumber?
  func fileGroupOwnerAccountID() -> NSNumber?
}
protocol NSFilePresenter : NSObjectProtocol {
  @NSCopying var presentedItemURL: NSURL? { get }
  @available(OSX 10.5, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  @available(OSX 10.8, *)
  @NSCopying optional var primaryPresentedItemURL: NSURL? { get }
  optional func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChangesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  optional func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (NSError?) -> Void)
  optional func presentedItemDidMoveTo(newURL: NSURL)
  optional func presentedItemDidChange()
  @available(OSX 10.7, *)
  optional func presentedItemDidGainVersion(version: NSFileVersion)
  @available(OSX 10.7, *)
  optional func presentedItemDidLose(version: NSFileVersion)
  @available(OSX 10.7, *)
  optional func presentedItemDidResolveConflictVersion(version: NSFileVersion)
  optional func accommodatePresentedSubitemDeletionAt(url: NSURL, completionHandler: (NSError?) -> Void)
  optional func presentedSubitemDidAppearAt(url: NSURL)
  optional func presentedSubitemAt(oldURL: NSURL, didMoveTo newURL: NSURL)
  optional func presentedSubitemDidChangeAt(url: NSURL)
  @available(OSX 10.7, *)
  optional func presentedSubitemAt(url: NSURL, didGainVersion version: NSFileVersion)
  @available(OSX 10.7, *)
  optional func presentedSubitemAt(url: NSURL, didLose version: NSFileVersion)
  @available(OSX 10.7, *)
  optional func presentedSubitemAt(url: NSURL, didResolveConflictVersion version: NSFileVersion)
}
struct NSFileVersionAddingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: NSFileVersionAddingOptions { get }
}
struct NSFileVersionReplacingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: NSFileVersionReplacingOptions { get }
}
@available(OSX 10.7, *)
class NSFileVersion : NSObject {
  class func currentVersionOfItemAt(url: NSURL) -> NSFileVersion?
  class func otherVersionsOfItemAt(url: NSURL) -> [NSFileVersion]?
  class func unresolvedConflictVersionsOfItemAt(url: NSURL) -> [NSFileVersion]?
  @available(OSX 10.10, *)
  class func getNonlocalVersionsOfItemAt(url: NSURL, completionHandler: ([NSFileVersion]?, NSError?) -> Void)
  /*not inherited*/ init?(ofItemAt url: NSURL, forPersistentIdentifier persistentIdentifier: AnyObject)
  @available(OSX 10.7, *)
  class func addOfItemAt(url: NSURL, withContentsOf contentsURL: NSURL, options: NSFileVersionAddingOptions = []) throws -> NSFileVersion
  @available(OSX 10.7, *)
  class func temporaryDirectoryURLForNewVersionOfItemAt(url: NSURL) -> NSURL
  @NSCopying var url: NSURL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @NSCopying var modificationDate: NSDate? { get }
  var persistentIdentifier: NSCoding { get }
  var isConflict: Bool { get }
  var isResolved: Bool
  @available(OSX 10.7, *)
  var isDiscardable: Bool
  @available(OSX 10.10, *)
  var hasLocalContents: Bool { get }
  @available(OSX 10.10, *)
  var hasThumbnail: Bool { get }
  func replaceItemAt(url: NSURL, options: NSFileVersionReplacingOptions = []) throws -> NSURL
  func remove() throws
  class func removeOtherVersionsOfItemAt(url: NSURL) throws
  init()
}
@available(OSX 10.6, *)
struct NSFileWrapperReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immediate: NSFileWrapperReadingOptions { get }
  static var WithoutMapping: NSFileWrapperReadingOptions { get }
}
@available(OSX 10.6, *)
struct NSFileWrapperWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Atomic: NSFileWrapperWritingOptions { get }
  static var WithNameUpdating: NSFileWrapperWritingOptions { get }
}
@available(OSX 10.0, *)
class NSFileWrapper : NSObject, NSCoding {
  @available(OSX 10.6, *)
  init(url: NSURL, options: NSFileWrapperReadingOptions = []) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : NSFileWrapper])
  init(regularFileWithContents contents: NSData)
  @available(OSX 10.6, *)
  init(symbolicLinkWithDestinationURL url: NSURL)
  init?(serializedRepresentation serializeRepresentation: NSData)
  init?(coder inCoder: NSCoder)
  var isDirectory: Bool { get }
  var isRegularFile: Bool { get }
  var isSymbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  @available(OSX 10.6, *)
  func matchesContentsOf(url: NSURL) -> Bool
  @available(OSX 10.6, *)
  func readFrom(url: NSURL, options: NSFileWrapperReadingOptions = []) throws
  @available(OSX 10.6, *)
  func writeTo(url: NSURL, options: NSFileWrapperWritingOptions = [], originalContentsURL: NSURL?) throws
  @NSCopying var serializedRepresentation: NSData? { get }
  func add(child: NSFileWrapper) -> String
  func addRegularFileWithContents(data: NSData, preferredFilename fileName: String) -> String
  func remove(child: NSFileWrapper)
  var fileWrappers: [String : NSFileWrapper]? { get }
  func keyFor(child: NSFileWrapper) -> String?
  @NSCopying var regularFileContents: NSData? { get }
  @available(OSX 10.6, *)
  @NSCopying var symbolicLinkDestinationURL: NSURL? { get }
  convenience init()
  @available(OSX 10.0, *)
  func encodeWith(aCoder: NSCoder)
}
extension NSFileWrapper {
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithURL:options:error: instead.")
  convenience init?(path: String)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initSymbolicLinkWithDestinationURL: and -setPreferredFileName:, if necessary, instead.")
  convenience init(symbolicLinkWithDestination path: String)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -matchesContentsOfURL: instead.")
  func needsToBeUpdatedFromPath(path: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -readFromURL:options:error: instead.")
  func updateFromPath(path: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -writeToURL:options:originalContentsURL:error: instead.")
  func writeToFile(path: String, atomically atomicFlag: Bool, updateFilenames updateFilenamesFlag: Bool) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Instantiate a new NSFileWrapper with -initWithURL:options:error:, send it -setPreferredFileName: if necessary, then use -addFileWrapper: instead.")
  func addFileWithPath(path: String) -> String
  @available(OSX, introduced=10.0, deprecated=10.10, message="Instantiate a new NSFileWrapper with -initWithSymbolicLinkDestinationURL:, send it -setPreferredFileName: if necessary, then use -addFileWrapper: instead.")
  func addSymbolicLinkWithDestination(path: String, preferredFilename filename: String) -> String
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -symbolicLinkDestinationURL instead.")
  func symbolicLinkDestination() -> String
}
@available(OSX 10.10, *)
enum NSFormattingContext : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Dynamic
  case Standalone
  case ListItem
  case BeginningOfSentence
  case MiddleOfSentence
}
@available(OSX 10.10, *)
enum NSFormattingUnitStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Short
  case Medium
  case Long
}
class NSFormatter : NSObject, NSCopying, NSCoding {
  func stringForObjectValue(obj: AnyObject) -> String?
  func attributedStringForObjectValue(obj: AnyObject, withDefaultAttributes attrs: [String : AnyObject]? = [:]) -> NSAttributedString?
  func editingStringForObjectValue(obj: AnyObject) -> String?
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialString: String, newEditing newString: AutoreleasingUnsafeMutablePointer<NSString?>, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString?>, proposedSelectedRange proposedSelRangePtr: NSRangePointer, originalString origString: String, originalSelectedRange origSelRange: NSRange, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias NSPoint = CGPoint
typealias NSPointPointer = UnsafeMutablePointer<NSPoint>
typealias NSPointArray = UnsafeMutablePointer<NSPoint>
typealias NSSize = CGSize
typealias NSSizePointer = UnsafeMutablePointer<NSSize>
typealias NSSizeArray = UnsafeMutablePointer<NSSize>
typealias NSRect = CGRect
typealias NSRectPointer = UnsafeMutablePointer<NSRect>
typealias NSRectArray = UnsafeMutablePointer<NSRect>
enum NSRectEdge : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MinX
  case MinY
  case MaxX
  case MaxY
}

extension NSRectEdge {
  init(rectEdge: CGRectEdge)
}
struct NSEdgeInsets {
  var top: CGFloat
  var left: CGFloat
  var bottom: CGFloat
  var right: CGFloat
  init()
  init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
}
struct NSAlignmentOptions : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var AlignMinXInward: NSAlignmentOptions { get }
  static var AlignMinYInward: NSAlignmentOptions { get }
  static var AlignMaxXInward: NSAlignmentOptions { get }
  static var AlignMaxYInward: NSAlignmentOptions { get }
  static var AlignWidthInward: NSAlignmentOptions { get }
  static var AlignHeightInward: NSAlignmentOptions { get }
  static var AlignMinXOutward: NSAlignmentOptions { get }
  static var AlignMinYOutward: NSAlignmentOptions { get }
  static var AlignMaxXOutward: NSAlignmentOptions { get }
  static var AlignMaxYOutward: NSAlignmentOptions { get }
  static var AlignWidthOutward: NSAlignmentOptions { get }
  static var AlignHeightOutward: NSAlignmentOptions { get }
  static var AlignMinXNearest: NSAlignmentOptions { get }
  static var AlignMinYNearest: NSAlignmentOptions { get }
  static var AlignMaxXNearest: NSAlignmentOptions { get }
  static var AlignMaxYNearest: NSAlignmentOptions { get }
  static var AlignWidthNearest: NSAlignmentOptions { get }
  static var AlignHeightNearest: NSAlignmentOptions { get }
  static var AlignRectFlipped: NSAlignmentOptions { get }
  static var AlignAllEdgesInward: NSAlignmentOptions { get }
  static var AlignAllEdgesOutward: NSAlignmentOptions { get }
  static var AlignAllEdgesNearest: NSAlignmentOptions { get }
}
let NSZeroPoint: NSPoint
let NSZeroSize: NSSize
let NSZeroRect: NSRect
@available(OSX 10.10, *)
let NSEdgeInsetsZero: NSEdgeInsets
func NSMakePoint(x: CGFloat, _ y: CGFloat) -> NSPoint
func NSMakeSize(w: CGFloat, _ h: CGFloat) -> NSSize
func NSMakeRect(x: CGFloat, _ y: CGFloat, _ w: CGFloat, _ h: CGFloat) -> NSRect
func NSMaxX(aRect: NSRect) -> CGFloat
func NSMaxY(aRect: NSRect) -> CGFloat
func NSMidX(aRect: NSRect) -> CGFloat
func NSMidY(aRect: NSRect) -> CGFloat
func NSMinX(aRect: NSRect) -> CGFloat
func NSMinY(aRect: NSRect) -> CGFloat
func NSWidth(aRect: NSRect) -> CGFloat
func NSHeight(aRect: NSRect) -> CGFloat
func NSRectFromCGRect(cgrect: CGRect) -> NSRect
func NSRectToCGRect(nsrect: NSRect) -> CGRect
func NSPointFromCGPoint(cgpoint: CGPoint) -> NSPoint
func NSPointToCGPoint(nspoint: NSPoint) -> CGPoint
func NSSizeFromCGSize(cgsize: CGSize) -> NSSize
func NSSizeToCGSize(nssize: NSSize) -> CGSize
func NSEdgeInsetsMake(top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> NSEdgeInsets
func NSEqualPoints(aPoint: NSPoint, _ bPoint: NSPoint) -> Bool
func NSEqualSizes(aSize: NSSize, _ bSize: NSSize) -> Bool
func NSEqualRects(aRect: NSRect, _ bRect: NSRect) -> Bool
func NSIsEmptyRect(aRect: NSRect) -> Bool
@available(OSX 10.10, *)
func NSEdgeInsetsEqual(aInsets: NSEdgeInsets, _ bInsets: NSEdgeInsets) -> Bool
func NSInsetRect(aRect: NSRect, _ dX: CGFloat, _ dY: CGFloat) -> NSRect
func NSIntegralRect(aRect: NSRect) -> NSRect
@available(OSX 10.7, *)
func NSIntegralRectWithOptions(aRect: NSRect, _ opts: NSAlignmentOptions) -> NSRect
func NSUnionRect(aRect: NSRect, _ bRect: NSRect) -> NSRect
func NSIntersectionRect(aRect: NSRect, _ bRect: NSRect) -> NSRect
func NSOffsetRect(aRect: NSRect, _ dX: CGFloat, _ dY: CGFloat) -> NSRect
func NSDivideRect(inRect: NSRect, _ slice: UnsafeMutablePointer<NSRect>, _ rem: UnsafeMutablePointer<NSRect>, _ amount: CGFloat, _ edge: NSRectEdge)
func NSPointInRect(aPoint: NSPoint, _ aRect: NSRect) -> Bool
func NSMouseInRect(aPoint: NSPoint, _ aRect: NSRect, _ flipped: Bool) -> Bool
func NSContainsRect(aRect: NSRect, _ bRect: NSRect) -> Bool
func NSIntersectsRect(aRect: NSRect, _ bRect: NSRect) -> Bool
func NSStringFromPoint(aPoint: NSPoint) -> String
func NSStringFromSize(aSize: NSSize) -> String
func NSStringFromRect(aRect: NSRect) -> String
func NSPointFromString(aString: String) -> NSPoint
func NSSizeFromString(aString: String) -> NSSize
func NSRectFromString(aString: String) -> NSRect
extension NSValue {
  /*not inherited*/ init(point: NSPoint)
  /*not inherited*/ init(size: NSSize)
  /*not inherited*/ init(rect: NSRect)
  @available(OSX 10.10, *)
  /*not inherited*/ init(edgeInsets insets: NSEdgeInsets)
  var pointValue: NSPoint { get }
  var sizeValue: NSSize { get }
  var rectValue: NSRect { get }
  @available(OSX 10.10, *)
  var edgeInsetsValue: NSEdgeInsets { get }
}
extension NSCoder {
  func encode(point: NSPoint)
  func decodePoint() -> NSPoint
  func encode(size: NSSize)
  func decodeSize() -> NSSize
  func encode(rect: NSRect)
  func decodeRect() -> NSRect
}
extension NSCoder {
  func encode(point: NSPoint, forKey key: String)
  func encode(size: NSSize, forKey key: String)
  func encode(rect: NSRect, forKey key: String)
  func decodePointForKey(key: String) -> NSPoint
  func decodeSizeForKey(key: String) -> NSSize
  func decodeRectForKey(key: String) -> NSRect
}
func NSFileTypeForHFSTypeCode(hfsFileTypeCode: OSType) -> String!
func NSHFSTypeCodeFromFileType(fileTypeString: String!) -> OSType
func NSHFSTypeOfFile(fullFilePath: String!) -> String!

/*!
    @const NSHTTPCookieName
    @discussion Key for cookie name
*/
let NSHTTPCookieName: String

/*!
    @const NSHTTPCookieValue
    @discussion Key for cookie value
*/
let NSHTTPCookieValue: String

/*!
    @const NSHTTPCookieOriginURL
    @discussion Key for cookie origin URL
*/
let NSHTTPCookieOriginURL: String

/*!
    @const NSHTTPCookieVersion
    @discussion Key for cookie version
*/
let NSHTTPCookieVersion: String

/*!
    @const NSHTTPCookieDomain
    @discussion Key for cookie domain
*/
let NSHTTPCookieDomain: String

/*!
    @const NSHTTPCookiePath
    @discussion Key for cookie path
*/
let NSHTTPCookiePath: String

/*!
    @const NSHTTPCookieSecure
    @discussion Key for cookie secure flag
*/
let NSHTTPCookieSecure: String

/*!
    @const NSHTTPCookieExpires
    @discussion Key for cookie expiration date
*/
let NSHTTPCookieExpires: String

/*!
    @const NSHTTPCookieComment
    @discussion Key for cookie comment text
*/
let NSHTTPCookieComment: String

/*!
    @const NSHTTPCookieCommentURL
    @discussion Key for cookie comment URL
*/
let NSHTTPCookieCommentURL: String

/*!
    @const NSHTTPCookieDiscard
    @discussion Key for cookie discard (session-only) flag
*/
let NSHTTPCookieDiscard: String

/*!
    @const NSHTTPCookieMaximumAge
    @discussion Key for cookie maximum age (an alternate way of specifying the expiration)
*/
let NSHTTPCookieMaximumAge: String

/*!
    @const NSHTTPCookiePort
    @discussion Key for cookie ports
*/
let NSHTTPCookiePort: String

/*!
    @class NSHTTPCookie
    @abstract NSHTTPCookie represents an http cookie.
    @discussion A NSHTTPCookie instance represents a single http cookie. It is
    an immutable object initialized from a dictionary that contains
    the various cookie attributes. It has accessors to get the various
    attributes of a cookie.
*/
class NSHTTPCookie : NSObject {

  /*!
      @method initWithProperties:
      @abstract Initialize a NSHTTPCookie object with a dictionary of
      parameters
      @param properties The dictionary of properties to be used to
      initialize this cookie.
      @discussion Supported dictionary keys and value types for the
      given dictionary are as follows.
  
      All properties can handle an NSString value, but some can also
      handle other types.
  
      <table border=1 cellspacing=2 cellpadding=4>
      <tr>
          <th>Property key constant</th>
          <th>Type of value</th>
          <th>Required</th>
          <th>Description</th>
      </tr>
      <tr>
          <td>NSHTTPCookieComment</td>
          <td>NSString</td>
          <td>NO</td>
          <td>Comment for the cookie. Only valid for version 1 cookies and
          later. Default is nil.</td>
      </tr>
      <tr>
          <td>NSHTTPCookieCommentURL</td>
          <td>NSURL or NSString</td>
          <td>NO</td>
          <td>Comment URL for the cookie. Only valid for version 1 cookies
          and later. Default is nil.</td>
      </tr>
      <tr>
          <td>NSHTTPCookieDomain</td>
          <td>NSString</td>
          <td>Special, a value for either NSHTTPCookieOriginURL or
          NSHTTPCookieDomain must be specified.</td>
          <td>Domain for the cookie. Inferred from the value for
          NSHTTPCookieOriginURL if not provided.</td>
      </tr>
      <tr>
          <td>NSHTTPCookieDiscard</td>
          <td>NSString</td>
          <td>NO</td>
          <td>A string stating whether the cookie should be discarded at
          the end of the session. String value must be either "TRUE" or
          "FALSE". Default is "FALSE", unless this is cookie is version
          1 or greater and a value for NSHTTPCookieMaximumAge is not
          specified, in which case it is assumed "TRUE".</td>
      </tr>
      <tr>
          <td>NSHTTPCookieExpires</td>
          <td>NSDate or NSString</td>
          <td>NO</td>
          <td>Expiration date for the cookie. Used only for version 0
          cookies. Ignored for version 1 or greater.</td>
      </tr>
      <tr>
          <td>NSHTTPCookieMaximumAge</td>
          <td>NSString</td>
          <td>NO</td>
          <td>A string containing an integer value stating how long in
          seconds the cookie should be kept, at most. Only valid for
          version 1 cookies and later. Default is "0".</td>
      </tr>
      <tr>
          <td>NSHTTPCookieName</td>
          <td>NSString</td>
          <td>YES</td>
          <td>Name of the cookie</td>
      </tr>
      <tr>
          <td>NSHTTPCookieOriginURL</td>
          <td>NSURL or NSString</td>
          <td>Special, a value for either NSHTTPCookieOriginURL or
          NSHTTPCookieDomain must be specified.</td>
          <td>URL that set this cookie. Used as default for other fields
          as noted.</td>
      </tr>
      <tr>
          <td>NSHTTPCookiePath</td>
          <td>NSString</td>
          <td>NO</td>
          <td>Path for the cookie. Inferred from the value for
          NSHTTPCookieOriginURL if not provided. Default is "/".</td>
      </tr>
      <tr>
          <td>NSHTTPCookiePort</td>
          <td>NSString</td>
          <td>NO</td>
          <td>comma-separated integer values specifying the ports for the
          cookie. Only valid for version 1 cookies and later. Default is
          empty string ("").</td>
      </tr>
      <tr>
          <td>NSHTTPCookieSecure</td>
          <td>NSString</td>
          <td>NO</td>
          <td>A string stating whether the cookie should be transmitted
          only over secure channels. String value must be either "TRUE"
          or "FALSE". Default is "FALSE".</td>
      </tr>
      <tr>
          <td>NSHTTPCookieValue</td>
          <td>NSString</td>
          <td>YES</td>
          <td>Value of the cookie</td>
      </tr>
      <tr>
          <td>NSHTTPCookieVersion</td>
          <td>NSString</td>
          <td>NO</td>
          <td>Specifies the version of the cookie. Must be either "0" or
          "1". Default is "0".</td>
      </tr>
      </table>
      <p>
      All other keys are ignored.
      @result An initialized NSHTTPCookie, or nil if the set of
      dictionary keys is invalid, for example because a required key is
      missing, or a recognized key maps to an illegal value.
  */
  init?(properties: [String : AnyObject])

  /*!
      @method requestHeaderFieldsWithCookies:
      @abstract Return a dictionary of header fields that can be used to add the
      specified cookies to the request.
      @param cookies The cookies to turn into request headers.
      @result An NSDictionary where the keys are header field names, and the values
      are the corresponding header field values.
  */
  class func requestHeaderFieldsWith(cookies: [NSHTTPCookie]) -> [String : String]

  /*!
      @method cookiesWithResponseHeaderFields:forURL:
      @abstract Return an array of cookies parsed from the specified response header fields and URL.
      @param headerFields The response header fields to check for cookies.
      @param URL The URL that the cookies came from - relevant to how the cookies are interpeted.
      @result An NSArray of NSHTTPCookie objects
      @discussion This method will ignore irrelevant header fields so
      you can pass a dictionary containing data other than cookie data.
  */
  class func cookiesWithResponseHeaderFields(headerFields: [String : String], forURL URL: NSURL) -> [NSHTTPCookie]

  /*!
      @method properties
      @abstract Returns a dictionary representation of the receiver.
      @discussion This method returns a dictionary representation of the
      NSHTTPCookie which can be saved and passed to
      <tt>-initWithProperties:</tt> or <tt>+cookieWithProperties:</tt>
      later to reconstitute an equivalent cookie.
      <p>See the NSHTTPCookie <tt>-initWithProperties:</tt> method for
      more information on the constraints imposed on the dictionary, and
      for descriptions of the supported keys and values.
      @result The dictionary representation of the receiver.
  */
  var properties: [String : AnyObject]? { get }

  /*!
      @method version
      @abstract Returns the version of the receiver.
      @discussion Version 0 maps to "old-style" Netscape cookies.
      Version 1 maps to RFC2965 cookies. There may be future versions.
      @result the version of the receiver.
  */
  var version: Int { get }

  /*!
      @method name
      @abstract Returns the name of the receiver.
      @result the name of the receiver.
  */
  var name: String { get }

  /*!
      @method value
      @abstract Returns the value of the receiver.
      @result the value of the receiver.
  */
  var value: String { get }

  /*!
      @method expiresDate
      @abstract Returns the expires date of the receiver.
      @result the expires date of the receiver.
      @discussion The expires date is the date when the cookie should be
      deleted. The result will be nil if there is no specific expires
      date. This will be the case only for "session-only" cookies.
      @result The expires date of the receiver.
  */
  @NSCopying var expiresDate: NSDate? { get }

  /*!
      @method isSessionOnly
      @abstract Returns whether the receiver is session-only.
      @result YES if this receiver should be discarded at the end of the
      session (regardless of expiration date), NO if receiver need not
      be discarded at the end of the session.
  */
  var isSessionOnly: Bool { get }

  /*!
      @method domain
      @abstract Returns the domain of the receiver.
      @discussion This value specifies URL domain to which the cookie
      should be sent. A domain with a leading dot means the cookie
      should be sent to subdomains as well, assuming certain other
      restrictions are valid. See RFC 2965 for more detail.
      @result The domain of the receiver.
  */
  var domain: String { get }

  /*!
      @method path
      @abstract Returns the path of the receiver.
      @discussion This value specifies the URL path under the cookie's
      domain for which this cookie should be sent. The cookie will also
      be sent for children of that path, so "/" is the most general.
      @result The path of the receiver.
  */
  var path: String { get }

  /*!
      @method isSecure
      @abstract Returns whether the receiver should be sent only over
      secure channels
      @discussion Cookies may be marked secure by a server (or by a javascript).
      Cookies marked as such must only be sent via an encrypted connection to 
      trusted servers (i.e. via SSL or TLS), and should not be delievered to any
      javascript applications to prevent cross-site scripting vulnerabilities.
      @result YES if this cookie should be sent only over secure channels,
      NO otherwise.
  */
  var isSecure: Bool { get }

  /*!
      @method isHTTPOnly
      @abstract Returns whether the receiver should only be sent to HTTP servers
      per RFC 2965
      @discussion Cookies may be marked as HTTPOnly by a server (or by a javascript).
      Cookies marked as such must only be sent via HTTP Headers in HTTP Requests
      for URL's that match both the path and domain of the respective Cookies.
      Specifically these cookies should not be delivered to any javascript 
      applications to prevent cross-site scripting vulnerabilities.
      @result YES if this cookie should only be sent via HTTP headers,
      NO otherwise.
  */
  var isHTTPOnly: Bool { get }

  /*!
      @method comment
      @abstract Returns the comment of the receiver.
      @discussion This value specifies a string which is suitable for
      presentation to the user explaining the contents and purpose of this
      cookie. It may be nil.
      @result The comment of the receiver, or nil if the receiver has no
      comment.
  */
  var comment: String? { get }

  /*!
      @method commentURL
      @abstract Returns the comment URL of the receiver.
      @discussion This value specifies a URL which is suitable for
      presentation to the user as a link for further information about
      this cookie. It may be nil.
      @result The comment URL of the receiver, or nil if the receiver
      has no comment URL.
  */
  @NSCopying var commentURL: NSURL? { get }

  /*!
      @method portList
      @abstract Returns the list ports to which the receiver should be
      sent.
      @discussion This value specifies an NSArray of NSNumbers
      (containing integers) which specify the only ports to which this
      cookie should be sent.
      @result The list ports to which the receiver should be sent. The
      array may be nil, in which case this cookie can be sent to any
      port.
  */
  var portList: [NSNumber]? { get }
  init()
}

/*!
    @enum NSHTTPCookieAcceptPolicy
    @abstract Values for the different cookie accept policies
    @constant NSHTTPCookieAcceptPolicyAlways Accept all cookies
    @constant NSHTTPCookieAcceptPolicyNever Reject all cookies
    @constant NSHTTPCookieAcceptPolicyOnlyFromMainDocumentDomain Accept cookies
    only from the main document domain
*/
enum NSHTTPCookieAcceptPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Always
  case Never
  case OnlyFromMainDocumentDomain
}

/*!
    @class NSHTTPCookieStorage 
    @discussion NSHTTPCookieStorage implements a singleton object (shared
    instance) which manages the shared cookie store.  It has methods
    to allow clients to set and remove cookies, and get the current
    set of cookies.  It also has convenience methods to parse and
    generate cookie-related HTTP header fields.
*/
class NSHTTPCookieStorage : NSObject {

  /*!
      @method sharedHTTPCookieStorage
      @abstract Get the shared cookie storage in the default location.
      @result The shared cookie storage
      @discussion Starting in OS X 10.11, each app has its own sharedHTTPCookieStorage singleton, 
      which will not be shared with other applications.
  */
  class func shared() -> NSHTTPCookieStorage

  /*!
      @method sharedCookieStorageForGroupContainerIdentifier:
      @abstract Get the cookie storage for the container associated with the specified application group identifier
      @param identifier The application group identifier
      @result A cookie storage with a persistent store in the application group container
      @discussion By default, applications and associated app extensions have different data containers, which means
      that the sharedHTTPCookieStorage singleton will refer to different persistent cookie stores in an application and
      any app extensions that it contains. This method allows clients to create a persistent cookie storage that can be
      shared among all applications and extensions with access to the same application group. Subsequent calls to this
      method with the same identifier will return the same cookie storage instance.
   */
  @available(OSX 10.11, *)
  class func sharedCookieStorageForGroupContainerIdentifier(identifier: String) -> NSHTTPCookieStorage

  /*!
      @method cookies
      @abstract Get all the cookies
      @result An NSArray of NSHTTPCookies
  */
  var cookies: [NSHTTPCookie]? { get }

  /*!
      @method setCookie:
      @abstract Set a cookie
      @discussion The cookie will override an existing cookie with the
      same name, domain and path, if any.
  */
  func setCookie(cookie: NSHTTPCookie)

  /*!
      @method deleteCookie:
      @abstract Delete the specified cookie
  */
  func deleteCookie(cookie: NSHTTPCookie)

  /*!
   @method removeCookiesSince:
   @abstract Delete all cookies from the cookie storage since the provided date.
   */
  @available(OSX 10.10, *)
  func removeCookiesSince(date: NSDate)

  /*!
      @method cookiesForURL:
      @abstract Returns an array of cookies to send to the given URL.
      @param URL The URL for which to get cookies.
      @result an NSArray of NSHTTPCookie objects.
      @discussion The cookie manager examines the cookies it stores and
      includes those which should be sent to the given URL. You can use
      <tt>+[NSCookie requestHeaderFieldsWithCookies:]</tt> to turn this array
      into a set of header fields to add to a request.
  */
  func cookiesFor(URL: NSURL) -> [NSHTTPCookie]?

  /*!
      @method setCookies:forURL:mainDocumentURL:
      @abstract Adds an array cookies to the cookie store, following the
      cookie accept policy.
      @param cookies The cookies to set.
      @param URL The URL from which the cookies were sent.
      @param mainDocumentURL The main document URL to be used as a base for the "same
      domain as main document" policy.
      @discussion For mainDocumentURL, the caller should pass the URL for
      an appropriate main document, if known. For example, when loading
      a web page, the URL of the main html document for the top-level
      frame should be passed. To save cookies based on a set of response
      headers, you can use <tt>+[NSCookie
      cookiesWithResponseHeaderFields:forURL:]</tt> on a header field
      dictionary and then use this method to store the resulting cookies
      in accordance with policy settings.
  */
  func setCookies(cookies: [NSHTTPCookie], forURL URL: NSURL?, mainDocumentURL: NSURL?)

  /*!
      @method cookieAcceptPolicy
      @abstract The cookie accept policy preference of the
      receiver.
  */
  var cookieAcceptPolicy: NSHTTPCookieAcceptPolicy

  /*!
    @method sortedCookiesUsingDescriptors:
    @abstract Returns an array of all cookies in the store, sorted according to the key value and sorting direction of the NSSortDescriptors specified in the parameter.
    @param sortOrder an array of NSSortDescriptors which represent the preferred sort order of the resulting array.
    @discussion proper sorting of cookies may require extensive string conversion, which can be avoided by allowing the system to perform the sorting.  This API is to be preferred over the more generic -[NSHTTPCookieStorage cookies] API, if sorting is going to be performed.
  */
  @available(OSX 10.7, *)
  func sortedCookiesUsing(sortOrder: [NSSortDescriptor]) -> [NSHTTPCookie]
  init()
}
extension NSHTTPCookieStorage {
  @available(OSX 10.10, *)
  func storeCookies(cookies: [NSHTTPCookie], forTask task: NSURLSessionTask)
  @available(OSX 10.10, *)
  func getCookiesFor(task: NSURLSessionTask, completionHandler: ([NSHTTPCookie]?) -> Void)
}

/*!
    @const NSHTTPCookieManagerAcceptPolicyChangedNotification
    @discussion Name of notification that should be posted to the
    distributed notification center whenever the accept cookies
    preference is changed
*/
let NSHTTPCookieManagerAcceptPolicyChangedNotification: String

/*!
    @const NSHTTPCookieManagerCookiesChangedNotification
    @abstract Notification sent when the set of cookies changes
*/
let NSHTTPCookieManagerCookiesChangedNotification: String
var __FOUNDATION_NSHASHTABLE__: Int32 { get }
@available(OSX 10.5, *)
let NSHashTableStrongMemory: NSPointerFunctionsOptions
@available(OSX 10.5, *)
let NSHashTableCopyIn: NSPointerFunctionsOptions
@available(OSX 10.5, *)
let NSHashTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(OSX 10.8, *)
let NSHashTableWeakMemory: NSPointerFunctionsOptions
typealias NSHashTableOptions = Int
@available(OSX 10.5, *)
class NSHashTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(options: NSPointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(pointerFunctions functions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(options: NSPointerFunctionsOptions = [])
  @available(OSX 10.8, *)
  class func weakObjects() -> NSHashTable
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  var count: Int { get }
  func member(object: AnyObject?) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  func add(object: AnyObject?)
  func remove(object: AnyObject?)
  func removeAllObjects()
  var allObjects: [AnyObject] { get }
  var anyObject: AnyObject? { get }
  func contains(anObject: AnyObject?) -> Bool
  func intersectsHashTable(other: NSHashTable) -> Bool
  func isEqualTo(other: NSHashTable) -> Bool
  func isSubsetOf(other: NSHashTable) -> Bool
  func intersectHashTable(other: NSHashTable)
  func unionHashTable(other: NSHashTable)
  func minusHashTable(other: NSHashTable)
  var setRepresentation: Set<NSObject> { get }
  convenience init()
  @available(OSX 10.5, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

/****************	(void *) Hash table operations	****************/
struct NSHashEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutablePointer<Void>
  init()
  init(_pi: Int, _si: Int, _bs: UnsafeMutablePointer<Void>)
}
func NSFreeHashTable(table: NSHashTable)
func NSResetHashTable(table: NSHashTable)
func NSCompareHashTables(table1: NSHashTable, _ table2: NSHashTable) -> Bool
func NSCopyHashTableWithZone(table: NSHashTable, _ zone: NSZone) -> NSHashTable
func NSHashGet(table: NSHashTable, _ pointer: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSHashInsert(table: NSHashTable, _ pointer: UnsafePointer<Void>)
func NSHashInsertKnownAbsent(table: NSHashTable, _ pointer: UnsafePointer<Void>)
func NSHashInsertIfAbsent(table: NSHashTable, _ pointer: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSHashRemove(table: NSHashTable, _ pointer: UnsafePointer<Void>)
func NSEnumerateHashTable(table: NSHashTable) -> NSHashEnumerator
func NSNextHashEnumeratorItem(enumerator: UnsafeMutablePointer<NSHashEnumerator>) -> UnsafeMutablePointer<Void>
func NSEndHashTableEnumeration(enumerator: UnsafeMutablePointer<NSHashEnumerator>)
func NSCountHashTable(table: NSHashTable) -> Int
func NSStringFromHashTable(table: NSHashTable) -> String
func NSAllHashTableObjects(table: NSHashTable) -> [AnyObject]

/****************	Legacy	****************/
struct NSHashTableCallBacks {
  var hash: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Int)?
  var isEqual: (@convention(c) (NSHashTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?
  var retain: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (NSHashTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> String?)?
  init()
  init(hash: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Int)?, isEqual: (@convention(c) (NSHashTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?, retain: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (NSHashTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> String?)?)
}
func NSCreateHashTableWithZone(callBacks: NSHashTableCallBacks, _ capacity: Int, _ zone: NSZone) -> NSHashTable
func NSCreateHashTable(callBacks: NSHashTableCallBacks, _ capacity: Int) -> NSHashTable
@available(OSX 10.5, *)
let NSIntegerHashCallBacks: NSHashTableCallBacks
let NSNonOwnedPointerHashCallBacks: NSHashTableCallBacks
let NSNonRetainedObjectHashCallBacks: NSHashTableCallBacks
let NSObjectHashCallBacks: NSHashTableCallBacks
let NSOwnedObjectIdentityHashCallBacks: NSHashTableCallBacks
let NSOwnedPointerHashCallBacks: NSHashTableCallBacks
let NSPointerToStructHashCallBacks: NSHashTableCallBacks
class NSHost : NSObject {
  class func current() -> Self
  convenience init(name: String?)
  convenience init(address: String)
  func isEqualTo(aHost: NSHost) -> Bool
  var name: String? { get }
  var names: [String] { get }
  var address: String? { get }
  var addresses: [String] { get }
  @available(OSX 10.6, *)
  var localizedName: String? { get }
  init()
}
class NSIndexPath : NSObject, NSCopying, NSSecureCoding {
  init(indexes: UnsafePointer<Int>, length: Int)
  convenience init(index: Int)
  func adding(index: Int) -> NSIndexPath
  func removingLastIndex() -> NSIndexPath
  func indexAtPosition(position: Int) -> Int
  var length: Int { get }

  /*!
   @abstract Copies the indexes stored in this index path from the positions specified by positionRange into indexes.
   @param indexes Buffer of at least as many NSUIntegers as specified by the length of positionRange. On return, this memory will hold the index path's indexes.
   @param positionRange A range of valid positions within this index path.  If the location plus the length of positionRange is greater than the length of this index path, this method raises an NSRangeException.
   @discussion
      It is the developer’s responsibility to allocate the memory for the C array.
   */
  @available(OSX 10.9, *)
  func getIndexes(indexes: UnsafeMutablePointer<Int>, range positionRange: NSRange)
  func compare(otherObject: NSIndexPath) -> NSComparisonResult
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSIndexPath {

  /// This method is unsafe because it could potentially cause buffer overruns. You should use -getIndexes:range: instead. 
  func getIndexes(indexes: UnsafeMutablePointer<Int>)
}
class NSIndexSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init(indexesIn range: NSRange)
  init(indexSet: NSIndexSet)
  convenience init(index value: Int)
  func isEqualTo(indexSet: NSIndexSet) -> Bool
  var count: Int { get }
  var firstIndex: Int { get }
  var lastIndex: Int { get }
  func indexGreaterThanIndex(value: Int) -> Int
  func indexLessThanIndex(value: Int) -> Int
  func indexGreaterThanOrEqualTo(value: Int) -> Int
  func indexLessThanOrEqualTo(value: Int) -> Int
  func getIndexes(indexBuffer: UnsafeMutablePointer<Int>, maxCount bufferSize: Int, inIndexRange range: NSRangePointer) -> Int
  @available(OSX 10.5, *)
  func countOfIndexesIn(range: NSRange) -> Int
  func contains(value: Int) -> Bool
  func containsIn(range: NSRange) -> Bool
  func contains(indexSet: NSIndexSet) -> Bool
  func intersectsIndexesIn(range: NSRange) -> Bool
  @available(OSX 10.6, *)
  func enumerateUsing(block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerate(options opts: NSEnumerationOptions = [], usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateIn(range: NSRange, options opts: NSEnumerationOptions = [], usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func indexPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func index(options opts: NSEnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func indexIn(range: NSRange, options opts: NSEnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func indexesPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(OSX 10.6, *)
  func indexes(options opts: NSEnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(OSX 10.6, *)
  func indexesIn(range: NSRange, options opts: NSEnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(OSX 10.7, *)
  func enumerateRangesUsing(block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.7, *)
  func enumerateRanges(options opts: NSEnumerationOptions = [], usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.7, *)
  func enumerateRangesIn(range: NSRange, options opts: NSEnumerationOptions = [], usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSIndexSet : SequenceType {
  /// Return a *generator* over the elements of this *sequence*.
  ///
  /// - Complexity: O(1).
  func generate() -> NSIndexSetGenerator
  typealias Generator = NSIndexSetGenerator
  typealias SubSequence = AnySequence<Element>
}
class NSMutableIndexSet : NSIndexSet {
  func add(indexSet: NSIndexSet)
  func remove(indexSet: NSIndexSet)
  func removeAllIndexes()
  func add(value: Int)
  func remove(value: Int)
  func addIn(range: NSRange)
  func removeIn(range: NSRange)
  func shiftIndexesStartingAt(index: Int, by delta: Int)
  init(indexesIn range: NSRange)
  init(indexSet: NSIndexSet)
  convenience init(index value: Int)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
typealias NSItemProviderCompletionHandler = (NSSecureCoding?, NSError!) -> Void
typealias NSItemProviderLoadHandler = (NSItemProviderCompletionHandler!, AnyClass!, [NSObject : AnyObject]!) -> Void
@available(OSX 10.10, *)
class NSItemProvider : NSObject, NSCopying {
  init(item: NSSecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOf fileURL: NSURL!)
  func registerItemForTypeIdentifier(typeIdentifier: String, loadHandler: NSItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConformingToTypeIdentifier(typeIdentifier: String) -> Bool
  func loadItemForTypeIdentifier(typeIdentifier: String, options: [NSObject : AnyObject]? = [:], completionHandler: NSItemProviderCompletionHandler? = nil)
  convenience init()
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.10, *)
let NSItemProviderPreferredImageSizeKey: String
extension NSItemProvider {
  @available(OSX 10.10, *)
  var previewImageHandler: NSItemProviderLoadHandler?
  @available(OSX 10.10, *)
  func loadPreviewImage(options options: [NSObject : AnyObject]! = [:], completionHandler: NSItemProviderCompletionHandler!)
}
@available(OSX 10.10, *)
let NSExtensionJavaScriptPreprocessingResultsKey: String
@available(OSX 10.10, *)
let NSItemProviderErrorDomain: String
@available(OSX 10.10, *)
enum NSItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case ItemUnavailableError
  case UnexpectedValueClassError
  @available(OSX 10.11, *)
  case UnavailableCoercionError
}
@available(OSX 10.7, *)
struct NSJSONReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MutableContainers: NSJSONReadingOptions { get }
  static var MutableLeaves: NSJSONReadingOptions { get }
  static var AllowFragments: NSJSONReadingOptions { get }
}
@available(OSX 10.7, *)
struct NSJSONWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PrettyPrinted: NSJSONWritingOptions { get }
}
@available(OSX 10.7, *)
class NSJSONSerialization : NSObject {
  class func isValidJSONObject(obj: AnyObject) -> Bool
  class func dataWithJSONObject(obj: AnyObject, options opt: NSJSONWritingOptions = []) throws -> NSData
  class func jsonObjectWith(data: NSData, options opt: NSJSONReadingOptions = []) throws -> AnyObject
  class func writeJSONObject(obj: AnyObject, to stream: NSOutputStream, options opt: NSJSONWritingOptions = [], error: NSErrorPointer) -> Int
  class func jsonObjectWith(stream: NSInputStream, options opt: NSJSONReadingOptions = []) throws -> AnyObject
  init()
}
let NSUndefinedKeyException: String
let NSAverageKeyValueOperator: String
let NSCountKeyValueOperator: String
let NSDistinctUnionOfArraysKeyValueOperator: String
let NSDistinctUnionOfObjectsKeyValueOperator: String
let NSDistinctUnionOfSetsKeyValueOperator: String
let NSMaximumKeyValueOperator: String
let NSMinimumKeyValueOperator: String
let NSSumKeyValueOperator: String
let NSUnionOfArraysKeyValueOperator: String
let NSUnionOfObjectsKeyValueOperator: String
let NSUnionOfSetsKeyValueOperator: String
extension NSObject {
  class func accessInstanceVariablesDirectly() -> Bool
  class func valueForKey(key: String) -> AnyObject?
  func valueForKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKey key: String)
  func setValue(value: AnyObject?, forKey key: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  class func mutableArrayValueForKey(key: String) -> NSMutableArray
  func mutableArrayValueForKey(key: String) -> NSMutableArray
  @available(OSX 10.7, *)
  class func mutableOrderedSetValueForKey(key: String) -> NSMutableOrderedSet
  @available(OSX 10.7, *)
  func mutableOrderedSetValueForKey(key: String) -> NSMutableOrderedSet
  class func mutableSetValueForKey(key: String) -> NSMutableSet
  func mutableSetValueForKey(key: String) -> NSMutableSet
  class func valueForKeyPath(keyPath: String) -> AnyObject?
  func valueForKeyPath(keyPath: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKeyPath keyPath: String)
  func setValue(value: AnyObject?, forKeyPath keyPath: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  class func mutableArrayValueForKeyPath(keyPath: String) -> NSMutableArray
  func mutableArrayValueForKeyPath(keyPath: String) -> NSMutableArray
  @available(OSX 10.7, *)
  class func mutableOrderedSetValueForKeyPath(keyPath: String) -> NSMutableOrderedSet
  @available(OSX 10.7, *)
  func mutableOrderedSetValueForKeyPath(keyPath: String) -> NSMutableOrderedSet
  class func mutableSetValueForKeyPath(keyPath: String) -> NSMutableSet
  func mutableSetValueForKeyPath(keyPath: String) -> NSMutableSet
  class func valueForUndefinedKey(key: String) -> AnyObject?
  func valueForUndefinedKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forUndefinedKey key: String)
  func setValue(value: AnyObject?, forUndefinedKey key: String)
  class func setNilValueForKey(key: String)
  func setNilValueForKey(key: String)
  class func dictionaryWithValuesForKeys(keys: [String]) -> [String : AnyObject]
  func dictionaryWithValuesForKeys(keys: [String]) -> [String : AnyObject]
  class func setValuesForKeysWith(keyedValues: [String : AnyObject])
  func setValuesForKeysWith(keyedValues: [String : AnyObject])
}
extension NSArray {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSDictionary {
  func valueForKey(key: String) -> AnyObject?
}
extension NSMutableDictionary {
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSOrderedSet {
  @available(OSX 10.7, *)
  func valueForKey(key: String) -> AnyObject
  @available(OSX 10.7, *)
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSSet {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSObject {
}
struct NSKeyValueObservingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var New: NSKeyValueObservingOptions { get }
  static var Old: NSKeyValueObservingOptions { get }
  @available(OSX 10.5, *)
  static var Initial: NSKeyValueObservingOptions { get }
  @available(OSX 10.5, *)
  static var Prior: NSKeyValueObservingOptions { get }
}
enum NSKeyValueChange : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Setting
  case Insertion
  case Removal
  case Replacement
}
enum NSKeyValueSetMutationKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UnionSetMutation
  case MinusSetMutation
  case IntersectSetMutation
  case SetSetMutation
}
let NSKeyValueChangeKindKey: String
let NSKeyValueChangeNewKey: String
let NSKeyValueChangeOldKey: String
let NSKeyValueChangeIndexesKey: String
@available(OSX 10.5, *)
let NSKeyValueChangeNotificationIsPriorKey: String
extension NSObject {
  class func observeValueForKeyPath(keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
  func observeValueForKeyPath(keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
}
extension NSObject {
  class func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  class func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  class func removeObserver(observer: NSObject, forKeyPath keyPath: String)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSArray {
  func addObserver(observer: NSObject, toObjectsAt indexes: NSIndexSet, forKeyPath keyPath: String, options: NSKeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func removeObserver(observer: NSObject, fromObjectsAt indexes: NSIndexSet, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, fromObjectsAt indexes: NSIndexSet, forKeyPath keyPath: String)
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSOrderedSet {
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSSet {
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSObject {
  class func willChangeValueForKey(key: String)
  func willChangeValueForKey(key: String)
  class func didChangeValueForKey(key: String)
  func didChangeValueForKey(key: String)
  class func willChange(changeKind: NSKeyValueChange, valuesAt indexes: NSIndexSet, forKey key: String)
  func willChange(changeKind: NSKeyValueChange, valuesAt indexes: NSIndexSet, forKey key: String)
  class func didChange(changeKind: NSKeyValueChange, valuesAt indexes: NSIndexSet, forKey key: String)
  func didChange(changeKind: NSKeyValueChange, valuesAt indexes: NSIndexSet, forKey key: String)
  class func willChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  func willChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  class func didChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  func didChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
}
extension NSObject {
  @available(OSX 10.5, *)
  class func keyPathsForValuesAffectingValueForKey(key: String) -> Set<String>
  class func automaticallyNotifiesObserversForKey(key: String) -> Bool
  var observationInfo: UnsafeMutablePointer<Void>
  class func observationInfo() -> UnsafeMutablePointer<Void>
  class func setObservationInfo(observationInfo: UnsafeMutablePointer<Void>)
}
extension NSObject {
}
let NSInvalidArchiveOperationException: String
let NSInvalidUnarchiveOperationException: String
@available(OSX 10.9, *)
let NSKeyedArchiveRootObjectKey: String
class NSKeyedArchiver : NSCoder {
  class func archivedDataWithRootObject(rootObject: AnyObject) -> NSData
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  init(forWritingWith data: NSMutableData)
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedArchiverDelegate?
  var outputFormat: NSPropertyListFormat
  func finishEncoding()
  class func setClassName(codedName: String?, forClass cls: AnyClass)
  func setClassName(codedName: String?, forClass cls: AnyClass)
  class func classNameFor(cls: AnyClass) -> String?
  func classNameFor(cls: AnyClass) -> String?
  func encode(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encode(boolv: Bool, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int64, forKey key: String)
  func encode(realv: Float, forKey key: String)
  func encode(realv: Double, forKey key: String)
  func encodeBytes(bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  @available(OSX 10.8, *)
  var requiresSecureCoding: Bool
  init()
}
class NSKeyedUnarchiver : NSCoder {
  class func unarchiveObjectWith(data: NSData) -> AnyObject?
  class func unarchiveObjectWithFile(path: String) -> AnyObject?
  init(forReadingWith data: NSData)
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedUnarchiverDelegate?
  func finishDecoding()
  class func setClass(cls: AnyClass?, forClassName codedName: String)
  func setClass(cls: AnyClass?, forClassName codedName: String)
  class func classForClassName(codedName: String) -> AnyClass?
  func classForClassName(codedName: String) -> AnyClass?
  func containsValueForKey(key: String) -> Bool
  func decodeObjectForKey(key: String) -> AnyObject?
  func decodeBoolForKey(key: String) -> Bool
  func decodeIntForKey(key: String) -> Int32
  func decodeInt32ForKey(key: String) -> Int32
  func decodeInt64ForKey(key: String) -> Int64
  func decodeFloatForKey(key: String) -> Float
  func decodeDoubleForKey(key: String) -> Double
  func decodeBytesForKey(key: String, returnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafePointer<UInt8>
  @available(OSX 10.8, *)
  var requiresSecureCoding: Bool
  init()
}

extension NSKeyedUnarchiver {
  @warn_unused_result
  class func unarchiveTopLevelObjectWithData(data: NSData) throws -> AnyObject?
}
protocol NSKeyedArchiverDelegate : NSObjectProtocol {
  optional func archiver(archiver: NSKeyedArchiver, willEncode object: AnyObject) -> AnyObject?
  optional func archiver(archiver: NSKeyedArchiver, didEncode object: AnyObject?)
  optional func archiver(archiver: NSKeyedArchiver, willReplace object: AnyObject?, withObject newObject: AnyObject?)
  optional func archiverWillFinish(archiver: NSKeyedArchiver)
  optional func archiverDidFinish(archiver: NSKeyedArchiver)
}
protocol NSKeyedUnarchiverDelegate : NSObjectProtocol {
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, cannotDecodeObjectOfClassName name: String, originalClasses classNames: [String]) -> AnyClass?
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, didDecode object: AnyObject?) -> AnyObject?
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, willReplace object: AnyObject, withObject newObject: AnyObject)
  optional func unarchiverWillFinish(unarchiver: NSKeyedUnarchiver)
  optional func unarchiverDidFinish(unarchiver: NSKeyedUnarchiver)
}
extension NSObject {
  var classForKeyedArchiver: AnyClass? { get }
  class func replacementObjectFor(archiver: NSKeyedArchiver) -> AnyObject?
  func replacementObjectFor(archiver: NSKeyedArchiver) -> AnyObject?
  class func classFallbacksForKeyedArchiver() -> [String]
  class func classForKeyedArchiver() -> AnyClass?
}
extension NSObject {
  class func classForKeyedUnarchiver() -> AnyClass
}
@available(OSX 10.10, *)
enum NSLengthFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Millimeter
  case Centimeter
  case Meter
  case Kilometer
  case Inch
  case Foot
  case Yard
  case Mile
}
@available(OSX 10.10, *)
class NSLengthFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var isForPersonHeightUse: Bool
  func stringFromValue(value: Double, unit: NSLengthFormatterUnit) -> String
  func stringFromMeters(numberInMeters: Double) -> String
  func unitStringFromValue(value: Double, unit: NSLengthFormatterUnit) -> String
  func unitStringFromMeters(numberInMeters: Double, usedUnit unitp: UnsafeMutablePointer<NSLengthFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.7, *)
let NSLinguisticTagSchemeTokenType: String
@available(OSX 10.7, *)
let NSLinguisticTagSchemeLexicalClass: String
@available(OSX 10.7, *)
let NSLinguisticTagSchemeNameType: String
@available(OSX 10.7, *)
let NSLinguisticTagSchemeNameTypeOrLexicalClass: String
@available(OSX 10.7, *)
let NSLinguisticTagSchemeLemma: String
@available(OSX 10.7, *)
let NSLinguisticTagSchemeLanguage: String
@available(OSX 10.7, *)
let NSLinguisticTagSchemeScript: String
@available(OSX 10.7, *)
let NSLinguisticTagWord: String
@available(OSX 10.7, *)
let NSLinguisticTagPunctuation: String
@available(OSX 10.7, *)
let NSLinguisticTagWhitespace: String
@available(OSX 10.7, *)
let NSLinguisticTagOther: String
@available(OSX 10.7, *)
let NSLinguisticTagNoun: String
@available(OSX 10.7, *)
let NSLinguisticTagVerb: String
@available(OSX 10.7, *)
let NSLinguisticTagAdjective: String
@available(OSX 10.7, *)
let NSLinguisticTagAdverb: String
@available(OSX 10.7, *)
let NSLinguisticTagPronoun: String
@available(OSX 10.7, *)
let NSLinguisticTagDeterminer: String
@available(OSX 10.7, *)
let NSLinguisticTagParticle: String
@available(OSX 10.7, *)
let NSLinguisticTagPreposition: String
@available(OSX 10.7, *)
let NSLinguisticTagNumber: String
@available(OSX 10.7, *)
let NSLinguisticTagConjunction: String
@available(OSX 10.7, *)
let NSLinguisticTagInterjection: String
@available(OSX 10.7, *)
let NSLinguisticTagClassifier: String
@available(OSX 10.7, *)
let NSLinguisticTagIdiom: String
@available(OSX 10.7, *)
let NSLinguisticTagOtherWord: String
@available(OSX 10.7, *)
let NSLinguisticTagSentenceTerminator: String
@available(OSX 10.7, *)
let NSLinguisticTagOpenQuote: String
@available(OSX 10.7, *)
let NSLinguisticTagCloseQuote: String
@available(OSX 10.7, *)
let NSLinguisticTagOpenParenthesis: String
@available(OSX 10.7, *)
let NSLinguisticTagCloseParenthesis: String
@available(OSX 10.7, *)
let NSLinguisticTagWordJoiner: String
@available(OSX 10.7, *)
let NSLinguisticTagDash: String
@available(OSX 10.7, *)
let NSLinguisticTagOtherPunctuation: String
@available(OSX 10.7, *)
let NSLinguisticTagParagraphBreak: String
@available(OSX 10.7, *)
let NSLinguisticTagOtherWhitespace: String
@available(OSX 10.7, *)
let NSLinguisticTagPersonalName: String
@available(OSX 10.7, *)
let NSLinguisticTagPlaceName: String
@available(OSX 10.7, *)
let NSLinguisticTagOrganizationName: String
struct NSLinguisticTaggerOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var OmitWords: NSLinguisticTaggerOptions { get }
  static var OmitPunctuation: NSLinguisticTaggerOptions { get }
  static var OmitWhitespace: NSLinguisticTaggerOptions { get }
  static var OmitOther: NSLinguisticTaggerOptions { get }
  static var JoinNames: NSLinguisticTaggerOptions { get }
}
@available(OSX 10.7, *)
class NSLinguisticTagger : NSObject {
  @available(OSX 10.7, *)
  init(tagSchemes: [String], options opts: Int)
  @available(OSX 10.7, *)
  var tagSchemes: [String] { get }
  @available(OSX 10.7, *)
  var string: String?
  @available(OSX 10.7, *)
  class func availableTagSchemesForLanguage(language: String) -> [String]
  @available(OSX 10.7, *)
  func setOrthography(orthography: NSOrthography?, range: NSRange)
  @available(OSX 10.7, *)
  func orthographyAt(charIndex: Int, effectiveRange: NSRangePointer) -> NSOrthography?
  @available(OSX 10.7, *)
  func stringEditedIn(newRange: NSRange, changeInLength delta: Int)
  @available(OSX 10.7, *)
  func enumerateTagsIn(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions = [], usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.7, *)
  func sentenceRangeFor(range: NSRange) -> NSRange
  @available(OSX 10.7, *)
  func tagAt(charIndex: Int, scheme tagScheme: String, tokenRange: NSRangePointer, sentenceRange: NSRangePointer) -> String?
  @available(OSX 10.7, *)
  func tagsIn(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions = [], tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(OSX 10.7, *)
  func possibleTagsAt(charIndex: Int, scheme tagScheme: String, tokenRange: NSRangePointer, sentenceRange: NSRangePointer, scores: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]?
  convenience init()
}
extension NSString {
  @available(OSX 10.7, *)
  func linguisticTagsIn(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions = [], orthography: NSOrthography?, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(OSX 10.7, *)
  func enumerateLinguisticTagsIn(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions = [], orthography: NSOrthography?, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
class NSLocale : NSObject, NSCopying, NSSecureCoding {
  func objectForKey(key: AnyObject) -> AnyObject?
  func displayNameForKey(key: AnyObject, value: AnyObject) -> String?
  init(localeIdentifier string: String)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
}
extension NSLocale {
  var localeIdentifier: String { get }
}
extension NSLocale {
  @available(OSX 10.5, *)
  class func autoupdatingCurrent() -> NSLocale
  class func current() -> NSLocale
  class func system() -> NSLocale
}
extension NSLocale {
  class func availableLocaleIdentifiers() -> [String]
  class func isoLanguageCodes() -> [String]
  class func isoCountryCodes() -> [String]
  class func isoCurrencyCodes() -> [String]
  @available(OSX 10.5, *)
  class func commonISOCurrencyCodes() -> [String]
  @available(OSX 10.5, *)
  class func preferredLanguages() -> [String]
  class func componentsFromLocaleIdentifier(string: String) -> [String : String]
  class func localeIdentifierFromComponents(dict: [String : String]) -> String
  class func canonicalLocaleIdentifierFrom(string: String) -> String
  class func canonicalLanguageIdentifierFrom(string: String) -> String
  @available(OSX 10.6, *)
  class func localeIdentifierFromWindowsLocaleCode(lcid: UInt32) -> String?
  @available(OSX 10.6, *)
  class func windowsLocaleCodeFromLocaleIdentifier(localeIdentifier: String) -> UInt32
  @available(OSX 10.6, *)
  class func characterDirectionForLanguage(isoLangCode: String) -> NSLocaleLanguageDirection
  @available(OSX 10.6, *)
  class func lineDirectionForLanguage(isoLangCode: String) -> NSLocaleLanguageDirection
}
enum NSLocaleLanguageDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case LeftToRight
  case RightToLeft
  case TopToBottom
  case BottomToTop
}
@available(OSX 10.5, *)
let NSCurrentLocaleDidChangeNotification: String
let NSLocaleIdentifier: String
let NSLocaleLanguageCode: String
let NSLocaleCountryCode: String
let NSLocaleScriptCode: String
let NSLocaleVariantCode: String
let NSLocaleExemplarCharacterSet: String
let NSLocaleCalendar: String
let NSLocaleCollationIdentifier: String
let NSLocaleUsesMetricSystem: String
let NSLocaleMeasurementSystem: String
let NSLocaleDecimalSeparator: String
let NSLocaleGroupingSeparator: String
let NSLocaleCurrencySymbol: String
let NSLocaleCurrencyCode: String
@available(OSX 10.6, *)
let NSLocaleCollatorIdentifier: String
@available(OSX 10.6, *)
let NSLocaleQuotationBeginDelimiterKey: String
@available(OSX 10.6, *)
let NSLocaleQuotationEndDelimiterKey: String
@available(OSX 10.6, *)
let NSLocaleAlternateQuotationBeginDelimiterKey: String
@available(OSX 10.6, *)
let NSLocaleAlternateQuotationEndDelimiterKey: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierGregorian instead")
let NSGregorianCalendar: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierBuddhist instead")
let NSBuddhistCalendar: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierChinese instead")
let NSChineseCalendar: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierHebrew instead")
let NSHebrewCalendar: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierIslamic instead")
let NSIslamicCalendar: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierIslamicCivil instead")
let NSIslamicCivilCalendar: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierJapanese instead")
let NSJapaneseCalendar: String
@available(OSX, introduced=10.6, deprecated=10.10, message="Use NSCalendarIdentifierRepublicOfChina instead")
let NSRepublicOfChinaCalendar: String
@available(OSX, introduced=10.6, deprecated=10.10, message="Use NSCalendarIdentifierPersian instead")
let NSPersianCalendar: String
@available(OSX, introduced=10.6, deprecated=10.10, message="Use NSCalendarIdentifierIndian instead")
let NSIndianCalendar: String
@available(OSX, introduced=10.6, deprecated=10.10, message="Use NSCalendarIdentifierISO8601 instead")
let NSISO8601Calendar: String
protocol NSLocking {
  func lock()
  func unlock()
}
class NSLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lockBefore(limit: NSDate) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
class NSConditionLock : NSObject, NSLocking {
  init(condition: Int)
  var condition: Int { get }
  func lockWhenCondition(condition: Int)
  func tryLock() -> Bool
  func tryWhenCondition(condition: Int) -> Bool
  func unlockWithCondition(condition: Int)
  func lockBefore(limit: NSDate) -> Bool
  func lockWhenCondition(condition: Int, before limit: NSDate) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  convenience init()
  func lock()
  func unlock()
}
class NSRecursiveLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lockBefore(limit: NSDate) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
@available(OSX 10.5, *)
class NSCondition : NSObject, NSLocking {
  func wait()
  func waitUntil(limit: NSDate) -> Bool
  func signal()
  func broadcast()
  @available(OSX 10.5, *)
  var name: String?
  init()
  @available(OSX 10.5, *)
  func lock()
  @available(OSX 10.5, *)
  func unlock()
}
var __FOUNDATION_NSMAPTABLE__: Int32 { get }

/****************	Class	****************/
@available(OSX 10.5, *)
let NSMapTableStrongMemory: NSPointerFunctionsOptions
@available(OSX 10.5, *)
let NSMapTableCopyIn: NSPointerFunctionsOptions
@available(OSX 10.5, *)
let NSMapTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(OSX 10.8, *)
let NSMapTableWeakMemory: NSPointerFunctionsOptions
typealias NSMapTableOptions = Int
@available(OSX 10.5, *)
class NSMapTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(keyOptions: NSPointerFunctionsOptions = [], valueOptions: NSPointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: NSPointerFunctions, valuePointerFunctions valueFunctions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions: NSPointerFunctionsOptions = [], valueOptions: NSPointerFunctionsOptions = [])
  @available(OSX 10.8, *)
  class func strongToStrongObjects() -> NSMapTable
  @available(OSX 10.8, *)
  class func weakToStrongObjects() -> NSMapTable
  @available(OSX 10.8, *)
  class func strongToWeakObjects() -> NSMapTable
  @available(OSX 10.8, *)
  class func weakToWeakObjects() -> NSMapTable
  @NSCopying var keyPointerFunctions: NSPointerFunctions { get }
  @NSCopying var valuePointerFunctions: NSPointerFunctions { get }
  func objectFor(aKey: AnyObject?) -> AnyObject?
  func removeObjectFor(aKey: AnyObject?)
  func setObject(anObject: AnyObject?, forKey aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> NSEnumerator
  func objectEnumerator() -> NSEnumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  convenience init()
  @available(OSX 10.5, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

/****************	void * Map table operations	****************/
struct NSMapEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutablePointer<Void>
  init()
  init(_pi: Int, _si: Int, _bs: UnsafeMutablePointer<Void>)
}
func NSFreeMapTable(table: NSMapTable)
func NSResetMapTable(table: NSMapTable)
func NSCompareMapTables(table1: NSMapTable, _ table2: NSMapTable) -> Bool
func NSCopyMapTableWithZone(table: NSMapTable, _ zone: NSZone) -> NSMapTable
func NSMapMember(table: NSMapTable, _ key: UnsafePointer<Void>, _ originalKey: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func NSMapGet(table: NSMapTable, _ key: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSMapInsert(table: NSMapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func NSMapInsertKnownAbsent(table: NSMapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func NSMapInsertIfAbsent(table: NSMapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSMapRemove(table: NSMapTable, _ key: UnsafePointer<Void>)
func NSEnumerateMapTable(table: NSMapTable) -> NSMapEnumerator
func NSNextMapEnumeratorPair(enumerator: UnsafeMutablePointer<NSMapEnumerator>, _ key: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func NSEndMapTableEnumeration(enumerator: UnsafeMutablePointer<NSMapEnumerator>)
func NSCountMapTable(table: NSMapTable) -> Int
func NSStringFromMapTable(table: NSMapTable) -> String
func NSAllMapTableKeys(table: NSMapTable) -> [AnyObject]
func NSAllMapTableValues(table: NSMapTable) -> [AnyObject]

/****************     Legacy     ***************************************/
struct NSMapTableKeyCallBacks {
  var hash: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Int)?
  var isEqual: (@convention(c) (NSMapTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?
  var retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?
  var notAKeyMarker: UnsafePointer<Void>
  init()
  init(hash: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Int)?, isEqual: (@convention(c) (NSMapTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?, retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?, notAKeyMarker: UnsafePointer<Void>)
}
struct NSMapTableValueCallBacks {
  var retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?
  init()
  init(retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?)
}
func NSCreateMapTableWithZone(keyCallBacks: NSMapTableKeyCallBacks, _ valueCallBacks: NSMapTableValueCallBacks, _ capacity: Int, _ zone: NSZone) -> NSMapTable
func NSCreateMapTable(keyCallBacks: NSMapTableKeyCallBacks, _ valueCallBacks: NSMapTableValueCallBacks, _ capacity: Int) -> NSMapTable

/****************	Common map table key callbacks	****************/
@available(OSX 10.5, *)
let NSIntegerMapKeyCallBacks: NSMapTableKeyCallBacks
let NSNonOwnedPointerMapKeyCallBacks: NSMapTableKeyCallBacks
let NSNonOwnedPointerOrNullMapKeyCallBacks: NSMapTableKeyCallBacks
let NSNonRetainedObjectMapKeyCallBacks: NSMapTableKeyCallBacks
let NSObjectMapKeyCallBacks: NSMapTableKeyCallBacks
let NSOwnedPointerMapKeyCallBacks: NSMapTableKeyCallBacks

/****************	Common map table value callbacks	****************/
@available(OSX 10.5, *)
let NSIntegerMapValueCallBacks: NSMapTableValueCallBacks
let NSNonOwnedPointerMapValueCallBacks: NSMapTableValueCallBacks
let NSObjectMapValueCallBacks: NSMapTableValueCallBacks
let NSNonRetainedObjectMapValueCallBacks: NSMapTableValueCallBacks
let NSOwnedPointerMapValueCallBacks: NSMapTableValueCallBacks
@available(OSX 10.10, *)
enum NSMassFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Gram
  case Kilogram
  case Ounce
  case Pound
  case Stone
}
@available(OSX 10.10, *)
class NSMassFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var isForPersonMassUse: Bool
  func stringFromValue(value: Double, unit: NSMassFormatterUnit) -> String
  func stringFromKilograms(numberInKilograms: Double) -> String
  func unitStringFromValue(value: Double, unit: NSMassFormatterUnit) -> String
  func unitStringFromKilograms(numberInKilograms: Double, usedUnit unitp: UnsafeMutablePointer<NSMassFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.4, *)
class NSMetadataQuery : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSMetadataQueryDelegate?
  @NSCopying var predicate: NSPredicate?
  var sortDescriptors: [NSSortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: NSTimeInterval
  var searchScopes: [AnyObject]
  @available(OSX 10.9, *)
  var searchItems: [AnyObject]?
  @available(OSX 10.9, *)
  var operationQueue: NSOperationQueue?
  func start() -> Bool
  func stop()
  var isStarted: Bool { get }
  var isGathering: Bool { get }
  var isStopped: Bool { get }
  func disableUpdates()
  func enableUpdates()
  var resultCount: Int { get }
  func resultAt(idx: Int) -> AnyObject
  @available(OSX 10.9, *)
  func enumerateResultsUsing(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.9, *)
  func enumerateResults(options opts: NSEnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [AnyObject] { get }
  func indexOfResult(result: AnyObject) -> Int
  var valueLists: [String : [NSMetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [NSMetadataQueryResultGroup] { get }
  func valueOfAttribute(attrName: String, forResultAt idx: Int) -> AnyObject?
  init()
}
protocol NSMetadataQueryDelegate : NSObjectProtocol {
  @available(OSX 10.4, *)
  optional func metadataQuery(query: NSMetadataQuery, replacementObjectForResultObject result: NSMetadataItem) -> AnyObject
  @available(OSX 10.4, *)
  optional func metadataQuery(query: NSMetadataQuery, replacementValueForAttribute attrName: String, value attrValue: AnyObject) -> AnyObject
}
@available(OSX 10.4, *)
let NSMetadataQueryDidStartGatheringNotification: String
@available(OSX 10.4, *)
let NSMetadataQueryGatheringProgressNotification: String
@available(OSX 10.4, *)
let NSMetadataQueryDidFinishGatheringNotification: String
@available(OSX 10.4, *)
let NSMetadataQueryDidUpdateNotification: String
@available(OSX 10.9, *)
let NSMetadataQueryUpdateAddedItemsKey: String
@available(OSX 10.9, *)
let NSMetadataQueryUpdateChangedItemsKey: String
@available(OSX 10.9, *)
let NSMetadataQueryUpdateRemovedItemsKey: String
@available(OSX 10.4, *)
let NSMetadataQueryResultContentRelevanceAttribute: String
@available(OSX 10.4, *)
let NSMetadataQueryUserHomeScope: String
@available(OSX 10.4, *)
let NSMetadataQueryLocalComputerScope: String
@available(OSX 10.4, *)
let NSMetadataQueryNetworkScope: String
@available(OSX 10.9, *)
let NSMetadataQueryIndexedLocalComputerScope: String
@available(OSX 10.9, *)
let NSMetadataQueryIndexedNetworkScope: String
@available(OSX 10.7, *)
let NSMetadataQueryUbiquitousDocumentsScope: String
@available(OSX 10.7, *)
let NSMetadataQueryUbiquitousDataScope: String
@available(OSX 10.10, *)
let NSMetadataQueryAccessibleUbiquitousExternalDocumentsScope: String
@available(OSX 10.4, *)
class NSMetadataItem : NSObject {
  @available(OSX 10.9, *)
  init?(url: NSURL)
  func valueForAttribute(key: String) -> AnyObject?
  func valuesForAttributes(keys: [String]) -> [String : AnyObject]?
  var attributes: [String] { get }
  convenience init()
}
@available(OSX 10.4, *)
class NSMetadataQueryAttributeValueTuple : NSObject {
  var attribute: String { get }
  var value: AnyObject? { get }
  var count: Int { get }
  init()
}
@available(OSX 10.4, *)
class NSMetadataQueryResultGroup : NSObject {
  var attribute: String { get }
  var value: AnyObject { get }
  var subgroups: [NSMetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func resultAt(idx: Int) -> AnyObject
  var results: [AnyObject] { get }
  init()
}
@available(OSX 10.7, *)
let NSMetadataItemFSNameKey: String
@available(OSX 10.7, *)
let NSMetadataItemDisplayNameKey: String
@available(OSX 10.7, *)
let NSMetadataItemURLKey: String
@available(OSX 10.7, *)
let NSMetadataItemPathKey: String
@available(OSX 10.7, *)
let NSMetadataItemFSSizeKey: String
@available(OSX 10.7, *)
let NSMetadataItemFSCreationDateKey: String
@available(OSX 10.7, *)
let NSMetadataItemFSContentChangeDateKey: String
@available(OSX 10.9, *)
let NSMetadataItemContentTypeKey: String
@available(OSX 10.9, *)
let NSMetadataItemContentTypeTreeKey: String
@available(OSX 10.7, *)
let NSMetadataItemIsUbiquitousKey: String
@available(OSX 10.7, *)
let NSMetadataUbiquitousItemHasUnresolvedConflictsKey: String
@available(OSX 10.9, *)
let NSMetadataUbiquitousItemDownloadingStatusKey: String
@available(OSX 10.9, *)
let NSMetadataUbiquitousItemDownloadingStatusNotDownloaded: String
@available(OSX 10.9, *)
let NSMetadataUbiquitousItemDownloadingStatusDownloaded: String
@available(OSX 10.9, *)
let NSMetadataUbiquitousItemDownloadingStatusCurrent: String
@available(OSX 10.7, *)
let NSMetadataUbiquitousItemIsDownloadingKey: String
@available(OSX 10.7, *)
let NSMetadataUbiquitousItemIsUploadedKey: String
@available(OSX 10.7, *)
let NSMetadataUbiquitousItemIsUploadingKey: String
@available(OSX 10.7, *)
let NSMetadataUbiquitousItemPercentDownloadedKey: String
@available(OSX 10.7, *)
let NSMetadataUbiquitousItemPercentUploadedKey: String
@available(OSX 10.9, *)
let NSMetadataUbiquitousItemDownloadingErrorKey: String
@available(OSX 10.9, *)
let NSMetadataUbiquitousItemUploadingErrorKey: String
@available(OSX 10.10, *)
let NSMetadataUbiquitousItemDownloadRequestedKey: String
@available(OSX 10.10, *)
let NSMetadataUbiquitousItemIsExternalDocumentKey: String
@available(OSX 10.10, *)
let NSMetadataUbiquitousItemContainerDisplayNameKey: String
@available(OSX 10.10, *)
let NSMetadataUbiquitousItemURLInLocalContainerKey: String
@available(OSX 10.9, *)
let NSMetadataItemAttributeChangeDateKey: String
@available(OSX 10.9, *)
let NSMetadataItemKeywordsKey: String
@available(OSX 10.9, *)
let NSMetadataItemTitleKey: String
@available(OSX 10.9, *)
let NSMetadataItemAuthorsKey: String
@available(OSX 10.9, *)
let NSMetadataItemEditorsKey: String
@available(OSX 10.9, *)
let NSMetadataItemParticipantsKey: String
@available(OSX 10.9, *)
let NSMetadataItemProjectsKey: String
@available(OSX 10.9, *)
let NSMetadataItemDownloadedDateKey: String
@available(OSX 10.9, *)
let NSMetadataItemWhereFromsKey: String
@available(OSX 10.9, *)
let NSMetadataItemCommentKey: String
@available(OSX 10.9, *)
let NSMetadataItemCopyrightKey: String
@available(OSX 10.9, *)
let NSMetadataItemLastUsedDateKey: String
@available(OSX 10.9, *)
let NSMetadataItemContentCreationDateKey: String
@available(OSX 10.9, *)
let NSMetadataItemContentModificationDateKey: String
@available(OSX 10.9, *)
let NSMetadataItemDateAddedKey: String
@available(OSX 10.9, *)
let NSMetadataItemDurationSecondsKey: String
@available(OSX 10.9, *)
let NSMetadataItemContactKeywordsKey: String
@available(OSX 10.9, *)
let NSMetadataItemVersionKey: String
@available(OSX 10.9, *)
let NSMetadataItemPixelHeightKey: String
@available(OSX 10.9, *)
let NSMetadataItemPixelWidthKey: String
@available(OSX 10.9, *)
let NSMetadataItemPixelCountKey: String
@available(OSX 10.9, *)
let NSMetadataItemColorSpaceKey: String
@available(OSX 10.9, *)
let NSMetadataItemBitsPerSampleKey: String
@available(OSX 10.9, *)
let NSMetadataItemFlashOnOffKey: String
@available(OSX 10.9, *)
let NSMetadataItemFocalLengthKey: String
@available(OSX 10.9, *)
let NSMetadataItemAcquisitionMakeKey: String
@available(OSX 10.9, *)
let NSMetadataItemAcquisitionModelKey: String
@available(OSX 10.9, *)
let NSMetadataItemISOSpeedKey: String
@available(OSX 10.9, *)
let NSMetadataItemOrientationKey: String
@available(OSX 10.9, *)
let NSMetadataItemLayerNamesKey: String
@available(OSX 10.9, *)
let NSMetadataItemWhiteBalanceKey: String
@available(OSX 10.9, *)
let NSMetadataItemApertureKey: String
@available(OSX 10.9, *)
let NSMetadataItemProfileNameKey: String
@available(OSX 10.9, *)
let NSMetadataItemResolutionWidthDPIKey: String
@available(OSX 10.9, *)
let NSMetadataItemResolutionHeightDPIKey: String
@available(OSX 10.9, *)
let NSMetadataItemExposureModeKey: String
@available(OSX 10.9, *)
let NSMetadataItemExposureTimeSecondsKey: String
@available(OSX 10.9, *)
let NSMetadataItemEXIFVersionKey: String
@available(OSX 10.9, *)
let NSMetadataItemCameraOwnerKey: String
@available(OSX 10.9, *)
let NSMetadataItemFocalLength35mmKey: String
@available(OSX 10.9, *)
let NSMetadataItemLensModelKey: String
@available(OSX 10.9, *)
let NSMetadataItemEXIFGPSVersionKey: String
@available(OSX 10.9, *)
let NSMetadataItemAltitudeKey: String
@available(OSX 10.9, *)
let NSMetadataItemLatitudeKey: String
@available(OSX 10.9, *)
let NSMetadataItemLongitudeKey: String
@available(OSX 10.9, *)
let NSMetadataItemSpeedKey: String
@available(OSX 10.9, *)
let NSMetadataItemTimestampKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSTrackKey: String
@available(OSX 10.9, *)
let NSMetadataItemImageDirectionKey: String
@available(OSX 10.9, *)
let NSMetadataItemNamedLocationKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSStatusKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSMeasureModeKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSDOPKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSMapDatumKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSDestLatitudeKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSDestLongitudeKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSDestBearingKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSDestDistanceKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSProcessingMethodKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSAreaInformationKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSDateStampKey: String
@available(OSX 10.9, *)
let NSMetadataItemGPSDifferentalKey: String
@available(OSX 10.9, *)
let NSMetadataItemCodecsKey: String
@available(OSX 10.9, *)
let NSMetadataItemMediaTypesKey: String
@available(OSX 10.9, *)
let NSMetadataItemStreamableKey: String
@available(OSX 10.9, *)
let NSMetadataItemTotalBitRateKey: String
@available(OSX 10.9, *)
let NSMetadataItemVideoBitRateKey: String
@available(OSX 10.9, *)
let NSMetadataItemAudioBitRateKey: String
@available(OSX 10.9, *)
let NSMetadataItemDeliveryTypeKey: String
@available(OSX 10.9, *)
let NSMetadataItemAlbumKey: String
@available(OSX 10.9, *)
let NSMetadataItemHasAlphaChannelKey: String
@available(OSX 10.9, *)
let NSMetadataItemRedEyeOnOffKey: String
@available(OSX 10.9, *)
let NSMetadataItemMeteringModeKey: String
@available(OSX 10.9, *)
let NSMetadataItemMaxApertureKey: String
@available(OSX 10.9, *)
let NSMetadataItemFNumberKey: String
@available(OSX 10.9, *)
let NSMetadataItemExposureProgramKey: String
@available(OSX 10.9, *)
let NSMetadataItemExposureTimeStringKey: String
@available(OSX 10.9, *)
let NSMetadataItemHeadlineKey: String
@available(OSX 10.9, *)
let NSMetadataItemInstructionsKey: String
@available(OSX 10.9, *)
let NSMetadataItemCityKey: String
@available(OSX 10.9, *)
let NSMetadataItemStateOrProvinceKey: String
@available(OSX 10.9, *)
let NSMetadataItemCountryKey: String
@available(OSX 10.9, *)
let NSMetadataItemTextContentKey: String
@available(OSX 10.9, *)
let NSMetadataItemAudioSampleRateKey: String
@available(OSX 10.9, *)
let NSMetadataItemAudioChannelCountKey: String
@available(OSX 10.9, *)
let NSMetadataItemTempoKey: String
@available(OSX 10.9, *)
let NSMetadataItemKeySignatureKey: String
@available(OSX 10.9, *)
let NSMetadataItemTimeSignatureKey: String
@available(OSX 10.9, *)
let NSMetadataItemAudioEncodingApplicationKey: String
@available(OSX 10.9, *)
let NSMetadataItemComposerKey: String
@available(OSX 10.9, *)
let NSMetadataItemLyricistKey: String
@available(OSX 10.9, *)
let NSMetadataItemAudioTrackNumberKey: String
@available(OSX 10.9, *)
let NSMetadataItemRecordingDateKey: String
@available(OSX 10.9, *)
let NSMetadataItemMusicalGenreKey: String
@available(OSX 10.9, *)
let NSMetadataItemIsGeneralMIDISequenceKey: String
@available(OSX 10.9, *)
let NSMetadataItemRecordingYearKey: String
@available(OSX 10.9, *)
let NSMetadataItemOrganizationsKey: String
@available(OSX 10.9, *)
let NSMetadataItemLanguagesKey: String
@available(OSX 10.9, *)
let NSMetadataItemRightsKey: String
@available(OSX 10.9, *)
let NSMetadataItemPublishersKey: String
@available(OSX 10.9, *)
let NSMetadataItemContributorsKey: String
@available(OSX 10.9, *)
let NSMetadataItemCoverageKey: String
@available(OSX 10.9, *)
let NSMetadataItemSubjectKey: String
@available(OSX 10.9, *)
let NSMetadataItemThemeKey: String
@available(OSX 10.9, *)
let NSMetadataItemDescriptionKey: String
@available(OSX 10.9, *)
let NSMetadataItemIdentifierKey: String
@available(OSX 10.9, *)
let NSMetadataItemAudiencesKey: String
@available(OSX 10.9, *)
let NSMetadataItemNumberOfPagesKey: String
@available(OSX 10.9, *)
let NSMetadataItemPageWidthKey: String
@available(OSX 10.9, *)
let NSMetadataItemPageHeightKey: String
@available(OSX 10.9, *)
let NSMetadataItemSecurityMethodKey: String
@available(OSX 10.9, *)
let NSMetadataItemCreatorKey: String
@available(OSX 10.9, *)
let NSMetadataItemEncodingApplicationsKey: String
@available(OSX 10.9, *)
let NSMetadataItemDueDateKey: String
@available(OSX 10.9, *)
let NSMetadataItemStarRatingKey: String
@available(OSX 10.9, *)
let NSMetadataItemPhoneNumbersKey: String
@available(OSX 10.9, *)
let NSMetadataItemEmailAddressesKey: String
@available(OSX 10.9, *)
let NSMetadataItemInstantMessageAddressesKey: String
@available(OSX 10.9, *)
let NSMetadataItemKindKey: String
@available(OSX 10.9, *)
let NSMetadataItemRecipientsKey: String
@available(OSX 10.9, *)
let NSMetadataItemFinderCommentKey: String
@available(OSX 10.9, *)
let NSMetadataItemFontsKey: String
@available(OSX 10.9, *)
let NSMetadataItemAppleLoopsRootKeyKey: String
@available(OSX 10.9, *)
let NSMetadataItemAppleLoopsKeyFilterTypeKey: String
@available(OSX 10.9, *)
let NSMetadataItemAppleLoopsLoopModeKey: String
@available(OSX 10.9, *)
let NSMetadataItemAppleLoopDescriptorsKey: String
@available(OSX 10.9, *)
let NSMetadataItemMusicalInstrumentCategoryKey: String
@available(OSX 10.9, *)
let NSMetadataItemMusicalInstrumentNameKey: String
@available(OSX 10.9, *)
let NSMetadataItemCFBundleIdentifierKey: String
@available(OSX 10.9, *)
let NSMetadataItemInformationKey: String
@available(OSX 10.9, *)
let NSMetadataItemDirectorKey: String
@available(OSX 10.9, *)
let NSMetadataItemProducerKey: String
@available(OSX 10.9, *)
let NSMetadataItemGenreKey: String
@available(OSX 10.9, *)
let NSMetadataItemPerformersKey: String
@available(OSX 10.9, *)
let NSMetadataItemOriginalFormatKey: String
@available(OSX 10.9, *)
let NSMetadataItemOriginalSourceKey: String
@available(OSX 10.9, *)
let NSMetadataItemAuthorEmailAddressesKey: String
@available(OSX 10.9, *)
let NSMetadataItemRecipientEmailAddressesKey: String
@available(OSX 10.9, *)
let NSMetadataItemAuthorAddressesKey: String
@available(OSX 10.9, *)
let NSMetadataItemRecipientAddressesKey: String
@available(OSX 10.9, *)
let NSMetadataItemIsLikelyJunkKey: String
@available(OSX 10.9, *)
let NSMetadataItemExecutableArchitecturesKey: String
@available(OSX 10.9, *)
let NSMetadataItemExecutablePlatformKey: String
@available(OSX 10.9, *)
let NSMetadataItemApplicationCategoriesKey: String
@available(OSX 10.9, *)
let NSMetadataItemIsApplicationManagedKey: String
let NSNetServicesErrorCode: String
let NSNetServicesErrorDomain: String
enum NSNetServicesError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case CollisionError
  case NotFoundError
  case ActivityInProgress
  case BadArgumentError
  case CancelledError
  case InvalidError
  case TimeoutError
}
struct NSNetServiceOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoAutoRename: NSNetServiceOptions { get }
  @available(OSX 10.9, *)
  static var ListenForConnections: NSNetServiceOptions { get }
}
class NSNetService : NSObject {
  init(domain: String, type: String, name: String, port: Int32)
  convenience init(domain: String, type: String, name: String)
  func scheduleIn(aRunLoop: NSRunLoop, forMode mode: String)
  func removeFrom(aRunLoop: NSRunLoop, forMode mode: String)
  unowned(unsafe) var delegate: @sil_unmanaged NSNetServiceDelegate?
  @available(OSX 10.10, *)
  var includesPeerToPeer: Bool
  var name: String { get }
  var type: String { get }
  var domain: String { get }
  var hostName: String? { get }
  var addresses: [NSData]? { get }
  @available(OSX 10.5, *)
  var port: Int { get }
  func publish()
  @available(OSX 10.5, *)
  func publish(options options: NSNetServiceOptions = [])
  func stop()
  class func dictionaryFromTXTRecord(txtData: NSData) -> [String : NSData]
  class func dataFromTXTRecord(txtDictionary: [String : NSData]) -> NSData
  func resolveWithTimeout(timeout: NSTimeInterval)
  func getInputStream(inputStream: UnsafeMutablePointer<NSInputStream?>, outputStream: UnsafeMutablePointer<NSOutputStream?>) -> Bool
  func setTXTRecord(recordData: NSData?) -> Bool
  func txtRecordData() -> NSData?
  func startMonitoring()
  func stopMonitoring()
  convenience init()
}
class NSNetServiceBrowser : NSObject {
  init()
  unowned(unsafe) var delegate: @sil_unmanaged NSNetServiceBrowserDelegate?
  @available(OSX 10.10, *)
  var includesPeerToPeer: Bool
  func scheduleIn(aRunLoop: NSRunLoop, forMode mode: String)
  func removeFrom(aRunLoop: NSRunLoop, forMode mode: String)
  func searchForBrowsableDomains()
  func searchForRegistrationDomains()
  func searchForServicesOfType(type: String, inDomain domainString: String)
  func stop()
}
protocol NSNetServiceDelegate : NSObjectProtocol {
  optional func netServiceWillPublish(sender: NSNetService)
  optional func netServiceDidPublish(sender: NSNetService)
  optional func netService(sender: NSNetService, didNotPublish errorDict: [String : NSNumber])
  optional func netServiceWillResolve(sender: NSNetService)
  optional func netServiceDidResolveAddress(sender: NSNetService)
  optional func netService(sender: NSNetService, didNotResolve errorDict: [String : NSNumber])
  optional func netServiceDidStop(sender: NSNetService)
  optional func netService(sender: NSNetService, didUpdateTXTRecord data: NSData)
  @available(OSX 10.9, *)
  optional func netService(sender: NSNetService, didAcceptConnectionWith inputStream: NSInputStream, outputStream: NSOutputStream)
}
protocol NSNetServiceBrowserDelegate : NSObjectProtocol {
  optional func netServiceBrowserWillSearch(browser: NSNetServiceBrowser)
  optional func netServiceBrowserDidStopSearch(browser: NSNetServiceBrowser)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didNotSearch errorDict: [String : NSNumber])
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didFindDomain domainString: String, moreComing: Bool)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didFind service: NSNetService, moreComing: Bool)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didRemoveDomain domainString: String, moreComing: Bool)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didRemove service: NSNetService, moreComing: Bool)
}

/****************	Notifications	****************/
class NSNotification : NSObject, NSCopying, NSCoding {
  var name: String { get }
  var object: AnyObject? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  @available(OSX 10.6, *)
  init(name: String, object: AnyObject?, userInfo: [NSObject : AnyObject]? = [:])
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
}
extension NSNotification {
  convenience init(name aName: String, object anObject: AnyObject?)
  convenience init()
}

/****************	Notification Center	****************/
class NSNotificationCenter : NSObject {
  class func defaultCenter() -> NSNotificationCenter
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: AnyObject?)
  func post(notification: NSNotification)
  func postNotificationName(aName: String, object anObject: AnyObject?)
  func postNotificationName(aName: String, object anObject: AnyObject?, userInfo aUserInfo: [NSObject : AnyObject]? = [:])
  func removeObserver(observer: AnyObject)
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: AnyObject?)
  @available(OSX 10.6, *)
  func addObserverForName(name: String?, object obj: AnyObject?, queue: NSOperationQueue?, usingBlock block: (NSNotification) -> Void) -> NSObjectProtocol
  init()
}
enum NSPostingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PostWhenIdle
  case PostASAP
  case PostNow
}
struct NSNotificationCoalescing : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoCoalescing: NSNotificationCoalescing { get }
  static var CoalescingOnName: NSNotificationCoalescing { get }
  static var CoalescingOnSender: NSNotificationCoalescing { get }
}
class NSNotificationQueue : NSObject {
  class func defaultQueue() -> NSNotificationQueue
  init(notificationCenter: NSNotificationCenter)
  func enqueueNotification(notification: NSNotification, postingStyle: NSPostingStyle)
  func enqueueNotification(notification: NSNotification, postingStyle: NSPostingStyle, coalesceMask: NSNotificationCoalescing, forModes modes: [String]?)
  func dequeueNotificationsMatching(notification: NSNotification, coalesceMask: Int)
  convenience init()
}
class NSNull : NSObject, NSCopying, NSSecureCoding {
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum NSNumberFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_0
  case Behavior10_4
}
class NSNumberFormatter : NSFormatter {
  @available(OSX 10.10, *)
  var formattingContext: NSFormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFrom(number: NSNumber) -> String?
  func numberFrom(string: String) -> NSNumber?
  @available(OSX 10.6, *)
  class func localizedStringFrom(num: NSNumber, number nstyle: NSNumberFormatterStyle) -> String
  class func defaultFormatterBehavior() -> NSNumberFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: NSNumberFormatterBehavior)
  var numberStyle: NSNumberFormatterStyle
  @NSCopying var locale: NSLocale!
  var generatesDecimalNumbers: Bool
  var formatterBehavior: NSNumberFormatterBehavior
  var negativeFormat: String!
  var textAttributesForNegativeValues: [String : AnyObject]?
  var positiveFormat: String!
  var textAttributesForPositiveValues: [String : AnyObject]?
  var allowsFloats: Bool
  var decimalSeparator: String!
  var alwaysShowsDecimalSeparator: Bool
  var currencyDecimalSeparator: String!
  var usesGroupingSeparator: Bool
  var groupingSeparator: String!
  var zeroSymbol: String?
  var textAttributesForZero: [String : AnyObject]?
  var nilSymbol: String
  var textAttributesForNil: [String : AnyObject]?
  var notANumberSymbol: String!
  var textAttributesForNotANumber: [String : AnyObject]?
  var positiveInfinitySymbol: String
  var textAttributesForPositiveInfinity: [String : AnyObject]?
  var negativeInfinitySymbol: String
  var textAttributesForNegativeInfinity: [String : AnyObject]?
  var positivePrefix: String!
  var positiveSuffix: String!
  var negativePrefix: String!
  var negativeSuffix: String!
  var currencyCode: String!
  var currencySymbol: String!
  var internationalCurrencySymbol: String!
  var percentSymbol: String!
  var perMillSymbol: String!
  var minusSign: String!
  var plusSign: String!
  var exponentSymbol: String!
  var groupingSize: Int
  var secondaryGroupingSize: Int
  @NSCopying var multiplier: NSNumber?
  var formatWidth: Int
  var paddingCharacter: String!
  var paddingPosition: NSNumberFormatterPadPosition
  var roundingMode: NSNumberFormatterRoundingMode
  @NSCopying var roundingIncrement: NSNumber!
  var minimumIntegerDigits: Int
  var maximumIntegerDigits: Int
  var minimumFractionDigits: Int
  var maximumFractionDigits: Int
  @NSCopying var minimum: NSNumber?
  @NSCopying var maximum: NSNumber?
  @available(OSX 10.5, *)
  var currencyGroupingSeparator: String!
  @available(OSX 10.5, *)
  var isLenient: Bool
  @available(OSX 10.5, *)
  var usesSignificantDigits: Bool
  @available(OSX 10.5, *)
  var minimumSignificantDigits: Int
  @available(OSX 10.5, *)
  var maximumSignificantDigits: Int
  @available(OSX 10.5, *)
  var isPartialStringValidationEnabled: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
enum NSNumberFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case DecimalStyle
  case CurrencyStyle
  case PercentStyle
  case ScientificStyle
  case SpellOutStyle
  @available(OSX 10.11, *)
  case OrdinalStyle
  @available(OSX 10.11, *)
  case CurrencyISOCodeStyle
  @available(OSX 10.11, *)
  case CurrencyPluralStyle
  @available(OSX 10.11, *)
  case CurrencyAccountingStyle
}
enum NSNumberFormatterPadPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BeforePrefix
  case AfterPrefix
  case BeforeSuffix
  case AfterSuffix
}
enum NSNumberFormatterRoundingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RoundCeiling
  case RoundFloor
  case RoundDown
  case RoundUp
  case RoundHalfEven
  case RoundHalfDown
  case RoundHalfUp
}
extension NSNumberFormatter {
  var hasThousandSeparators: Bool
  var thousandSeparator: String!
  var localizesFormat: Bool
  var format: String
  @NSCopying var attributedStringForZero: NSAttributedString
  @NSCopying var attributedStringForNil: NSAttributedString
  @NSCopying var attributedStringForNotANumber: NSAttributedString
  @NSCopying var roundingBehavior: NSDecimalNumberHandler
}
var NSFoundationVersionNumber: Double
var NSFoundationVersionNumber10_0: Double { get }
var NSFoundationVersionNumber10_1: Double { get }
var NSFoundationVersionNumber10_1_1: Double { get }
var NSFoundationVersionNumber10_1_2: Double { get }
var NSFoundationVersionNumber10_1_3: Double { get }
var NSFoundationVersionNumber10_1_4: Double { get }
var NSFoundationVersionNumber10_2: Double { get }
var NSFoundationVersionNumber10_2_1: Double { get }
var NSFoundationVersionNumber10_2_2: Double { get }
var NSFoundationVersionNumber10_2_3: Double { get }
var NSFoundationVersionNumber10_2_4: Double { get }
var NSFoundationVersionNumber10_2_5: Double { get }
var NSFoundationVersionNumber10_2_6: Double { get }
var NSFoundationVersionNumber10_2_7: Double { get }
var NSFoundationVersionNumber10_2_8: Double { get }
var NSFoundationVersionNumber10_3: Double { get }
var NSFoundationVersionNumber10_3_1: Double { get }
var NSFoundationVersionNumber10_3_2: Double { get }
var NSFoundationVersionNumber10_3_3: Double { get }
var NSFoundationVersionNumber10_3_4: Double { get }
var NSFoundationVersionNumber10_3_5: Double { get }
var NSFoundationVersionNumber10_3_6: Double { get }
var NSFoundationVersionNumber10_3_7: Double { get }
var NSFoundationVersionNumber10_3_8: Double { get }
var NSFoundationVersionNumber10_3_9: Double { get }
var NSFoundationVersionNumber10_4: Double { get }
var NSFoundationVersionNumber10_4_1: Double { get }
var NSFoundationVersionNumber10_4_2: Double { get }
var NSFoundationVersionNumber10_4_3: Double { get }
var NSFoundationVersionNumber10_4_4_Intel: Double { get }
var NSFoundationVersionNumber10_4_4_PowerPC: Double { get }
var NSFoundationVersionNumber10_4_5: Double { get }
var NSFoundationVersionNumber10_4_6: Double { get }
var NSFoundationVersionNumber10_4_7: Double { get }
var NSFoundationVersionNumber10_4_8: Double { get }
var NSFoundationVersionNumber10_4_9: Double { get }
var NSFoundationVersionNumber10_4_10: Double { get }
var NSFoundationVersionNumber10_4_11: Double { get }
var NSFoundationVersionNumber10_5: Double { get }
var NSFoundationVersionNumber10_5_1: Double { get }
var NSFoundationVersionNumber10_5_2: Double { get }
var NSFoundationVersionNumber10_5_3: Double { get }
var NSFoundationVersionNumber10_5_4: Double { get }
var NSFoundationVersionNumber10_5_5: Double { get }
var NSFoundationVersionNumber10_5_6: Double { get }
var NSFoundationVersionNumber10_5_7: Double { get }
var NSFoundationVersionNumber10_5_8: Double { get }
var NSFoundationVersionNumber10_6: Double { get }
var NSFoundationVersionNumber10_6_1: Double { get }
var NSFoundationVersionNumber10_6_2: Double { get }
var NSFoundationVersionNumber10_6_3: Double { get }
var NSFoundationVersionNumber10_6_4: Double { get }
var NSFoundationVersionNumber10_6_5: Double { get }
var NSFoundationVersionNumber10_6_6: Double { get }
var NSFoundationVersionNumber10_6_7: Double { get }
var NSFoundationVersionNumber10_6_8: Double { get }
var NSFoundationVersionNumber10_7: Double { get }
var NSFoundationVersionNumber10_7_1: Double { get }
var NSFoundationVersionNumber10_7_2: Double { get }
var NSFoundationVersionNumber10_7_3: Double { get }
var NSFoundationVersionNumber10_7_4: Double { get }
var NSFoundationVersionNumber10_8: Double { get }
var NSFoundationVersionNumber10_8_1: Double { get }
var NSFoundationVersionNumber10_8_2: Double { get }
var NSFoundationVersionNumber10_8_3: Double { get }
var NSFoundationVersionNumber10_8_4: Double { get }
var NSFoundationVersionNumber10_9: Int32 { get }
var NSFoundationVersionNumber10_9_1: Int32 { get }
var NSFoundationVersionNumber10_9_2: Double { get }
var NSFoundationVersionNumber10_10: Double { get }
var NSFoundationVersionNumber10_10_1: Double { get }
var NSFoundationVersionNumber10_10_2: Double { get }
var NSFoundationVersionNumber10_10_3: Double { get }
func NSStringFromSelector(aSelector: Selector) -> String
func NSSelectorFromString(aSelectorName: String) -> Selector
func NSStringFromClass(aClass: AnyClass) -> String
func NSClassFromString(aClassName: String) -> AnyClass?
@available(OSX 10.5, *)
func NSStringFromProtocol(proto: Protocol) -> String
@available(OSX 10.5, *)
func NSProtocolFromString(namestr: String) -> Protocol?
func NSGetSizeAndAlignment(typePtr: UnsafePointer<Int8>, _ sizep: UnsafeMutablePointer<Int>, _ alignp: UnsafeMutablePointer<Int>) -> UnsafePointer<Int8>
func NSLogv(format: String, _ args: CVaListPointer)
enum NSComparisonResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OrderedAscending
  case OrderedSame
  case OrderedDescending
}
typealias NSComparator = (AnyObject, AnyObject) -> NSComparisonResult
struct NSEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: NSEnumerationOptions { get }
  static var Reverse: NSEnumerationOptions { get }
}
struct NSSortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: NSSortOptions { get }
  static var Stable: NSSortOptions { get }
}
@available(OSX 10.10, *)
enum NSQualityOfService : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UserInteractive
  case UserInitiated
  case Utility
  case Background
  case Default
}
let NSNotFound: Int

/***************	Basic protocols		***************/
protocol NSCopying {
  func copy(zone zone: NSZone = nil) -> AnyObject
}
protocol NSMutableCopying {
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}
protocol NSCoding {
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSSecureCoding : NSCoding {
  static func supportsSecureCoding() -> Bool
}

/***********	Base class		***********/
extension NSObject {
  class func version() -> Int
  class func setVersion(aVersion: Int)
  var classForCoder: AnyClass { get }
  class func replacementObjectFor(aCoder: NSCoder) -> AnyObject?
  func replacementObjectFor(aCoder: NSCoder) -> AnyObject?
  class func awakeAfterUsing(aDecoder: NSCoder) -> AnyObject?
  func awakeAfterUsing(aDecoder: NSCoder) -> AnyObject?
  class func classForCoder() -> AnyClass
}
extension NSObject {
}

/***********	Discardable Content		***********/
protocol NSDiscardableContent {
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension NSObject {
  @available(OSX 10.6, *)
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(X: AnyObject?) -> AnyObject?
extension NSObject {
  @available(OSX 10.5, *)
  class func scriptingValueFor(objectSpecifier: NSScriptObjectSpecifier) -> AnyObject?
  @available(OSX 10.5, *)
  func scriptingValueFor(objectSpecifier: NSScriptObjectSpecifier) -> AnyObject?
  var scriptingProperties: [String : AnyObject]?
  @available(OSX 10.5, *)
  class func copyScriptingValue(value: AnyObject, forKey key: String, withProperties properties: [String : AnyObject]) -> AnyObject?
  @available(OSX 10.5, *)
  func copyScriptingValue(value: AnyObject, forKey key: String, withProperties properties: [String : AnyObject]) -> AnyObject?
  @available(OSX 10.5, *)
  class func newScriptingObjectOf(objectClass: AnyClass, forValueForKey key: String, withContentsValue contentsValue: AnyObject?, properties: [String : AnyObject]) -> AnyObject?
  @available(OSX 10.5, *)
  func newScriptingObjectOf(objectClass: AnyClass, forValueForKey key: String, withContentsValue contentsValue: AnyObject?, properties: [String : AnyObject]) -> AnyObject?
  class func scriptingProperties() -> [String : AnyObject]?
  class func setScriptingProperties(scriptingProperties: [String : AnyObject]?)
}
@available(OSX 10.5, *)
class NSOperation : NSObject {
  func start()
  func main()
  var isCancelled: Bool { get }
  func cancel()
  var isExecuting: Bool { get }
  var isFinished: Bool { get }
  var isConcurrent: Bool { get }
  @available(OSX 10.8, *)
  var isAsynchronous: Bool { get }
  var isReady: Bool { get }
  func addDependency(op: NSOperation)
  func removeDependency(op: NSOperation)
  var dependencies: [NSOperation] { get }
  var queuePriority: NSOperationQueuePriority
  @available(OSX 10.6, *)
  var completionBlock: (() -> Void)?
  @available(OSX 10.6, *)
  func waitUntilFinished()
  @available(OSX, introduced=10.6, deprecated=10.10)
  var threadPriority: Double
  @available(OSX 10.10, *)
  var qualityOfService: NSQualityOfService
  @available(OSX 10.10, *)
  var name: String?
  init()
}
enum NSOperationQueuePriority : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case VeryLow
  case Low
  case Normal
  case High
  case VeryHigh
}
@available(OSX 10.6, *)
class NSBlockOperation : NSOperation {
  convenience init(block: () -> Void)
  func addExecutionBlock(block: () -> Void)
  var executionBlocks: [() -> Void] { get }
  init()
}
@available(OSX 10.5, *)
let NSInvocationOperationVoidResultException: String
@available(OSX 10.5, *)
let NSInvocationOperationCancelledException: String
let NSOperationQueueDefaultMaxConcurrentOperationCount: Int
@available(OSX 10.5, *)
class NSOperationQueue : NSObject {
  func addOperation(op: NSOperation)
  @available(OSX 10.6, *)
  func addOperations(ops: [NSOperation], waitUntilFinished wait: Bool)
  @available(OSX 10.6, *)
  func addOperationWith(block: () -> Void)
  var operations: [NSOperation] { get }
  @available(OSX 10.6, *)
  var operationCount: Int { get }
  var maxConcurrentOperationCount: Int
  var isSuspended: Bool
  @available(OSX 10.6, *)
  var name: String?
  @available(OSX 10.10, *)
  var qualityOfService: NSQualityOfService
  @available(OSX 10.10, *)
  unowned(unsafe) var underlyingQueue: @sil_unmanaged dispatch_queue_t?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  @available(OSX 10.6, *)
  class func current() -> NSOperationQueue?
  @available(OSX 10.6, *)
  class func main() -> NSOperationQueue
  init()
}

/****************       Immutable Ordered Set   ****************/
@available(OSX 10.7, *)
class NSOrderedSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectAt(idx: Int) -> AnyObject
  func indexOf(object: AnyObject) -> Int
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encodeWith(aCoder: NSCoder)
  @available(OSX 10.7, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSOrderedSet : SequenceType {
  /// Return a *generator* over the elements of this *sequence*.
  ///
  /// - Complexity: O(1).
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}

extension NSOrderedSet {
  convenience init(objects elements: AnyObject...)
}

extension NSOrderedSet : ArrayLiteralConvertible {
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}
extension NSOrderedSet {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func objectsAt(indexes: NSIndexSet) -> [AnyObject]
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func isEqualTo(other: NSOrderedSet) -> Bool
  func contains(object: AnyObject) -> Bool
  func intersectsOrderedSet(other: NSOrderedSet) -> Bool
  func intersectsSet(set: Set<NSObject>) -> Bool
  func isSubsetOf(other: NSOrderedSet) -> Bool
  func isSubsetOf(set: Set<NSObject>) -> Bool
  @available(OSX 10.8, *)
  subscript (idx: Int) -> AnyObject { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var reversed: NSOrderedSet { get }
  var array: [AnyObject] { get }
  var set: Set<NSObject> { get }
  func enumerateObjectsUsing(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(options opts: NSEnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAt(s: NSIndexSet, options opts: NSEnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObject(options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectAt(s: NSIndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjects(options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjectsAt(s: NSIndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexOf(object: AnyObject, inSortedRange range: NSRange, options opts: NSBinarySearchingOptions = [], usingComparator cmp: NSComparator) -> Int
  func sortedArrayUsingComparator(cmptr: NSComparator) -> [AnyObject]
  func sortedArray(options opts: NSSortOptions = [], usingComparator cmptr: NSComparator) -> [AnyObject]
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
}
extension NSOrderedSet {
  convenience init(object: AnyObject)
  convenience init(orderedSet set: NSOrderedSet)
  convenience init(orderedSet set: NSOrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: NSOrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
}

/****************       Mutable Ordered Set     ****************/
@available(OSX 10.7, *)
class NSMutableOrderedSet : NSOrderedSet {
  func insert(object: AnyObject, at idx: Int)
  func removeObjectAt(idx: Int)
  func replaceObjectAt(idx: Int, withObject object: AnyObject)
  init?(coder aDecoder: NSCoder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(orderedSet set: NSOrderedSet)
  convenience init(orderedSet set: NSOrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: NSOrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
}
extension NSMutableOrderedSet {
  func add(object: AnyObject)
  func addObjects(objects: UnsafePointer<AnyObject?>, count: Int)
  func addObjectsFrom(array: [AnyObject])
  func exchangeObjectAt(idx1: Int, withObjectAt idx2: Int)
  func moveObjectsAt(indexes: NSIndexSet, to idx: Int)
  func insert(objects: [AnyObject], at indexes: NSIndexSet)
  func setObject(obj: AnyObject, at idx: Int)
  @available(OSX 10.8, *)
  subscript (idx: Int) -> AnyObject
  func replaceObjectsIn(range: NSRange, withObjects objects: UnsafePointer<AnyObject?>, count: Int)
  func replaceObjectsAt(indexes: NSIndexSet, withObjects objects: [AnyObject])
  func removeObjectsIn(range: NSRange)
  func removeObjectsAt(indexes: NSIndexSet)
  func removeAllObjects()
  func remove(object: AnyObject)
  func removeObjectsIn(array: [AnyObject])
  func intersectOrderedSet(other: NSOrderedSet)
  func minusOrderedSet(other: NSOrderedSet)
  func unionOrderedSet(other: NSOrderedSet)
  func intersectSet(other: Set<NSObject>)
  func minusSet(other: Set<NSObject>)
  func unionSet(other: Set<NSObject>)
  func sortUsingComparator(cmptr: NSComparator)
  func sort(options opts: NSSortOptions = [], usingComparator cmptr: NSComparator)
  func sortRange(range: NSRange, options opts: NSSortOptions = [], usingComparator cmptr: NSComparator)
}
extension NSMutableOrderedSet {
}
@available(OSX 10.6, *)
class NSOrthography : NSObject, NSCopying, NSCoding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  @available(OSX 10.6, *)
  init(dominantScript script: String, languageMap map: [String : [String]])
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(OSX 10.6, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.6, *)
  func encodeWith(aCoder: NSCoder)
}
extension NSOrthography {
  @available(OSX 10.6, *)
  func languagesForScript(script: String) -> [String]?
  @available(OSX 10.6, *)
  func dominantLanguageForScript(script: String) -> String?
  @available(OSX 10.6, *)
  var dominantLanguage: String { get }
  @available(OSX 10.6, *)
  var allScripts: [String] { get }
  @available(OSX 10.6, *)
  var allLanguages: [String] { get }
}
extension NSOrthography {
}
extension NSString {
  class func pathWithComponents(components: [String]) -> String
  var pathComponents: [String] { get }
  var isAbsolutePath: Bool { get }
  var lastPathComponent: String { get }
  var deletingLastPathComponent: String { get }
  func appendingPathComponent(str: String) -> String
  var pathExtension: String { get }
  var deletingPathExtension: String { get }
  func appendingPathExtension(str: String) -> String?
  var abbreviatingWithTildeInPath: String { get }
  var expandingTildeInPath: String { get }
  var standardizingPath: String { get }
  var resolvingSymlinksInPath: String { get }
  func stringsByAppendingPaths(paths: [String]) -> [String]
  func completePathInto(outputName: AutoreleasingUnsafeMutablePointer<NSString?>, caseSensitive flag: Bool, matchesInto outputArray: AutoreleasingUnsafeMutablePointer<NSArray?>, filterTypes: [String]?) -> Int
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  func getFileSystemRepresentation(cname: UnsafeMutablePointer<Int8>, maxLength max: Int) -> Bool
}
extension NSArray {
  func pathsMatchingExtensions(filterTypes: [String]) -> [String]
}
func NSUserName() -> String
func NSFullUserName() -> String
func NSHomeDirectory() -> String
func NSHomeDirectoryForUser(userName: String?) -> String?
func NSTemporaryDirectory() -> String
func NSOpenStepRootDirectory() -> String
enum NSSearchPathDirectory : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ApplicationDirectory
  case DemoApplicationDirectory
  case DeveloperApplicationDirectory
  case AdminApplicationDirectory
  case LibraryDirectory
  case DeveloperDirectory
  case UserDirectory
  case DocumentationDirectory
  case DocumentDirectory
  case CoreServiceDirectory
  @available(OSX 10.6, *)
  case AutosavedInformationDirectory
  case DesktopDirectory
  case CachesDirectory
  case ApplicationSupportDirectory
  @available(OSX 10.5, *)
  case DownloadsDirectory
  @available(OSX 10.6, *)
  case InputMethodsDirectory
  @available(OSX 10.6, *)
  case MoviesDirectory
  @available(OSX 10.6, *)
  case MusicDirectory
  @available(OSX 10.6, *)
  case PicturesDirectory
  @available(OSX 10.6, *)
  case PrinterDescriptionDirectory
  @available(OSX 10.6, *)
  case SharedPublicDirectory
  @available(OSX 10.6, *)
  case PreferencePanesDirectory
  @available(OSX 10.8, *)
  case ApplicationScriptsDirectory
  @available(OSX 10.6, *)
  case ItemReplacementDirectory
  case AllApplicationsDirectory
  case AllLibrariesDirectory
  @available(OSX 10.8, *)
  case TrashDirectory
}
struct NSSearchPathDomainMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UserDomainMask: NSSearchPathDomainMask { get }
  static var LocalDomainMask: NSSearchPathDomainMask { get }
  static var NetworkDomainMask: NSSearchPathDomainMask { get }
  static var SystemDomainMask: NSSearchPathDomainMask { get }
  static var AllDomainsMask: NSSearchPathDomainMask { get }
}
func NSSearchPathForDirectoriesInDomains(directory: NSSearchPathDirectory, _ domainMask: NSSearchPathDomainMask, _ expandTilde: Bool) -> [String]
@available(OSX 10.11, *)
class NSPersonNameComponents : NSObject, NSCopying, NSSecureCoding {
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  @NSCopying var phoneticRepresentation: NSPersonNameComponents?
  init()
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
enum NSPersonNameComponentsFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Short
  case Medium
  case Long
  case Abbreviated
}
@available(OSX 10.11, *)
struct NSPersonNameComponentsFormatterOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Phonetic: NSPersonNameComponentsFormatterOptions { get }
}
@available(OSX 10.11, *)
class NSPersonNameComponentsFormatter : NSFormatter {
  var style: NSPersonNameComponentsFormatterStyle
  var isPhonetic: Bool
  class func localizedStringFrom(components: NSPersonNameComponents, style nameFormatStyle: NSPersonNameComponentsFormatterStyle, options nameOptions: NSPersonNameComponentsFormatterOptions = []) -> String
  func stringFrom(components: NSPersonNameComponents) -> String
  func annotatedStringFrom(components: NSPersonNameComponents) -> NSAttributedString
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
let NSPersonNameComponentKey: String
@available(OSX 10.11, *)
let NSPersonNameComponentGivenName: String
@available(OSX 10.11, *)
let NSPersonNameComponentFamilyName: String
@available(OSX 10.11, *)
let NSPersonNameComponentMiddleName: String
@available(OSX 10.11, *)
let NSPersonNameComponentPrefix: String
@available(OSX 10.11, *)
let NSPersonNameComponentSuffix: String
@available(OSX 10.11, *)
let NSPersonNameComponentNickname: String
@available(OSX 10.11, *)
let NSPersonNameComponentDelimiter: String
@available(OSX 10.5, *)
class NSPointerArray : NSObject, NSFastEnumeration, NSCopying, NSCoding {
  init(options: NSPointerFunctionsOptions = [])
  init(pointerFunctions functions: NSPointerFunctions)
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  func pointerAt(index: Int) -> UnsafeMutablePointer<Void>
  func addPointer(pointer: UnsafeMutablePointer<Void>)
  func removePointerAt(index: Int)
  func insertPointer(item: UnsafeMutablePointer<Void>, at index: Int)
  func replacePointerAt(index: Int, withPointer item: UnsafeMutablePointer<Void>)
  func compact()
  var count: Int
  convenience init()
  @available(OSX 10.5, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
  @available(OSX 10.5, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPointerArray {
  @available(OSX 10.8, *)
  class func strongObjects() -> NSPointerArray
  @available(OSX 10.8, *)
  class func weakObjects() -> NSPointerArray
  var allObjects: [AnyObject] { get }
}
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
struct NSPointerFunctionsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(OSX 10.5, *)
  static var StrongMemory: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var OpaqueMemory: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var MallocMemory: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var MachVirtualMemory: NSPointerFunctionsOptions { get }
  @available(OSX 10.8, *)
  static var WeakMemory: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var ObjectPersonality: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var OpaquePersonality: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var ObjectPointerPersonality: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var CStringPersonality: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var StructPersonality: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var IntegerPersonality: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var CopyIn: NSPointerFunctionsOptions { get }
}
@available(OSX 10.5, *)
class NSPointerFunctions : NSObject, NSCopying {
  init(options: NSPointerFunctionsOptions = [])
  var hashFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Int)?
  var isEqualFunction: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> ObjCBool)?
  var sizeFunction: (@convention(c) (UnsafePointer<Void>) -> Int)?
  var descriptionFunction: (@convention(c) (UnsafePointer<Void>) -> String?)?
  var relinquishFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Void)?
  var acquireFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?, ObjCBool) -> UnsafeMutablePointer<Void>)?
  var usesStrongWriteBarrier: Bool
  var usesWeakReadAndWriteBarriers: Bool
  convenience init()
  @available(OSX 10.5, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
typealias NSSocketNativeHandle = Int32
let NSPortDidBecomeInvalidNotification: String
class NSPort : NSObject, NSCopying, NSCoding {
  func invalidate()
  var isValid: Bool { get }
  func setDelegate(anObject: NSPortDelegate?)
  func delegate() -> NSPortDelegate?
  func scheduleIn(runLoop: NSRunLoop, forMode mode: String)
  func removeFrom(runLoop: NSRunLoop, forMode mode: String)
  var reservedSpaceLength: Int { get }
  func sendBefore(limitDate: NSDate, components: NSMutableArray?, from receivePort: NSPort?, reserved headerSpaceReserved: Int) -> Bool
  func sendBefore(limitDate: NSDate, msgid msgID: Int, components: NSMutableArray?, from receivePort: NSPort?, reserved headerSpaceReserved: Int) -> Bool
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSPortDelegate : NSObjectProtocol {
  optional func handle(message: NSPortMessage)
}
class NSMachPort : NSPort {
  class func portWithMachPort(machPort: UInt32) -> NSPort
  init(machPort: UInt32)
  func setDelegate(anObject: NSMachPortDelegate?)
  func delegate() -> NSMachPortDelegate?
  @available(OSX 10.5, *)
  class func portWithMachPort(machPort: UInt32, options f: NSMachPortOptions = []) -> NSPort
  @available(OSX 10.5, *)
  init(machPort: UInt32, options f: NSMachPortOptions = [])
  var machPort: UInt32 { get }
  func scheduleIn(runLoop: NSRunLoop, forMode mode: String)
  func removeFrom(runLoop: NSRunLoop, forMode mode: String)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.5, *)
struct NSMachPortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DeallocateNone: NSMachPortOptions { get }
  static var DeallocateSendRight: NSMachPortOptions { get }
  static var DeallocateReceiveRight: NSMachPortOptions { get }
}
protocol NSMachPortDelegate : NSPortDelegate {
  optional func handleMachMessage(msg: UnsafeMutablePointer<Void>)
}
class NSMessagePort : NSPort {
  init()
  init?(coder aDecoder: NSCoder)
}
class NSSocketPort : NSPort {
  convenience init()
  convenience init?(tcpPort port: UInt16)
  init?(protocolFamily family: Int32, socketType type: Int32, protocol: Int32, address: NSData)
  init?(protocolFamily family: Int32, socketType type: Int32, protocol: Int32, socket sock: NSSocketNativeHandle)
  convenience init?(remoteWithTCPPort port: UInt16, host hostName: String?)
  init(remoteWithProtocolFamily family: Int32, socketType type: Int32, protocol: Int32, address: NSData)
  var protocolFamily: Int32 { get }
  var socketType: Int32 { get }
  var `protocol`: Int32 { get }
  @NSCopying var address: NSData { get }
  var socket: NSSocketNativeHandle { get }
  init?(coder aDecoder: NSCoder)
}
extension NSObject {
  class func classForPortCoder() -> AnyClass
}
class NSPortMessage : NSObject {
  init(send sendPort: NSPort?, receive replyPort: NSPort?, components: [AnyObject]?)
  var components: [AnyObject]? { get }
  var receivePort: NSPort? { get }
  var sendPort: NSPort? { get }
  func sendBefore(date: NSDate) -> Bool
  var msgid: UInt32
  convenience init()
}
@available(OSX 10.4, *)
class NSPredicate : NSObject, NSSecureCoding, NSCopying {
  /*not inherited*/ init(format predicateFormat: String, argumentArray arguments: [AnyObject]?)
  /*not inherited*/ init(format predicateFormat: String, arguments argList: CVaListPointer)
  @available(OSX 10.9, *)
  /*not inherited*/ init?(fromMetadataQueryString queryString: String)
  /*not inherited*/ init(value: Bool)
  @available(OSX 10.6, *)
  /*not inherited*/ init(block: (AnyObject, [String : AnyObject]?) -> Bool)
  var predicateFormat: String { get }
  func withSubstitutionVariables(variables: [String : AnyObject]) -> Self
  func evaluateWith(object: AnyObject?) -> Bool
  @available(OSX 10.5, *)
  func evaluateWith(object: AnyObject?, substitutionVariables bindings: [String : AnyObject]?) -> Bool
  @available(OSX 10.9, *)
  func allowEvaluation()
  init()
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

extension NSPredicate {
  convenience init(format predicateFormat: String, _ args: CVarArgType...)
}
struct _predicateFlags {
  var _evaluationBlocked: UInt32
  var _reservedPredicateFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedPredicateFlags: UInt32)
}
extension NSArray {
  func filteredArrayUsing(predicate: NSPredicate) -> [AnyObject]
}
extension NSMutableArray {
  func filterUsing(predicate: NSPredicate)
}
extension NSSet {
  @available(OSX 10.5, *)
  func filteredSetUsing(predicate: NSPredicate) -> Set<NSObject>
}
extension NSMutableSet {
  @available(OSX 10.5, *)
  func filterUsing(predicate: NSPredicate)
}
extension NSOrderedSet {
  @available(OSX 10.7, *)
  func filteredOrderedSetUsing(p: NSPredicate) -> NSOrderedSet
}
extension NSMutableOrderedSet {
  @available(OSX 10.7, *)
  func filterUsing(p: NSPredicate)
}
var NSWindowsNTOperatingSystem: Int { get }
var NSWindows95OperatingSystem: Int { get }
var NSSolarisOperatingSystem: Int { get }
var NSHPUXOperatingSystem: Int { get }
var NSMACHOperatingSystem: Int { get }
var NSSunOSOperatingSystem: Int { get }
var NSOSF1OperatingSystem: Int { get }
struct NSOperatingSystemVersion {
  var majorVersion: Int
  var minorVersion: Int
  var patchVersion: Int
  init()
  init(majorVersion: Int, minorVersion: Int, patchVersion: Int)
}
class NSProcessInfo : NSObject {
  class func processInfo() -> NSProcessInfo
  var environment: [String : String] { get }
  var arguments: [String] { get }
  var hostName: String { get }
  var processName: String
  var processIdentifier: Int32 { get }
  var globallyUniqueString: String { get }
  @available(OSX, introduced=10.0, deprecated=10.10, message="-operatingSystem always returns NSMACHOperatingSystem, use -operatingSystemVersion or -isOperatingSystemAtLeastVersion: instead")
  func operatingSystem() -> Int
  @available(OSX, introduced=10.0, deprecated=10.10, message="-operatingSystemName always returns NSMACHOperatingSystem, use -operatingSystemVersionString instead")
  func operatingSystemName() -> String
  var operatingSystemVersionString: String { get }
  @available(OSX 10.10, *)
  var operatingSystemVersion: NSOperatingSystemVersion { get }
  @available(OSX 10.5, *)
  var processorCount: Int { get }
  @available(OSX 10.5, *)
  var activeProcessorCount: Int { get }
  @available(OSX 10.5, *)
  var physicalMemory: UInt64 { get }
  @available(OSX 10.10, *)
  func isOperatingSystemAtLeastVersion(version: NSOperatingSystemVersion) -> Bool
  @available(OSX 10.6, *)
  var systemUptime: NSTimeInterval { get }
  @available(OSX 10.6, *)
  func disableSuddenTermination()
  @available(OSX 10.6, *)
  func enableSuddenTermination()
  @available(OSX 10.7, *)
  func disableAutomaticTermination(reason: String)
  @available(OSX 10.7, *)
  func enableAutomaticTermination(reason: String)
  @available(OSX 10.7, *)
  var automaticTerminationSupportEnabled: Bool
  init()
}
@available(OSX 10.9, *)
struct NSActivityOptions : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var IdleDisplaySleepDisabled: NSActivityOptions { get }
  static var IdleSystemSleepDisabled: NSActivityOptions { get }
  static var SuddenTerminationDisabled: NSActivityOptions { get }
  static var AutomaticTerminationDisabled: NSActivityOptions { get }
  static var UserInitiated: NSActivityOptions { get }
  static var UserInitiatedAllowingIdleSystemSleep: NSActivityOptions { get }
  static var Background: NSActivityOptions { get }
  static var LatencyCritical: NSActivityOptions { get }
}
extension NSProcessInfo {
  @available(OSX 10.9, *)
  func beginActivity(options options: NSActivityOptions = [], reason: String) -> NSObjectProtocol
  @available(OSX 10.9, *)
  func endActivity(activity: NSObjectProtocol)
  @available(OSX 10.9, *)
  func performActivity(options options: NSActivityOptions = [], reason: String, usingBlock block: () -> Void)
}
@available(OSX 10.10.3, *)
enum NSProcessInfoThermalState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Nominal
  case Fair
  case Serious
  case Critical
}
extension NSProcessInfo {
  @available(OSX 10.10.3, *)
  var thermalState: NSProcessInfoThermalState { get }
}
extension NSProcessInfo {
}
@available(OSX 10.10.3, *)
let NSProcessInfoThermalStateDidChangeNotification: String
@available(OSX 10.9, *)
class NSProgress : NSObject {
  class func current() -> NSProgress?
  /*not inherited*/ init(totalUnitCount unitCount: Int64)
  @available(OSX 10.11, *)
  class func discreteProgressWithTotalUnitCount(unitCount: Int64) -> NSProgress
  @available(OSX 10.11, *)
  /*not inherited*/ init(totalUnitCount unitCount: Int64, parent: NSProgress, pendingUnitCount portionOfParentTotalUnitCount: Int64)
  init(parent parentProgressOrNil: NSProgress?, userInfo userInfoOrNil: [NSObject : AnyObject]? = [:])
  func becomeCurrentWithPendingUnitCount(unitCount: Int64)
  func resignCurrent()
  @available(OSX 10.11, *)
  func addChild(child: NSProgress, withPendingUnitCount inUnitCount: Int64)
  var totalUnitCount: Int64
  var completedUnitCount: Int64
  var localizedDescription: String!
  var localizedAdditionalDescription: String!
  var isCancellable: Bool
  var isPausable: Bool
  var isCancelled: Bool { get }
  var isPaused: Bool { get }
  var cancellationHandler: (() -> Void)?
  var pausingHandler: (() -> Void)?
  @available(OSX 10.11, *)
  var resumingHandler: (() -> Void)?
  func setUserInfoObject(objectOrNil: AnyObject?, forKey key: String)
  var isIndeterminate: Bool { get }
  var fractionCompleted: Double { get }
  func cancel()
  func pause()
  @available(OSX 10.11, *)
  func resume()
  var userInfo: [NSObject : AnyObject] { get }
  var kind: String?
  @available(OSX 10.9, *)
  func publish()
  @available(OSX 10.9, *)
  func unpublish()
  @available(OSX 10.9, *)
  class func addSubscriberForFileURL(url: NSURL, withPublishingHandler publishingHandler: NSProgressPublishingHandler) -> AnyObject
  @available(OSX 10.9, *)
  class func removeSubscriber(subscriber: AnyObject)
  @available(OSX 10.9, *)
  var isOld: Bool { get }
  convenience init()
}
typealias NSProgressUnpublishingHandler = () -> Void
typealias NSProgressPublishingHandler = (NSProgress) -> NSProgressUnpublishingHandler?
protocol NSProgressReporting : NSObjectProtocol {
  @available(OSX 10.9, *)
  var progress: NSProgress { get }
}
@available(OSX 10.9, *)
let NSProgressEstimatedTimeRemainingKey: String
@available(OSX 10.9, *)
let NSProgressThroughputKey: String
@available(OSX 10.9, *)
let NSProgressKindFile: String
@available(OSX 10.9, *)
let NSProgressFileOperationKindKey: String
@available(OSX 10.9, *)
let NSProgressFileOperationKindDownloading: String
@available(OSX 10.9, *)
let NSProgressFileOperationKindDecompressingAfterDownloading: String
@available(OSX 10.9, *)
let NSProgressFileOperationKindReceiving: String
@available(OSX 10.9, *)
let NSProgressFileOperationKindCopying: String
@available(OSX 10.9, *)
let NSProgressFileURLKey: String
@available(OSX 10.9, *)
let NSProgressFileTotalCountKey: String
@available(OSX 10.9, *)
let NSProgressFileCompletedCountKey: String
@available(OSX 10.9, *)
let NSProgressFileAnimationImageKey: String
@available(OSX 10.9, *)
let NSProgressFileAnimationImageOriginalRectKey: String
@available(OSX 10.9, *)
let NSProgressFileIconKey: String
struct NSPropertyListMutabilityOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immutable: NSPropertyListMutabilityOptions { get }
  static var MutableContainers: NSPropertyListMutabilityOptions { get }
  static var MutableContainersAndLeaves: NSPropertyListMutabilityOptions { get }
}
enum NSPropertyListFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OpenStepFormat
  case XMLFormat_v1_0
  case BinaryFormat_v1_0
}
typealias NSPropertyListReadOptions = NSPropertyListMutabilityOptions
typealias NSPropertyListWriteOptions = Int
class NSPropertyListSerialization : NSObject {
  class func propertyList(plist: AnyObject, isValidFor format: NSPropertyListFormat) -> Bool
  @available(OSX 10.6, *)
  class func dataWithPropertyList(plist: AnyObject, format: NSPropertyListFormat, options opt: NSPropertyListWriteOptions) throws -> NSData
  @available(OSX 10.6, *)
  class func writePropertyList(plist: AnyObject, to stream: NSOutputStream, format: NSPropertyListFormat, options opt: NSPropertyListWriteOptions, error: NSErrorPointer) -> Int
  @available(OSX 10.6, *)
  class func propertyListWith(data: NSData, options opt: NSPropertyListReadOptions = [], format: UnsafeMutablePointer<NSPropertyListFormat>) throws -> AnyObject
  @available(OSX 10.6, *)
  class func propertyListWith(stream: NSInputStream, options opt: NSPropertyListReadOptions = [], format: UnsafeMutablePointer<NSPropertyListFormat>) throws -> AnyObject
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use dataWithPropertyList:format:options:error: instead.")
  class func dataFromPropertyList(plist: AnyObject, format: NSPropertyListFormat, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> NSData?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use propertyListWithData:options:format:error: instead.")
  class func propertyListFrom(data: NSData, mutabilityOption opt: NSPropertyListMutabilityOptions = [], format: UnsafeMutablePointer<NSPropertyListFormat>, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> AnyObject?
  init()
}
class NSProtocolChecker : NSProxy {
  var `protocol`: Protocol { get }
  var target: NSObject? { get }
}
extension NSProtocolChecker {
  init(target anObject: NSObject, protocol aProtocol: Protocol)
}
class NSProxy : NSObjectProtocol {
  class func alloc() -> Self
  class func `class`() -> AnyClass
  class func forwardInvocation(invocation: NSInvocation)
  func forwardInvocation(invocation: NSInvocation)
  class func dealloc()
  func dealloc()
  class func finalize()
  func finalize()
  var description: String { get }
  var debugDescription: String { get }
  class func respondsTo(aSelector: Selector) -> Bool
  class func description() -> String
  class func debugDescription() -> String
  func isEqual(object: AnyObject?) -> Bool
  class func isEqual(object: AnyObject?) -> Bool
  var hash: Int { get }
  var superclass: AnyClass? { get }
  func `self`() -> Self
  func perform(aSelector: Selector) -> Unmanaged<AnyObject>!
  class func perform(aSelector: Selector) -> Unmanaged<AnyObject>!
  func perform(aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  class func perform(aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  func perform(aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  class func perform(aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  func isProxy() -> Bool
  class func isProxy() -> Bool
  func isKindOf(aClass: AnyClass) -> Bool
  class func isKindOf(aClass: AnyClass) -> Bool
  func isMemberOf(aClass: AnyClass) -> Bool
  class func isMemberOf(aClass: AnyClass) -> Bool
  func conformsTo(aProtocol: Protocol) -> Bool
  class func conformsTo(aProtocol: Protocol) -> Bool
  func respondsTo(aSelector: Selector) -> Bool
}
struct _NSRange {
  var location: Int
  var length: Int
  init()
  init(location: Int, length: Int)
}

extension NSRange {
  init(_ x: Range<Int>)
  @warn_unused_result
  func toRange() -> Range<Int>?
}

extension NSRange : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}

extension NSRange : _ObjectiveCBridgeable {
  static func _isBridgedToObjectiveC() -> Bool
  static func _getObjectiveCType() -> Any.Type
  func _bridgeToObjectiveC() -> NSValue
  static func _forceBridgeFromObjectiveC(x: NSValue, inout result: NSRange?)
  static func _conditionallyBridgeFromObjectiveC(x: NSValue, inout result: NSRange?) -> Bool
  typealias _ObjectiveCType = NSValue
}
typealias NSRange = _NSRange
typealias NSRangePointer = UnsafeMutablePointer<NSRange>
func NSMakeRange(loc: Int, _ len: Int) -> NSRange
func NSMaxRange(range: NSRange) -> Int
func NSLocationInRange(loc: Int, _ range: NSRange) -> Bool
func NSEqualRanges(range1: NSRange, _ range2: NSRange) -> Bool
func NSUnionRange(range1: NSRange, _ range2: NSRange) -> NSRange
func NSIntersectionRange(range1: NSRange, _ range2: NSRange) -> NSRange
func NSStringFromRange(range: NSRange) -> String
func NSRangeFromString(aString: String) -> NSRange
extension NSValue {
  /*not inherited*/ init(range: NSRange)
  var rangeValue: NSRange { get }
}
struct NSRegularExpressionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitive: NSRegularExpressionOptions { get }
  static var AllowCommentsAndWhitespace: NSRegularExpressionOptions { get }
  static var IgnoreMetacharacters: NSRegularExpressionOptions { get }
  static var DotMatchesLineSeparators: NSRegularExpressionOptions { get }
  static var AnchorsMatchLines: NSRegularExpressionOptions { get }
  static var UseUnixLineSeparators: NSRegularExpressionOptions { get }
  static var UseUnicodeWordBoundaries: NSRegularExpressionOptions { get }
}
@available(OSX 10.7, *)
class NSRegularExpression : NSObject, NSCopying, NSCoding {
  init(pattern: String, options: NSRegularExpressionOptions = []) throws
  var pattern: String { get }
  var options: NSRegularExpressionOptions { get }
  var numberOfCaptureGroups: Int { get }
  class func escapedPatternFor(string: String) -> String
  convenience init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct NSMatchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ReportProgress: NSMatchingOptions { get }
  static var ReportCompletion: NSMatchingOptions { get }
  static var Anchored: NSMatchingOptions { get }
  static var WithTransparentBounds: NSMatchingOptions { get }
  static var WithoutAnchoringBounds: NSMatchingOptions { get }
}
struct NSMatchingFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Progress: NSMatchingFlags { get }
  static var Completed: NSMatchingFlags { get }
  static var HitEnd: NSMatchingFlags { get }
  static var RequiredEnd: NSMatchingFlags { get }
  static var InternalError: NSMatchingFlags { get }
}
extension NSRegularExpression {
  func enumerateMatchesIn(string: String, options: NSMatchingOptions = [], range: NSRange, usingBlock block: (NSTextCheckingResult?, NSMatchingFlags, UnsafeMutablePointer<ObjCBool>) -> Void)
  func matchesIn(string: String, options: NSMatchingOptions = [], range: NSRange) -> [NSTextCheckingResult]
  func numberOfMatchesIn(string: String, options: NSMatchingOptions = [], range: NSRange) -> Int
  func firstMatchIn(string: String, options: NSMatchingOptions = [], range: NSRange) -> NSTextCheckingResult?
  func rangeOfFirstMatchIn(string: String, options: NSMatchingOptions = [], range: NSRange) -> NSRange
}
extension NSRegularExpression {
  func stringByReplacingMatchesIn(string: String, options: NSMatchingOptions = [], range: NSRange, withTemplate templ: String) -> String
  func replaceMatchesIn(string: NSMutableString, options: NSMatchingOptions = [], range: NSRange, withTemplate templ: String) -> Int
  func replacementStringFor(result: NSTextCheckingResult, in string: String, offset: Int, template templ: String) -> String
  class func escapedTemplateFor(string: String) -> String
}
@available(OSX 10.7, *)
class NSDataDetector : NSRegularExpression {
  init(types checkingTypes: NSTextCheckingTypes) throws
  var checkingTypes: NSTextCheckingTypes { get }
  convenience init(pattern: String, options: NSRegularExpressionOptions = []) throws
  convenience init()
  init?(coder aDecoder: NSCoder)
}
let NSDefaultRunLoopMode: String
@available(OSX 10.5, *)
let NSRunLoopCommonModes: String
class NSRunLoop : NSObject {
  class func current() -> NSRunLoop
  @available(OSX 10.5, *)
  class func main() -> NSRunLoop
  var currentMode: String? { get }
  func getCFRunLoop() -> CFRunLoop
  func add(timer: NSTimer, forMode mode: String)
  func add(aPort: NSPort, forMode mode: String)
  func remove(aPort: NSPort, forMode mode: String)
  func limitDateForMode(mode: String) -> NSDate?
  func acceptInputForMode(mode: String, before limitDate: NSDate)
  init()
}
extension NSRunLoop {
  func run()
  func runUntil(limitDate: NSDate)
  func runMode(mode: String, before limitDate: NSDate) -> Bool
}

/**************** 	Delayed perform	 ******************/
extension NSObject {
  class func perform(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval, inModes modes: [String])
  func perform(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval, inModes modes: [String])
  class func perform(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval)
  func perform(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval)
  class func cancelPreviousPerformRequestsWithTarget(aTarget: AnyObject, selector aSelector: Selector, object anArgument: AnyObject?)
  class func cancelPreviousPerformRequestsWithTarget(aTarget: AnyObject)
}
extension NSRunLoop {
  func perform(aSelector: Selector, target: AnyObject, argument arg: AnyObject?, order: Int, modes: [String])
  func cancelPerform(aSelector: Selector, target: AnyObject, argument arg: AnyObject?)
  func cancelPerformSelectorsWithTarget(target: AnyObject)
}
class NSScanner : NSObject, NSCopying {
  var string: String { get }
  var scanLocation: Int
  @NSCopying var charactersToBeSkipped: NSCharacterSet?
  var caseSensitive: Bool
  var locale: AnyObject?
  init(string: String)
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
}
extension NSScanner {
  func scanInt(result: UnsafeMutablePointer<Int32>) -> Bool
  @available(OSX 10.5, *)
  func scanInteger(result: UnsafeMutablePointer<Int>) -> Bool
  func scanLongLong(result: UnsafeMutablePointer<Int64>) -> Bool
  @available(OSX 10.9, *)
  func scanUnsignedLongLong(result: UnsafeMutablePointer<UInt64>) -> Bool
  func scanFloat(result: UnsafeMutablePointer<Float>) -> Bool
  func scanDouble(result: UnsafeMutablePointer<Double>) -> Bool
  func scanHexInt(result: UnsafeMutablePointer<UInt32>) -> Bool
  @available(OSX 10.5, *)
  func scanHexLongLong(result: UnsafeMutablePointer<UInt64>) -> Bool
  @available(OSX 10.5, *)
  func scanHexFloat(result: UnsafeMutablePointer<Float>) -> Bool
  @available(OSX 10.5, *)
  func scanHexDouble(result: UnsafeMutablePointer<Double>) -> Bool
  func scanString(string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanCharactersFrom(set: NSCharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpTo(string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToCharactersFrom(set: NSCharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  var isAtEnd: Bool { get }
  class func localizedScannerWith(string: String) -> AnyObject
}
class NSScriptClassDescription : NSClassDescription {
  /*not inherited*/ init?(forClass aClass: AnyClass)
  init?(suiteName: String, className: String, dictionary classDeclaration: [NSObject : AnyObject]?)
  var suiteName: String? { get }
  var className: String? { get }
  var implementationClassName: String? { get }
  var superclass: NSScriptClassDescription? { get }
  var appleEventCode: FourCharCode { get }
  func matchesAppleEventCode(appleEventCode: FourCharCode) -> Bool
  func supportsCommand(commandDescription: NSScriptCommandDescription) -> Bool
  func selectorForCommand(commandDescription: NSScriptCommandDescription) -> Selector
  func typeForKey(key: String) -> String?
  func forKey(key: String) -> NSScriptClassDescription?
  func appleEventCodeForKey(key: String) -> FourCharCode
  func keyWithAppleEventCode(appleEventCode: FourCharCode) -> String?
  var defaultSubcontainerAttributeKey: String? { get }
  func isLocationRequiredToCreateForKey(toManyRelationshipKey: String) -> Bool
  @available(OSX 10.5, *)
  func hasPropertyForKey(key: String) -> Bool
  @available(OSX 10.5, *)
  func hasOrderedToManyRelationshipForKey(key: String) -> Bool
  @available(OSX 10.5, *)
  func hasReadablePropertyForKey(key: String) -> Bool
  @available(OSX 10.5, *)
  func hasWritablePropertyForKey(key: String) -> Bool
  convenience init()
}
extension NSScriptClassDescription {
}
extension NSObject {
  var classCode: FourCharCode { get }
  var className: String { get }
  class func classCode() -> FourCharCode
  class func className() -> String
}
class NSScriptCoercionHandler : NSObject {
  class func shared() -> NSScriptCoercionHandler
  func coerceValue(value: AnyObject, to toClass: AnyClass) -> AnyObject?
  func registerCoercer(coercer: AnyObject, selector: Selector, toConvertFrom fromClass: AnyClass, to toClass: AnyClass)
  init()
}
var NSNoScriptError: Int { get }
var NSReceiverEvaluationScriptError: Int { get }
var NSKeySpecifierEvaluationScriptError: Int { get }
var NSArgumentEvaluationScriptError: Int { get }
var NSReceiversCantHandleCommandScriptError: Int { get }
var NSRequiredArgumentsMissingScriptError: Int { get }
var NSArgumentsWrongScriptError: Int { get }
var NSUnknownKeyScriptError: Int { get }
var NSInternalScriptError: Int { get }
var NSOperationNotSupportedForKeyScriptError: Int { get }
var NSCannotCreateScriptCommandError: Int { get }
class NSScriptCommand : NSObject, NSCoding {
  init(commandDescription commandDef: NSScriptCommandDescription)
  convenience init?(coder inCoder: NSCoder)
  var commandDescription: NSScriptCommandDescription { get }
  var directParameter: AnyObject?
  var receiversSpecifier: NSScriptObjectSpecifier?
  var evaluatedReceivers: AnyObject? { get }
  var arguments: [String : AnyObject]?
  var evaluatedArguments: [String : AnyObject]? { get }
  var isWellFormed: Bool { get }
  func performDefaultImplementation() -> AnyObject?
  func execute() -> AnyObject?
  var scriptErrorNumber: Int
  @available(OSX 10.5, *)
  var scriptErrorOffendingObjectDescriptor: NSAppleEventDescriptor?
  @available(OSX 10.5, *)
  var scriptErrorExpectedTypeDescriptor: NSAppleEventDescriptor?
  var scriptErrorString: String?
  class func current() -> NSScriptCommand?
  @NSCopying var appleEvent: NSAppleEventDescriptor? { get }
  func suspendExecution()
  func resumeExecutionWithResult(result: AnyObject?)
  convenience init()
  func encodeWith(aCoder: NSCoder)
}
class NSScriptCommandDescription : NSObject, NSCoding {
  init?(suiteName: String, commandName: String, dictionary commandDeclaration: [NSObject : AnyObject]?)
  init?(coder inCoder: NSCoder)
  var suiteName: String { get }
  var commandName: String { get }
  var appleEventClassCode: FourCharCode { get }
  var appleEventCode: FourCharCode { get }
  var commandClassName: String { get }
  var returnType: String? { get }
  var appleEventCodeForReturnType: FourCharCode { get }
  var argumentNames: [String] { get }
  func typeForArgumentWithName(argumentName: String) -> String?
  func appleEventCodeForArgumentWithName(argumentName: String) -> FourCharCode
  func isOptionalArgumentWithName(argumentName: String) -> Bool
  func createCommandInstance() -> NSScriptCommand
  func createCommandInstance(zone zone: NSZone = nil) -> NSScriptCommand
  func encodeWith(aCoder: NSCoder)
}
class NSScriptExecutionContext : NSObject {
  class func shared() -> NSScriptExecutionContext
  var topLevelObject: AnyObject?
  var objectBeingTested: AnyObject?
  var rangeContainerObject: AnyObject?
  init()
}
let NSOperationNotSupportedForKeyException: String
extension NSObject {
  class func valueAt(index: Int, inPropertyWithKey key: String) -> AnyObject?
  func valueAt(index: Int, inPropertyWithKey key: String) -> AnyObject?
  class func valueWithName(name: String, inPropertyWithKey key: String) -> AnyObject?
  func valueWithName(name: String, inPropertyWithKey key: String) -> AnyObject?
  class func valueWithUniqueID(uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  func valueWithUniqueID(uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  class func insertValue(value: AnyObject, at index: Int, inPropertyWithKey key: String)
  func insertValue(value: AnyObject, at index: Int, inPropertyWithKey key: String)
  class func removeValueAt(index: Int, fromPropertyWithKey key: String)
  func removeValueAt(index: Int, fromPropertyWithKey key: String)
  class func replaceValueAt(index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  func replaceValueAt(index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  class func insertValue(value: AnyObject, inPropertyWithKey key: String)
  func insertValue(value: AnyObject, inPropertyWithKey key: String)
  class func coerceValue(value: AnyObject?, forKey key: String) -> AnyObject?
  func coerceValue(value: AnyObject?, forKey key: String) -> AnyObject?
}
var NSNoSpecifierError: Int { get }
var NSNoTopLevelContainersSpecifierError: Int { get }
var NSContainerSpecifierError: Int { get }
var NSUnknownKeySpecifierError: Int { get }
var NSInvalidIndexSpecifierError: Int { get }
var NSInternalSpecifierError: Int { get }
var NSOperationNotSupportedForKeySpecifierError: Int { get }
enum NSInsertionPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PositionAfter
  case PositionBefore
  case PositionBeginning
  case PositionEnd
  case PositionReplace
}
enum NSRelativePosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case After
  case Before
}
enum NSWhoseSubelementIdentifier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case IndexSubelement
  case EverySubelement
  case MiddleSubelement
  case RandomSubelement
  case NoSubelement
}
class NSScriptObjectSpecifier : NSObject, NSCoding {
  @available(OSX 10.5, *)
  /*not inherited*/ init?(descriptor: NSAppleEventDescriptor)
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  unowned(unsafe) var child: @sil_unmanaged NSScriptObjectSpecifier?
  var container: NSScriptObjectSpecifier?
  var containerIsObjectBeingTested: Bool
  var containerIsRangeContainerObject: Bool
  var key: String
  var containerClassDescription: NSScriptClassDescription?
  var keyClassDescription: NSScriptClassDescription? { get }
  func indicesOfObjectsByEvaluatingWithContainer(container: AnyObject, count: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Int>
  func objectsByEvaluatingWithContainers(containers: AnyObject) -> AnyObject?
  var objectsByEvaluatingSpecifier: AnyObject? { get }
  var evaluationErrorNumber: Int
  var evaluationError: NSScriptObjectSpecifier? { get }
  @available(OSX 10.5, *)
  @NSCopying var descriptor: NSAppleEventDescriptor? { get }
  convenience init()
  func encodeWith(aCoder: NSCoder)
}
extension NSObject {
  var objectSpecifier: NSScriptObjectSpecifier? { get }
  class func indicesOfObjectsByEvaluatingObjectSpecifier(specifier: NSScriptObjectSpecifier) -> [NSNumber]?
  func indicesOfObjectsByEvaluatingObjectSpecifier(specifier: NSScriptObjectSpecifier) -> [NSNumber]?
  class func objectSpecifier() -> NSScriptObjectSpecifier?
}
class NSIndexSpecifier : NSScriptObjectSpecifier {
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, index: Int)
  var index: Int
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSMiddleSpecifier : NSScriptObjectSpecifier {
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSNameSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, name: String)
  var name: String
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
class NSPositionalSpecifier : NSObject {
  init(position: NSInsertionPosition, objectSpecifier specifier: NSScriptObjectSpecifier)
  @available(OSX 10.5, *)
  var position: NSInsertionPosition { get }
  @available(OSX 10.5, *)
  var objectSpecifier: NSScriptObjectSpecifier { get }
  func setInsertionClassDescription(classDescription: NSScriptClassDescription)
  func evaluate()
  var insertionContainer: AnyObject? { get }
  var insertionKey: String? { get }
  var insertionIndex: Int { get }
  var insertionReplaces: Bool { get }
  convenience init()
}
class NSPropertySpecifier : NSScriptObjectSpecifier {
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSRandomSpecifier : NSScriptObjectSpecifier {
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSRangeSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, start startSpec: NSScriptObjectSpecifier?, end endSpec: NSScriptObjectSpecifier?)
  var startSpecifier: NSScriptObjectSpecifier?
  var endSpecifier: NSScriptObjectSpecifier?
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
class NSRelativeSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, relativePosition relPos: NSRelativePosition, baseSpecifier: NSScriptObjectSpecifier?)
  var relativePosition: NSRelativePosition
  var baseSpecifier: NSScriptObjectSpecifier?
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
class NSUniqueIDSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, uniqueID: AnyObject)
  @NSCopying var uniqueID: AnyObject
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
class NSWhoseSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, test: NSScriptWhoseTest)
  var test: NSScriptWhoseTest
  var startSubelementIdentifier: NSWhoseSubelementIdentifier
  var startSubelementIndex: Int
  var endSubelementIdentifier: NSWhoseSubelementIdentifier
  var endSubelementIndex: Int
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
enum NSSaveOptions : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Yes
  case No
  case Ask
}
class NSCloneCommand : NSScriptCommand {
  func setReceiversSpecifier(receiversRef: NSScriptObjectSpecifier?)
  var keySpecifier: NSScriptObjectSpecifier { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSCloseCommand : NSScriptCommand {
  var saveOptions: NSSaveOptions { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSCountCommand : NSScriptCommand {
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSCreateCommand : NSScriptCommand {
  var createClassDescription: NSScriptClassDescription { get }
  var resolvedKeyDictionary: [String : AnyObject] { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSDeleteCommand : NSScriptCommand {
  func setReceiversSpecifier(receiversRef: NSScriptObjectSpecifier?)
  var keySpecifier: NSScriptObjectSpecifier { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSExistsCommand : NSScriptCommand {
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSGetCommand : NSScriptCommand {
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSMoveCommand : NSScriptCommand {
  func setReceiversSpecifier(receiversRef: NSScriptObjectSpecifier?)
  var keySpecifier: NSScriptObjectSpecifier { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSQuitCommand : NSScriptCommand {
  var saveOptions: NSSaveOptions { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSSetCommand : NSScriptCommand {
  func setReceiversSpecifier(receiversRef: NSScriptObjectSpecifier?)
  var keySpecifier: NSScriptObjectSpecifier { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSScriptSuiteRegistry : NSObject {
  class func shared() -> NSScriptSuiteRegistry
  class func setSharedScriptSuiteRegistry(registry: NSScriptSuiteRegistry)
  func loadSuitesFrom(bundle: NSBundle)
  func loadSuiteWith(suiteDeclaration: [NSObject : AnyObject], from bundle: NSBundle)
  func register(classDescription: NSScriptClassDescription)
  func register(commandDescription: NSScriptCommandDescription)
  var suiteNames: [String] { get }
  func appleEventCodeForSuite(suiteName: String) -> FourCharCode
  func bundleForSuite(suiteName: String) -> NSBundle?
  func classDescriptionsInSuite(suiteName: String) -> [String : NSScriptClassDescription]?
  func commandDescriptionsInSuite(suiteName: String) -> [String : NSScriptCommandDescription]?
  func suiteForAppleEventCode(appleEventCode: FourCharCode) -> String?
  func classDescriptionWithAppleEventCode(appleEventCode: FourCharCode) -> NSScriptClassDescription?
  func commandDescriptionWithAppleEventClass(appleEventClassCode: FourCharCode, andAppleEventCode appleEventIDCode: FourCharCode) -> NSScriptCommandDescription?
  func aeteResource(languageName: String) -> NSData?
  init()
}
enum NSTestComparisonOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case EqualToComparison
  case LessThanOrEqualToComparison
  case LessThanComparison
  case GreaterThanOrEqualToComparison
  case GreaterThanComparison
  case BeginsWithComparison
  case EndsWithComparison
  case ContainsComparison
}
class NSScriptWhoseTest : NSObject, NSCoding {
  func isTrue() -> Bool
  init()
  init?(coder inCoder: NSCoder)
  func encodeWith(aCoder: NSCoder)
}
class NSLogicalTest : NSScriptWhoseTest {
  init(andTestWith subTests: [NSSpecifierTest])
  init(orTestWith subTests: [NSSpecifierTest])
  init(notTestWith subTest: NSScriptWhoseTest)
  convenience init()
  init?(coder inCoder: NSCoder)
}
class NSSpecifierTest : NSScriptWhoseTest {
  init?(coder inCoder: NSCoder)
  init(objectSpecifier obj1: NSScriptObjectSpecifier?, comparisonOperator compOp: NSTestComparisonOperation, test obj2: AnyObject?)
}
extension NSObject {
  class func isEqualTo(object: AnyObject?) -> Bool
  func isEqualTo(object: AnyObject?) -> Bool
  class func isLessThanOrEqualTo(object: AnyObject?) -> Bool
  func isLessThanOrEqualTo(object: AnyObject?) -> Bool
  class func isLessThan(object: AnyObject?) -> Bool
  func isLessThan(object: AnyObject?) -> Bool
  class func isGreaterThanOrEqualTo(object: AnyObject?) -> Bool
  func isGreaterThanOrEqualTo(object: AnyObject?) -> Bool
  class func isGreaterThan(object: AnyObject?) -> Bool
  func isGreaterThan(object: AnyObject?) -> Bool
  class func isNotEqualTo(object: AnyObject?) -> Bool
  func isNotEqualTo(object: AnyObject?) -> Bool
  class func doesContain(object: AnyObject) -> Bool
  func doesContain(object: AnyObject) -> Bool
  class func isLike(object: String) -> Bool
  func isLike(object: String) -> Bool
  class func isCaseInsensitiveLike(object: String) -> Bool
  func isCaseInsensitiveLike(object: String) -> Bool
}
extension NSObject {
  class func scriptingIsEqualTo(object: AnyObject) -> Bool
  func scriptingIsEqualTo(object: AnyObject) -> Bool
  class func scriptingIsLessThanOrEqualTo(object: AnyObject) -> Bool
  func scriptingIsLessThanOrEqualTo(object: AnyObject) -> Bool
  class func scriptingIsLessThan(object: AnyObject) -> Bool
  func scriptingIsLessThan(object: AnyObject) -> Bool
  class func scriptingIsGreaterThanOrEqualTo(object: AnyObject) -> Bool
  func scriptingIsGreaterThanOrEqualTo(object: AnyObject) -> Bool
  class func scriptingIsGreaterThan(object: AnyObject) -> Bool
  func scriptingIsGreaterThan(object: AnyObject) -> Bool
  class func scriptingBeginsWith(object: AnyObject) -> Bool
  func scriptingBeginsWith(object: AnyObject) -> Bool
  class func scriptingEndsWith(object: AnyObject) -> Bool
  func scriptingEndsWith(object: AnyObject) -> Bool
  class func scriptingContains(object: AnyObject) -> Bool
  func scriptingContains(object: AnyObject) -> Bool
}

/****************	Immutable Set	****************/
class NSSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func member(object: AnyObject) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSSet : SequenceType {
  /// Return a *generator* over the elements of this *sequence*.
  ///
  /// - Complexity: O(1).
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}

extension NSSet {
  convenience init(objects elements: AnyObject...)
}

extension NSSet : ArrayLiteralConvertible {
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}

extension NSSet {
  /// Initializes a newly allocated set and adds to it objects from
  /// another given set.
  ///
  /// - Returns: An initialized objects set containing the objects from
  ///   `set`. The returned set might be different than the original
  ///   receiver.
  @objc(_swiftInitWithSet_NSSet:) convenience init(set anSet: NSSet)
}

extension NSSet : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension NSSet {
  var allObjects: [AnyObject] { get }
  func anyObject() -> AnyObject?
  func contains(anObject: AnyObject) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func intersectsSet(otherSet: Set<NSObject>) -> Bool
  func isEqualTo(otherSet: Set<NSObject>) -> Bool
  func isSubsetOf(otherSet: Set<NSObject>) -> Bool
  @available(OSX 10.5, *)
  func adding(anObject: AnyObject) -> Set<NSObject>
  @available(OSX 10.5, *)
  func addingObjectsFrom(other: Set<NSObject>) -> Set<NSObject>
  @available(OSX 10.5, *)
  func addingObjectsFrom(other: [AnyObject]) -> Set<NSObject>
  @available(OSX 10.6, *)
  func enumerateObjectsUsing(block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateObjects(options opts: NSEnumerationOptions = [], usingBlock block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func objectsPassingTest(predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  @available(OSX 10.6, *)
  func objects(options opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
}
extension NSSet {
  convenience init(object: AnyObject)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}

/****************	Mutable Set	****************/
class NSMutableSet : NSSet {
  func add(object: AnyObject)
  func remove(object: AnyObject)
  init?(coder aDecoder: NSCoder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
extension NSMutableSet {
  func addObjectsFrom(array: [AnyObject])
  func intersectSet(otherSet: Set<NSObject>)
  func minusSet(otherSet: Set<NSObject>)
  func removeAllObjects()
  func unionSet(otherSet: Set<NSObject>)
  func setSet(otherSet: Set<NSObject>)
}
extension NSMutableSet {
}

/****************	Counted Set	****************/
class NSCountedSet : NSMutableSet {
  init(capacity numItems: Int)
  convenience init(array: [AnyObject])
  convenience init(set: Set<NSObject>)
  func countFor(object: AnyObject) -> Int
  func objectEnumerator() -> NSEnumerator
  func add(object: AnyObject)
  func remove(object: AnyObject)
  init?(coder aDecoder: NSCoder)
  convenience init()
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
}
class NSSortDescriptor : NSObject, NSSecureCoding, NSCopying {
  init(key: String?, ascending: Bool)
  init(key: String?, ascending: Bool, selector: Selector)
  init?(coder: NSCoder)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector { get }
  @available(OSX 10.9, *)
  func allowEvaluation()
  @available(OSX 10.6, *)
  init(key: String?, ascending: Bool, comparator cmptr: NSComparator)
  @available(OSX 10.6, *)
  var comparator: NSComparator { get }
  func compare(object1: AnyObject, to object2: AnyObject) -> NSComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
extension NSSet {
  @available(OSX 10.6, *)
  func sortedArrayUsing(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArrayUsing(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableArray {
  func sortUsing(sortDescriptors: [NSSortDescriptor])
}
extension NSOrderedSet {
  @available(OSX 10.7, *)
  func sortedArrayUsing(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableOrderedSet {
  @available(OSX 10.7, *)
  func sortUsing(sortDescriptors: [NSSortDescriptor])
}
class NSSpellServer : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSSpellServerDelegate?
  func registerLanguage(language: String?, byVendor vendor: String?) -> Bool
  func isWordInUserDictionaries(word: String, caseSensitive flag: Bool) -> Bool
  func run()
  init()
}
struct __ssFlags {
  var delegateLearnsWords: UInt32
  var delegateForgetsWords: UInt32
  var busy: UInt32
  var _reserved: UInt32
  init()
  init(delegateLearnsWords: UInt32, delegateForgetsWords: UInt32, busy: UInt32, _reserved: UInt32)
}
protocol NSSpellServerDelegate : NSObjectProtocol {
  optional func spellServer(sender: NSSpellServer, findMisspelledWordIn stringToCheck: String, language: String, wordCount: UnsafeMutablePointer<Int>, countOnly: Bool) -> NSRange
  optional func spellServer(sender: NSSpellServer, suggestGuessesForWord word: String, inLanguage language: String) -> [String]?
  optional func spellServer(sender: NSSpellServer, didLearnWord word: String, inLanguage language: String)
  optional func spellServer(sender: NSSpellServer, didForgetWord word: String, inLanguage language: String)
  optional func spellServer(sender: NSSpellServer, suggestCompletionsForPartialWordRange range: NSRange, in string: String, language: String) -> [String]?
  @available(OSX 10.5, *)
  optional func spellServer(sender: NSSpellServer, checkGrammarIn stringToCheck: String, language: String?, details: AutoreleasingUnsafeMutablePointer<NSArray?>) -> NSRange
  @available(OSX 10.6, *)
  optional func spellServer(sender: NSSpellServer, check stringToCheck: String, offset: Int, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject]? = [:], orthography: NSOrthography?, wordCount: UnsafeMutablePointer<Int>) -> [NSTextCheckingResult]?
  @available(OSX 10.7, *)
  optional func spellServer(sender: NSSpellServer, recordResponse response: Int, toCorrection correction: String, forWord word: String, language: String)
}
@available(OSX 10.5, *)
let NSGrammarRange: String
@available(OSX 10.5, *)
let NSGrammarUserDescription: String
@available(OSX 10.5, *)
let NSGrammarCorrections: String
enum NSStreamStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotOpen
  case Opening
  case Open
  case Reading
  case Writing
  case AtEnd
  case Closed
  case Error
}
struct NSStreamEvent : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSStreamEvent { get }
  static var OpenCompleted: NSStreamEvent { get }
  static var HasBytesAvailable: NSStreamEvent { get }
  static var HasSpaceAvailable: NSStreamEvent { get }
  static var ErrorOccurred: NSStreamEvent { get }
  static var EndEncountered: NSStreamEvent { get }
}
class NSStream : NSObject {
  func open()
  func close()
  unowned(unsafe) var delegate: @sil_unmanaged NSStreamDelegate?
  func propertyForKey(key: String) -> AnyObject?
  func setProperty(property: AnyObject?, forKey key: String) -> Bool
  func scheduleIn(aRunLoop: NSRunLoop, forMode mode: String)
  func removeFrom(aRunLoop: NSRunLoop, forMode mode: String)
  var streamStatus: NSStreamStatus { get }
  @NSCopying var streamError: NSError? { get }
  init()
}
class NSInputStream : NSStream {
  func read(buffer: UnsafeMutablePointer<UInt8>, maxLength len: Int) -> Int
  func getBuffer(buffer: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, length len: UnsafeMutablePointer<Int>) -> Bool
  var hasBytesAvailable: Bool { get }
  init(data: NSData)
  @available(OSX 10.6, *)
  init?(url: NSURL)
  convenience init()
}
class NSOutputStream : NSStream {
  func write(buffer: UnsafePointer<UInt8>, maxLength len: Int) -> Int
  var hasSpaceAvailable: Bool { get }
  init(toMemory: ())
  init(toBuffer buffer: UnsafeMutablePointer<UInt8>, capacity: Int)
  @available(OSX 10.6, *)
  init?(url: NSURL, append shouldAppend: Bool)
  convenience init()
}
extension NSStream {
  @available(OSX 10.10, *)
  class func getStreamsToHostWithName(hostname: String, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<NSInputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<NSOutputStream?>)
  @available(OSX, introduced=10.3, deprecated=10.10, message="Please use getStreamsToHostWithName:port:inputStream:outputStream: instead")
  class func getStreamsTo(host: NSHost, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<NSInputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<NSOutputStream?>)
}
extension NSStream {
  @available(OSX 10.10, *)
  class func getBoundStreamsWithBufferSize(bufferSize: Int, inputStream: AutoreleasingUnsafeMutablePointer<NSInputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<NSOutputStream?>)
}
extension NSInputStream {
  convenience init?(fileAtPath path: String)
}
extension NSOutputStream {
  convenience init?(toFileAtPath path: String, append shouldAppend: Bool)
  class func toMemory() -> Self
}
protocol NSStreamDelegate : NSObjectProtocol {
  optional func stream(aStream: NSStream, handle eventCode: NSStreamEvent)
}
@available(OSX 10.3, *)
let NSStreamSocketSecurityLevelKey: String
@available(OSX 10.3, *)
let NSStreamSocketSecurityLevelNone: String
@available(OSX 10.3, *)
let NSStreamSocketSecurityLevelSSLv2: String
@available(OSX 10.3, *)
let NSStreamSocketSecurityLevelSSLv3: String
@available(OSX 10.3, *)
let NSStreamSocketSecurityLevelTLSv1: String
@available(OSX 10.3, *)
let NSStreamSocketSecurityLevelNegotiatedSSL: String
@available(OSX 10.3, *)
let NSStreamSOCKSProxyConfigurationKey: String
@available(OSX 10.3, *)
let NSStreamSOCKSProxyHostKey: String
@available(OSX 10.3, *)
let NSStreamSOCKSProxyPortKey: String
@available(OSX 10.3, *)
let NSStreamSOCKSProxyVersionKey: String
@available(OSX 10.3, *)
let NSStreamSOCKSProxyUserKey: String
@available(OSX 10.3, *)
let NSStreamSOCKSProxyPasswordKey: String
@available(OSX 10.3, *)
let NSStreamSOCKSProxyVersion4: String
@available(OSX 10.3, *)
let NSStreamSOCKSProxyVersion5: String
@available(OSX 10.3, *)
let NSStreamDataWrittenToMemoryStreamKey: String
@available(OSX 10.3, *)
let NSStreamFileCurrentOffsetKey: String
@available(OSX 10.3, *)
let NSStreamSocketSSLErrorDomain: String
@available(OSX 10.3, *)
let NSStreamSOCKSErrorDomain: String
@available(OSX 10.7, *)
let NSStreamNetworkServiceType: String
@available(OSX 10.7, *)
let NSStreamNetworkServiceTypeVoIP: String
@available(OSX 10.7, *)
let NSStreamNetworkServiceTypeVideo: String
@available(OSX 10.7, *)
let NSStreamNetworkServiceTypeBackground: String
@available(OSX 10.7, *)
let NSStreamNetworkServiceTypeVoice: String
typealias unichar = UInt16
struct NSStringCompareOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitiveSearch: NSStringCompareOptions { get }
  static var LiteralSearch: NSStringCompareOptions { get }
  static var BackwardsSearch: NSStringCompareOptions { get }
  static var AnchoredSearch: NSStringCompareOptions { get }
  static var NumericSearch: NSStringCompareOptions { get }
  @available(OSX 10.5, *)
  static var DiacriticInsensitiveSearch: NSStringCompareOptions { get }
  @available(OSX 10.5, *)
  static var WidthInsensitiveSearch: NSStringCompareOptions { get }
  @available(OSX 10.5, *)
  static var ForcedOrderingSearch: NSStringCompareOptions { get }
  @available(OSX 10.7, *)
  static var RegularExpressionSearch: NSStringCompareOptions { get }
}
var NSASCIIStringEncoding: UInt { get }
var NSNEXTSTEPStringEncoding: UInt { get }
var NSJapaneseEUCStringEncoding: UInt { get }
var NSUTF8StringEncoding: UInt { get }
var NSISOLatin1StringEncoding: UInt { get }
var NSSymbolStringEncoding: UInt { get }
var NSNonLossyASCIIStringEncoding: UInt { get }
var NSShiftJISStringEncoding: UInt { get }
var NSISOLatin2StringEncoding: UInt { get }
var NSUnicodeStringEncoding: UInt { get }
var NSWindowsCP1251StringEncoding: UInt { get }
var NSWindowsCP1252StringEncoding: UInt { get }
var NSWindowsCP1253StringEncoding: UInt { get }
var NSWindowsCP1254StringEncoding: UInt { get }
var NSWindowsCP1250StringEncoding: UInt { get }
var NSISO2022JPStringEncoding: UInt { get }
var NSMacOSRomanStringEncoding: UInt { get }
var NSUTF16StringEncoding: UInt { get }
var NSUTF16BigEndianStringEncoding: UInt { get }
var NSUTF16LittleEndianStringEncoding: UInt { get }
var NSUTF32StringEncoding: UInt { get }
var NSUTF32BigEndianStringEncoding: UInt { get }
var NSUTF32LittleEndianStringEncoding: UInt { get }
struct NSStringEncodingConversionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AllowLossy: NSStringEncodingConversionOptions { get }
  static var ExternalRepresentation: NSStringEncodingConversionOptions { get }
}
class NSString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  func characterAt(index: Int) -> unichar
  init()
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
}

extension NSString : StringLiteralConvertible {
  /// Create an instance initialized to `value`.
  required convenience init(unicodeScalarLiteral value: StaticString)
  required convenience init(extendedGraphemeClusterLiteral value: StaticString)
  /// Create an instance initialized to `value`.
  required convenience init(stringLiteral value: StaticString)
  typealias StringLiteralType = StaticString
  typealias ExtendedGraphemeClusterLiteralType = StaticString
  typealias UnicodeScalarLiteralType = StaticString
}

extension NSString {
  convenience init(format: NSString, _ args: CVarArgType...)
  convenience init(format: NSString, locale: NSLocale?, _ args: CVarArgType...)
  @warn_unused_result
  class func localizedStringWithFormat(format: NSString, _ args: CVarArgType...) -> Self
  @warn_unused_result
  func stringByAppendingFormat(format: NSString, _ args: CVarArgType...) -> NSString
}

extension NSString {
  /// Returns an `NSString` object initialized by copying the characters
  /// from another given string.
  ///
  /// - Returns: An `NSString` object initialized by copying the
  ///   characters from `aString`. The returned object may be different
  ///   from the original receiver.
  @objc(_swiftInitWithString_NSString:) convenience init(string aString: NSString)
}

extension NSString : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension NSString {
  func substringFrom(from: Int) -> String
  func substringTo(to: Int) -> String
  func substringWith(range: NSRange) -> String
  func getCharacters(buffer: UnsafeMutablePointer<unichar>, range: NSRange)
  func compare(string: String) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions = []) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions = [], range compareRange: NSRange) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions = [], range compareRange: NSRange, locale: AnyObject?) -> NSComparisonResult
  func caseInsensitiveCompare(string: String) -> NSComparisonResult
  func localizedCompare(string: String) -> NSComparisonResult
  func localizedCaseInsensitiveCompare(string: String) -> NSComparisonResult
  @available(OSX 10.6, *)
  func localizedStandardCompare(string: String) -> NSComparisonResult
  func isEqualTo(aString: String) -> Bool
  func hasPrefix(str: String) -> Bool
  func hasSuffix(str: String) -> Bool
  func commonPrefixWith(str: String, options mask: NSStringCompareOptions = []) -> String
  @available(OSX 10.10, *)
  func contains(str: String) -> Bool
  @available(OSX 10.10, *)
  func localizedCaseInsensitiveContains(str: String) -> Bool
  @available(OSX 10.11, *)
  func localizedStandardContains(str: String) -> Bool
  @available(OSX 10.11, *)
  func localizedStandardRangeOf(str: String) -> NSRange
  func rangeOf(searchString: String) -> NSRange
  func rangeOf(searchString: String, options mask: NSStringCompareOptions = []) -> NSRange
  func rangeOf(searchString: String, options mask: NSStringCompareOptions = [], range searchRange: NSRange) -> NSRange
  @available(OSX 10.5, *)
  func rangeOf(searchString: String, options mask: NSStringCompareOptions = [], range searchRange: NSRange, locale: NSLocale?) -> NSRange
  func rangeOfCharacterFrom(searchSet: NSCharacterSet) -> NSRange
  func rangeOfCharacterFrom(searchSet: NSCharacterSet, options mask: NSStringCompareOptions = []) -> NSRange
  func rangeOfCharacterFrom(searchSet: NSCharacterSet, options mask: NSStringCompareOptions = [], range searchRange: NSRange) -> NSRange
  func rangeOfComposedCharacterSequenceAt(index: Int) -> NSRange
  @available(OSX 10.5, *)
  func rangeOfComposedCharacterSequencesFor(range: NSRange) -> NSRange
  func appending(aString: String) -> String
  var doubleValue: Double { get }
  var floatValue: Float { get }
  var intValue: Int32 { get }
  @available(OSX 10.5, *)
  var integerValue: Int { get }
  @available(OSX 10.5, *)
  var longLongValue: Int64 { get }
  @available(OSX 10.5, *)
  var boolValue: Bool { get }
  var uppercase: String { get }
  var lowercase: String { get }
  var capitalized: String { get }
  @available(OSX 10.11, *)
  var localizedUppercase: String { get }
  @available(OSX 10.11, *)
  var localizedLowercase: String { get }
  @available(OSX 10.11, *)
  var localizedCapitalized: String { get }
  @available(OSX 10.8, *)
  func uppercaseStringWith(locale: NSLocale?) -> String
  @available(OSX 10.8, *)
  func lowercaseStringWith(locale: NSLocale?) -> String
  @available(OSX 10.8, *)
  func capitalizedStringWith(locale: NSLocale?) -> String
  func getLineStart(startPtr: UnsafeMutablePointer<Int>, end lineEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func lineRangeFor(range: NSRange) -> NSRange
  func getParagraphStart(startPtr: UnsafeMutablePointer<Int>, end parEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func paragraphRangeFor(range: NSRange) -> NSRange
  @available(OSX 10.6, *)
  func enumerateSubstringsIn(range: NSRange, options opts: NSStringEnumerationOptions = [], usingBlock block: (String?, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateLinesUsing(block: (String, UnsafeMutablePointer<ObjCBool>) -> Void)
  var utf8String: UnsafePointer<Int8> { get }
  var fastestEncoding: UInt { get }
  var smallestEncoding: UInt { get }
  func dataUsingEncoding(encoding: UInt, allowLossyConversion lossy: Bool) -> NSData?
  func dataUsingEncoding(encoding: UInt) -> NSData?
  func canBeConvertedToEncoding(encoding: UInt) -> Bool
  func cStringUsingEncoding(encoding: UInt) -> UnsafePointer<Int8>
  func getCString(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferCount: Int, encoding: UInt) -> Bool
  func getBytes(buffer: UnsafeMutablePointer<Void>, maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>, encoding: UInt, options: NSStringEncodingConversionOptions = [], range: NSRange, remaining leftover: NSRangePointer) -> Bool
  func maximumLengthOfBytesUsingEncoding(enc: UInt) -> Int
  func lengthOfBytesUsingEncoding(enc: UInt) -> Int
  class func availableStringEncodings() -> UnsafePointer<UInt>
  class func localizedNameOfStringEncoding(encoding: UInt) -> String
  class func defaultCStringEncoding() -> UInt
  var decomposedStringWithCanonicalMapping: String { get }
  var precomposedStringWithCanonicalMapping: String { get }
  var decomposedStringWithCompatibilityMapping: String { get }
  var precomposedStringWithCompatibilityMapping: String { get }
  func componentsSeparatedBy(separator: String) -> [String]
  @available(OSX 10.5, *)
  func componentsSeparatedByCharactersIn(separator: NSCharacterSet) -> [String]
  func byTrimmingCharactersIn(set: NSCharacterSet) -> String
  func byPaddingToLength(newLength: Int, withString padString: String, startingAt padIndex: Int) -> String
  @available(OSX 10.5, *)
  func folding(options options: NSStringCompareOptions = [], locale: NSLocale?) -> String
  @available(OSX 10.5, *)
  func replacingOccurrencesOf(target: String, withString replacement: String, options: NSStringCompareOptions = [], range searchRange: NSRange) -> String
  @available(OSX 10.5, *)
  func replacingOccurrencesOf(target: String, withString replacement: String) -> String
  @available(OSX 10.5, *)
  func replacingCharactersIn(range: NSRange, withString replacement: String) -> String
  @available(OSX 10.11, *)
  func applyingTransform(transform: String, reverse: Bool) -> String?
  func writeTo(url: NSURL, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  var description: String { get }
  var hash: Int { get }
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
struct NSStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByLines: NSStringEnumerationOptions { get }
  static var ByParagraphs: NSStringEnumerationOptions { get }
  static var ByComposedCharacterSequences: NSStringEnumerationOptions { get }
  static var ByWords: NSStringEnumerationOptions { get }
  static var BySentences: NSStringEnumerationOptions { get }
  static var Reverse: NSStringEnumerationOptions { get }
  static var SubstringNotRequired: NSStringEnumerationOptions { get }
  static var Localized: NSStringEnumerationOptions { get }
}
@available(OSX 10.11, *)
let NSStringTransformLatinToKatakana: String
@available(OSX 10.11, *)
let NSStringTransformLatinToHiragana: String
@available(OSX 10.11, *)
let NSStringTransformLatinToHangul: String
@available(OSX 10.11, *)
let NSStringTransformLatinToArabic: String
@available(OSX 10.11, *)
let NSStringTransformLatinToHebrew: String
@available(OSX 10.11, *)
let NSStringTransformLatinToThai: String
@available(OSX 10.11, *)
let NSStringTransformLatinToCyrillic: String
@available(OSX 10.11, *)
let NSStringTransformLatinToGreek: String
@available(OSX 10.11, *)
let NSStringTransformToLatin: String
@available(OSX 10.11, *)
let NSStringTransformMandarinToLatin: String
@available(OSX 10.11, *)
let NSStringTransformHiraganaToKatakana: String
@available(OSX 10.11, *)
let NSStringTransformFullwidthToHalfwidth: String
@available(OSX 10.11, *)
let NSStringTransformToXMLHex: String
@available(OSX 10.11, *)
let NSStringTransformToUnicodeName: String
@available(OSX 10.11, *)
let NSStringTransformStripCombiningMarks: String
@available(OSX 10.11, *)
let NSStringTransformStripDiacritics: String
extension NSString {
  @available(OSX 10.10, *)
  class func stringEncodingFor(data: NSData, encodingOptions opts: [String : AnyObject]? = [:], convertedString string: AutoreleasingUnsafeMutablePointer<NSString?>, usedLossyConversion: UnsafeMutablePointer<ObjCBool>) -> UInt
}
@available(OSX 10.10, *)
let NSStringEncodingDetectionSuggestedEncodingsKey: String
@available(OSX 10.10, *)
let NSStringEncodingDetectionDisallowedEncodingsKey: String
@available(OSX 10.10, *)
let NSStringEncodingDetectionUseOnlySuggestedEncodingsKey: String
@available(OSX 10.10, *)
let NSStringEncodingDetectionAllowLossyKey: String
@available(OSX 10.10, *)
let NSStringEncodingDetectionFromWindowsKey: String
@available(OSX 10.10, *)
let NSStringEncodingDetectionLossySubstitutionKey: String
@available(OSX 10.10, *)
let NSStringEncodingDetectionLikelyLanguageKey: String
class NSMutableString : NSString {
  func replaceCharactersIn(range: NSRange, withString aString: String)
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}

extension NSMutableString {
  func appendFormat(format: NSString, _ args: CVarArgType...)
}
extension NSMutableString {
  func insert(aString: String, at loc: Int)
  func deleteCharactersIn(range: NSRange)
  func append(aString: String)
  func setString(aString: String)
  func replaceOccurrencesOf(target: String, withString replacement: String, options: NSStringCompareOptions = [], range searchRange: NSRange) -> Int
  @available(OSX 10.11, *)
  func applyTransform(transform: String, reverse: Bool, range: NSRange, updatedRange resultingRange: NSRangePointer) -> Bool
  init(capacity: Int)
}
let NSCharacterConversionException: String
let NSParseErrorException: String
extension NSString {
  func propertyList() -> AnyObject
  func propertyListFromStringsFileFormat() -> [NSObject : AnyObject]?
}
extension NSString {
  func getCharacters(buffer: UnsafeMutablePointer<unichar>)
}
var NSProprietaryStringEncoding: UInt { get }
class NSSimpleCString : NSString {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
class NSConstantString : NSSimpleCString {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
@available(OSX 10.6, *)
enum NSTaskTerminationReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Exit
  case UncaughtSignal
}
class NSTask : NSObject {
  init()
  var launchPath: String?
  var arguments: [String]?
  var environment: [String : String]?
  var currentDirectoryPath: String
  var standardInput: AnyObject?
  var standardOutput: AnyObject?
  var standardError: AnyObject?
  func launch()
  func interrupt()
  func terminate()
  func suspend() -> Bool
  func resume() -> Bool
  var processIdentifier: Int32 { get }
  var isRunning: Bool { get }
  var terminationStatus: Int32 { get }
  @available(OSX 10.6, *)
  var terminationReason: NSTaskTerminationReason { get }
  @available(OSX 10.7, *)
  var terminationHandler: ((NSTask) -> Void)?
  @available(OSX 10.10, *)
  var qualityOfService: NSQualityOfService
}
extension NSTask {
  class func launchedTaskWithLaunchPath(path: String, arguments: [String]) -> NSTask
  func waitUntilExit()
}
let NSTaskDidTerminateNotification: String
struct NSTextCheckingType : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var Orthography: NSTextCheckingType { get }
  static var Spelling: NSTextCheckingType { get }
  static var Grammar: NSTextCheckingType { get }
  static var Date: NSTextCheckingType { get }
  static var Address: NSTextCheckingType { get }
  static var Link: NSTextCheckingType { get }
  static var Quote: NSTextCheckingType { get }
  static var Dash: NSTextCheckingType { get }
  static var Replacement: NSTextCheckingType { get }
  static var Correction: NSTextCheckingType { get }
  @available(OSX 10.7, *)
  static var RegularExpression: NSTextCheckingType { get }
  @available(OSX 10.7, *)
  static var PhoneNumber: NSTextCheckingType { get }
  @available(OSX 10.7, *)
  static var TransitInformation: NSTextCheckingType { get }
}
typealias NSTextCheckingTypes = UInt64
var NSTextCheckingAllSystemTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllCustomTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllTypes: NSTextCheckingTypes { get }
@available(OSX 10.6, *)
class NSTextCheckingResult : NSObject, NSCopying, NSCoding {
  var resultType: NSTextCheckingType { get }
  var range: NSRange { get }
  init()
  @available(OSX 10.6, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.6, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSTextCheckingResult {
  @NSCopying var orthography: NSOrthography? { get }
  var grammarDetails: [String]? { get }
  @NSCopying var date: NSDate? { get }
  @NSCopying var timeZone: NSTimeZone? { get }
  var duration: NSTimeInterval { get }
  @available(OSX 10.7, *)
  var components: [String : String]? { get }
  @NSCopying var url: NSURL? { get }
  var replacementString: String? { get }
  @available(OSX 10.9, *)
  var alternativeStrings: [String]? { get }
  @available(OSX 10.7, *)
  @NSCopying var regularExpression: NSRegularExpression? { get }
  @available(OSX 10.7, *)
  var phoneNumber: String? { get }
  var addressComponents: [String : String]? { get }
  @available(OSX 10.7, *)
  var numberOfRanges: Int { get }
  @available(OSX 10.7, *)
  func rangeAt(idx: Int) -> NSRange
  @available(OSX 10.7, *)
  func adjustingRangesWithOffset(offset: Int) -> NSTextCheckingResult
}
@available(OSX 10.6, *)
let NSTextCheckingNameKey: String
@available(OSX 10.6, *)
let NSTextCheckingJobTitleKey: String
@available(OSX 10.6, *)
let NSTextCheckingOrganizationKey: String
@available(OSX 10.6, *)
let NSTextCheckingStreetKey: String
@available(OSX 10.6, *)
let NSTextCheckingCityKey: String
@available(OSX 10.6, *)
let NSTextCheckingStateKey: String
@available(OSX 10.6, *)
let NSTextCheckingZIPKey: String
@available(OSX 10.6, *)
let NSTextCheckingCountryKey: String
@available(OSX 10.6, *)
let NSTextCheckingPhoneKey: String
@available(OSX 10.7, *)
let NSTextCheckingAirlineKey: String
@available(OSX 10.7, *)
let NSTextCheckingFlightKey: String
extension NSTextCheckingResult {
  class func orthographyCheckingResultWith(range: NSRange, orthography: NSOrthography) -> NSTextCheckingResult
  class func spellWith(range: NSRange) -> NSTextCheckingResult
  class func grammarCheckingResultWith(range: NSRange, details: [String]) -> NSTextCheckingResult
  class func dateCheckingResultWith(range: NSRange, date: NSDate) -> NSTextCheckingResult
  class func dateCheckingResultWith(range: NSRange, date: NSDate, timeZone: NSTimeZone, duration: NSTimeInterval) -> NSTextCheckingResult
  class func addressCheckingResultWith(range: NSRange, components: [String : String]) -> NSTextCheckingResult
  class func linkCheckingResultWith(range: NSRange, url: NSURL) -> NSTextCheckingResult
  class func quoteCheckingResultWith(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func dashCheckingResultWith(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func replacementCheckingResultWith(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func correctionCheckingResultWith(range: NSRange, replacementString: String) -> NSTextCheckingResult
  @available(OSX 10.9, *)
  class func correctionCheckingResultWith(range: NSRange, replacementString: String, alternativeStrings: [String]) -> NSTextCheckingResult
  @available(OSX 10.7, *)
  class func regularExpressionCheckingResultWithRanges(ranges: NSRangePointer, count: Int, regularExpression: NSRegularExpression) -> NSTextCheckingResult
  @available(OSX 10.7, *)
  class func phoneNumberWith(range: NSRange, phoneNumber: String) -> NSTextCheckingResult
  @available(OSX 10.7, *)
  class func transitInformationCheckingResultWith(range: NSRange, components: [String : String]) -> NSTextCheckingResult
}
class NSThread : NSObject {
  class func current() -> NSThread
  class func detachNewThreadSelector(selector: Selector, toTarget target: AnyObject, withObject argument: AnyObject?)
  class func isMultiThreaded() -> Bool
  var threadDictionary: NSMutableDictionary { get }
  class func sleepUntil(date: NSDate)
  class func sleepForTimeInterval(ti: NSTimeInterval)
  class func exit()
  class func threadPriority() -> Double
  class func setThreadPriority(p: Double) -> Bool
  @available(OSX 10.6, *)
  var threadPriority: Double
  @available(OSX 10.10, *)
  var qualityOfService: NSQualityOfService
  @available(OSX 10.5, *)
  class func callStackReturnAddresses() -> [NSNumber]
  @available(OSX 10.6, *)
  class func callStackSymbols() -> [String]
  @available(OSX 10.5, *)
  var name: String?
  @available(OSX 10.5, *)
  var stackSize: Int
  @available(OSX 10.5, *)
  var isMainThread: Bool { get }
  @available(OSX 10.5, *)
  class func isMainThread() -> Bool
  @available(OSX 10.5, *)
  class func main() -> NSThread
  @available(OSX 10.5, *)
  init()
  @available(OSX 10.5, *)
  convenience init(target: AnyObject, selector: Selector, object argument: AnyObject?)
  @available(OSX 10.5, *)
  var isExecuting: Bool { get }
  @available(OSX 10.5, *)
  var isFinished: Bool { get }
  @available(OSX 10.5, *)
  var isCancelled: Bool { get }
  @available(OSX 10.5, *)
  func cancel()
  @available(OSX 10.5, *)
  func start()
  @available(OSX 10.5, *)
  func main()
}
let NSWillBecomeMultiThreadedNotification: String
let NSDidBecomeSingleThreadedNotification: String
let NSThreadWillExitNotification: String
extension NSObject {
  class func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  class func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(OSX 10.5, *)
  class func perform(aSelector: Selector, on thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(OSX 10.5, *)
  func perform(aSelector: Selector, on thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(OSX 10.5, *)
  class func perform(aSelector: Selector, on thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(OSX 10.5, *)
  func perform(aSelector: Selector, on thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(OSX 10.5, *)
  class func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
  @available(OSX 10.5, *)
  func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
}
class NSTimeZone : NSObject, NSCopying, NSSecureCoding {
  var name: String { get }
  @NSCopying var data: NSData { get }
  func secondsFromGMTFor(aDate: NSDate) -> Int
  func abbreviationFor(aDate: NSDate) -> String?
  func isDaylightSavingTimeFor(aDate: NSDate) -> Bool
  @available(OSX 10.5, *)
  func daylightSavingTimeOffsetFor(aDate: NSDate) -> NSTimeInterval
  @available(OSX 10.5, *)
  func nextDaylightSavingTimeTransitionAfter(aDate: NSDate) -> NSDate?
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSTimeZone {
  class func system() -> NSTimeZone
  class func resetSystemTimeZone()
  class func defaultTimeZone() -> NSTimeZone
  class func setDefaultTimeZone(aTimeZone: NSTimeZone)
  class func local() -> NSTimeZone
  class func knownTimeZoneNames() -> [String]
  class func abbreviationDictionary() -> [String : String]
  @available(OSX 10.6, *)
  class func setAbbreviationDictionary(dict: [String : String])
  @available(OSX 10.6, *)
  class func timeZoneDataVersion() -> String
  var secondsFromGMT: Int { get }
  var abbreviation: String? { get }
  var isDaylightSavingTime: Bool { get }
  @available(OSX 10.5, *)
  var daylightSavingTimeOffset: NSTimeInterval { get }
  @available(OSX 10.5, *)
  @NSCopying var nextDaylightSavingTimeTransition: NSDate? { get }
  var description: String { get }
  func isEqualTo(aTimeZone: NSTimeZone) -> Bool
  @available(OSX 10.5, *)
  func localizedName(style: NSTimeZoneNameStyle, locale: NSLocale?) -> String?
}
enum NSTimeZoneNameStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Standard
  case ShortStandard
  case DaylightSaving
  case ShortDaylightSaving
  case Generic
  case ShortGeneric
}
extension NSTimeZone {
  init?(name tzName: String)
  init?(name tzName: String, data aData: NSData?)
  convenience init(forSecondsFromGMT seconds: Int)
  convenience init?(abbreviation: String)
}
@available(OSX 10.5, *)
let NSSystemTimeZoneDidChangeNotification: String
class NSTimer : NSObject {
  /*not inherited*/ init(timeInterval ti: NSTimeInterval, invocation: NSInvocation, repeats yesOrNo: Bool)
  class func scheduledTimerWithTimeInterval(ti: NSTimeInterval, invocation: NSInvocation, repeats yesOrNo: Bool) -> NSTimer
  /*not inherited*/ init(timeInterval ti: NSTimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo: AnyObject?, repeats yesOrNo: Bool)
  class func scheduledTimerWithTimeInterval(ti: NSTimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo: AnyObject?, repeats yesOrNo: Bool) -> NSTimer
  init(fire date: NSDate, interval ti: NSTimeInterval, target t: AnyObject, selector s: Selector, userInfo ui: AnyObject?, repeats rep: Bool)
  func fire()
  @NSCopying var fireDate: NSDate
  var timeInterval: NSTimeInterval { get }
  @available(OSX 10.9, *)
  var tolerance: NSTimeInterval
  func invalidate()
  var isValid: Bool { get }
  var userInfo: AnyObject? { get }
  convenience init()
}
class NSURL : NSObject, NSSecureCoding, NSCopying, NSURLHandleClient {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme: String, host: String?, path: String)
  @available(OSX 10.11, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeTo baseURL: NSURL?)
  @available(OSX 10.11, *)
  init(fileURLWithPath path: String, relativeTo baseURL: NSURL?)
  @available(OSX 10.5, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(OSX 10.11, *)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool, relativeTo baseURL: NSURL?) -> NSURL
  @available(OSX 10.11, *)
  class func fileURLWithPath(path: String, relativeTo baseURL: NSURL?) -> NSURL
  @available(OSX 10.5, *)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool) -> NSURL
  class func fileURLWithPath(path: String) -> NSURL
  @available(OSX 10.9, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: NSURL?)
  @available(OSX 10.9, *)
  class func fileURLWithFileSystemRepresentation(path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: NSURL?) -> NSURL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeTo baseURL: NSURL?)
  @available(OSX 10.11, *)
  init(dataRepresentation data: NSData, relativeTo baseURL: NSURL?)
  @available(OSX 10.11, *)
  init(absoluteURLWithDataRepresentation data: NSData, relativeTo baseURL: NSURL?)
  @available(OSX 10.11, *)
  class func absoluteURLWithDataRepresentation(data: NSData, relativeTo baseURL: NSURL?) -> NSURL
  @available(OSX 10.11, *)
  @NSCopying var dataRepresentation: NSData { get }
  var absoluteString: String { get }
  var relativeString: String? { get }
  @NSCopying var base: NSURL? { get }
  @NSCopying var absolute: NSURL { get }
  var scheme: String { get }
  var resourceSpecifier: String { get }
  var host: String? { get }
  @NSCopying var port: NSNumber? { get }
  var user: String? { get }
  var password: String? { get }
  var path: String? { get }
  var fragment: String? { get }
  var parameterString: String? { get }
  var query: String? { get }
  var relativePath: String? { get }
  @available(OSX 10.11, *)
  var hasDirectoryPath: Bool { get }
  @available(OSX 10.9, *)
  func getFileSystemRepresentation(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferLength: Int) -> Bool
  @available(OSX 10.9, *)
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  var isFileURL: Bool { get }
  @NSCopying var standardized: NSURL? { get }
  @available(OSX 10.6, *)
  func checkResourceIsReachableAndReturnError(error: NSErrorPointer) -> Bool
  @available(OSX 10.6, *)
  func isFileReferenceURL() -> Bool
  @available(OSX 10.6, *)
  func fileReference() -> NSURL?
  @available(OSX 10.6, *)
  @NSCopying var filePath: NSURL? { get }
  @available(OSX 10.6, *)
  func getResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(OSX 10.6, *)
  func resourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  @available(OSX 10.6, *)
  func setResourceValue(value: AnyObject?, forKey key: String) throws
  @available(OSX 10.6, *)
  func setResourceValues(keyedValues: [String : AnyObject]) throws
  @available(OSX 10.9, *)
  func removeCachedResourceValueForKey(key: String)
  @available(OSX 10.9, *)
  func removeAllCachedResourceValues()
  @available(OSX 10.9, *)
  func setTemporaryResourceValue(value: AnyObject?, forKey key: String)
  @available(OSX 10.6, *)
  func bookmarkData(options options: NSURLBookmarkCreationOptions = [], includingResourceValuesForKeys keys: [String]?, relativeTo relativeURL: NSURL?) throws -> NSData
  @available(OSX 10.6, *)
  convenience init(byResolvingBookmarkData bookmarkData: NSData, options: NSURLBookmarkResolutionOptions = [], relativeTo relativeURL: NSURL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>) throws
  @available(OSX 10.6, *)
  class func resourceValuesForKeys(keys: [String], fromBookmarkData bookmarkData: NSData) -> [String : AnyObject]?
  @available(OSX 10.6, *)
  class func writeBookmarkData(bookmarkData: NSData, to bookmarkFileURL: NSURL, options: NSURLBookmarkFileCreationOptions) throws
  @available(OSX 10.6, *)
  class func bookmarkDataWithContentsOf(bookmarkFileURL: NSURL) throws -> NSData
  @available(OSX 10.10, *)
  convenience init(byResolvingAliasFileAt url: NSURL, options: NSURLBookmarkResolutionOptions = []) throws
  @available(OSX 10.7, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(OSX 10.7, *)
  func stopAccessingSecurityScopedResource()
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

extension NSURL : _FileReferenceLiteralConvertible {
  convenience init(failableFileReferenceLiteral path: String)
  required convenience init(fileReferenceLiteral path: String)
}

extension NSURL : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
let NSURLFileScheme: String
@available(OSX 10.7, *)
let NSURLKeysOfUnsetValuesKey: String
@available(OSX 10.6, *)
let NSURLNameKey: String
@available(OSX 10.6, *)
let NSURLLocalizedNameKey: String
@available(OSX 10.6, *)
let NSURLIsRegularFileKey: String
@available(OSX 10.6, *)
let NSURLIsDirectoryKey: String
@available(OSX 10.6, *)
let NSURLIsSymbolicLinkKey: String
@available(OSX 10.6, *)
let NSURLIsVolumeKey: String
@available(OSX 10.6, *)
let NSURLIsPackageKey: String
@available(OSX 10.11, *)
let NSURLIsApplicationKey: String
@available(OSX 10.11, *)
let NSURLApplicationIsScriptableKey: String
@available(OSX 10.6, *)
let NSURLIsSystemImmutableKey: String
@available(OSX 10.6, *)
let NSURLIsUserImmutableKey: String
@available(OSX 10.6, *)
let NSURLIsHiddenKey: String
@available(OSX 10.6, *)
let NSURLHasHiddenExtensionKey: String
@available(OSX 10.6, *)
let NSURLCreationDateKey: String
@available(OSX 10.6, *)
let NSURLContentAccessDateKey: String
@available(OSX 10.6, *)
let NSURLContentModificationDateKey: String
@available(OSX 10.6, *)
let NSURLAttributeModificationDateKey: String
@available(OSX 10.6, *)
let NSURLLinkCountKey: String
@available(OSX 10.6, *)
let NSURLParentDirectoryURLKey: String
@available(OSX 10.6, *)
let NSURLVolumeURLKey: String
@available(OSX 10.6, *)
let NSURLTypeIdentifierKey: String
@available(OSX 10.6, *)
let NSURLLocalizedTypeDescriptionKey: String
@available(OSX 10.6, *)
let NSURLLabelNumberKey: String
@available(OSX 10.6, *)
let NSURLLabelColorKey: String
@available(OSX 10.6, *)
let NSURLLocalizedLabelKey: String
@available(OSX 10.6, *)
let NSURLEffectiveIconKey: String
@available(OSX 10.6, *)
let NSURLCustomIconKey: String
@available(OSX 10.7, *)
let NSURLFileResourceIdentifierKey: String
@available(OSX 10.7, *)
let NSURLVolumeIdentifierKey: String
@available(OSX 10.7, *)
let NSURLPreferredIOBlockSizeKey: String
@available(OSX 10.7, *)
let NSURLIsReadableKey: String
@available(OSX 10.7, *)
let NSURLIsWritableKey: String
@available(OSX 10.7, *)
let NSURLIsExecutableKey: String
@available(OSX 10.7, *)
let NSURLFileSecurityKey: String
@available(OSX 10.8, *)
let NSURLIsExcludedFromBackupKey: String
@available(OSX 10.9, *)
let NSURLTagNamesKey: String
@available(OSX 10.8, *)
let NSURLPathKey: String
@available(OSX 10.7, *)
let NSURLIsMountTriggerKey: String
@available(OSX 10.10, *)
let NSURLGenerationIdentifierKey: String
@available(OSX 10.10, *)
let NSURLDocumentIdentifierKey: String
@available(OSX 10.10, *)
let NSURLAddedToDirectoryDateKey: String
@available(OSX 10.10, *)
let NSURLQuarantinePropertiesKey: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeKey: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeNamedPipe: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeCharacterSpecial: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeDirectory: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeBlockSpecial: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeRegular: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeSymbolicLink: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeSocket: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeUnknown: String
@available(OSX 10.10, *)
let NSURLThumbnailDictionaryKey: String
@available(OSX 10.10, *)
let NSURLThumbnailKey: String
@available(OSX 10.10, *)
let NSThumbnail1024x1024SizeKey: String
@available(OSX 10.6, *)
let NSURLFileSizeKey: String
@available(OSX 10.6, *)
let NSURLFileAllocatedSizeKey: String
@available(OSX 10.7, *)
let NSURLTotalFileSizeKey: String
@available(OSX 10.7, *)
let NSURLTotalFileAllocatedSizeKey: String
@available(OSX 10.6, *)
let NSURLIsAliasFileKey: String
@available(OSX 10.6, *)
let NSURLVolumeLocalizedFormatDescriptionKey: String
@available(OSX 10.6, *)
let NSURLVolumeTotalCapacityKey: String
@available(OSX 10.6, *)
let NSURLVolumeAvailableCapacityKey: String
@available(OSX 10.6, *)
let NSURLVolumeResourceCountKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsPersistentIDsKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsSymbolicLinksKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsHardLinksKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsJournalingKey: String
@available(OSX 10.6, *)
let NSURLVolumeIsJournalingKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsSparseFilesKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsZeroRunsKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsCaseSensitiveNamesKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsCasePreservedNamesKey: String
@available(OSX 10.7, *)
let NSURLVolumeSupportsRootDirectoryDatesKey: String
@available(OSX 10.7, *)
let NSURLVolumeSupportsVolumeSizesKey: String
@available(OSX 10.7, *)
let NSURLVolumeSupportsRenamingKey: String
@available(OSX 10.7, *)
let NSURLVolumeSupportsAdvisoryFileLockingKey: String
@available(OSX 10.7, *)
let NSURLVolumeSupportsExtendedSecurityKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsBrowsableKey: String
@available(OSX 10.7, *)
let NSURLVolumeMaximumFileSizeKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsEjectableKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsRemovableKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsInternalKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsAutomountedKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsLocalKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsReadOnlyKey: String
@available(OSX 10.7, *)
let NSURLVolumeCreationDateKey: String
@available(OSX 10.7, *)
let NSURLVolumeURLForRemountingKey: String
@available(OSX 10.7, *)
let NSURLVolumeUUIDStringKey: String
@available(OSX 10.7, *)
let NSURLVolumeNameKey: String
@available(OSX 10.7, *)
let NSURLVolumeLocalizedNameKey: String
@available(OSX 10.7, *)
let NSURLIsUbiquitousItemKey: String
@available(OSX 10.7, *)
let NSURLUbiquitousItemHasUnresolvedConflictsKey: String
@available(OSX 10.7, *)
let NSURLUbiquitousItemIsDownloadingKey: String
@available(OSX 10.7, *)
let NSURLUbiquitousItemIsUploadedKey: String
@available(OSX 10.7, *)
let NSURLUbiquitousItemIsUploadingKey: String
@available(OSX 10.9, *)
let NSURLUbiquitousItemDownloadingStatusKey: String
@available(OSX 10.9, *)
let NSURLUbiquitousItemDownloadingErrorKey: String
@available(OSX 10.9, *)
let NSURLUbiquitousItemUploadingErrorKey: String
@available(OSX 10.10, *)
let NSURLUbiquitousItemDownloadRequestedKey: String
@available(OSX 10.10, *)
let NSURLUbiquitousItemContainerDisplayNameKey: String
@available(OSX 10.9, *)
let NSURLUbiquitousItemDownloadingStatusNotDownloaded: String
@available(OSX 10.9, *)
let NSURLUbiquitousItemDownloadingStatusDownloaded: String
@available(OSX 10.9, *)
let NSURLUbiquitousItemDownloadingStatusCurrent: String
@available(OSX 10.6, *)
struct NSURLBookmarkCreationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MinimalBookmark: NSURLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: NSURLBookmarkCreationOptions { get }
  @available(OSX 10.7, *)
  static var WithSecurityScope: NSURLBookmarkCreationOptions { get }
  @available(OSX 10.7, *)
  static var SecurityScopeAllowOnlyReadAccess: NSURLBookmarkCreationOptions { get }
}
@available(OSX 10.6, *)
struct NSURLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutUI: NSURLBookmarkResolutionOptions { get }
  static var WithoutMounting: NSURLBookmarkResolutionOptions { get }
  @available(OSX 10.7, *)
  static var WithSecurityScope: NSURLBookmarkResolutionOptions { get }
}
typealias NSURLBookmarkFileCreationOptions = Int
extension NSURL {
  @available(OSX 10.10, *)
  func getPromisedItemResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(OSX 10.10, *)
  func promisedItemResourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  @available(OSX 10.10, *)
  func checkPromisedItemIsReachableAndReturnError(error: NSErrorPointer) -> Bool
}
@available(OSX 10.10, *)
class NSURLQueryItem : NSObject, NSSecureCoding, NSCopying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
  convenience init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.9, *)
class NSURLComponents : NSObject, NSCopying {
  init()
  init?(url: NSURL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  @NSCopying var url: NSURL? { get }
  func urlRelativeTo(baseURL: NSURL?) -> NSURL?
  @available(OSX 10.10, *)
  var string: String? { get }
  var scheme: String?
  var user: String?
  var password: String?
  var host: String?
  @NSCopying var port: NSNumber?
  var path: String?
  var query: String?
  var fragment: String?
  var percentEncodedUser: String?
  var percentEncodedPassword: String?
  var percentEncodedHost: String?
  var percentEncodedPath: String?
  var percentEncodedQuery: String?
  var percentEncodedFragment: String?
  @available(OSX 10.11, *)
  var rangeOfScheme: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfUser: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfPassword: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfHost: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfPort: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfPath: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfQuery: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfFragment: NSRange { get }
  @available(OSX 10.10, *)
  var queryItems: [NSURLQueryItem]?
  @available(OSX 10.9, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
extension NSCharacterSet {
  @available(OSX 10.9, *)
  class func urlUserAllowed() -> NSCharacterSet
  @available(OSX 10.9, *)
  class func urlPasswordAllowed() -> NSCharacterSet
  @available(OSX 10.9, *)
  class func urlHostAllowed() -> NSCharacterSet
  @available(OSX 10.9, *)
  class func urlPathAllowed() -> NSCharacterSet
  @available(OSX 10.9, *)
  class func urlQueryAllowed() -> NSCharacterSet
  @available(OSX 10.9, *)
  class func urlFragmentAllowed() -> NSCharacterSet
}
extension NSString {
  @available(OSX 10.9, *)
  func addingPercentEncodingWithAllowedCharacters(allowedCharacters: NSCharacterSet) -> String?
  @available(OSX 10.9, *)
  var removingPercentEncoding: String? { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func addingPercentEscapesUsingEncoding(enc: UInt) -> String?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func replacingPercentEscapesUsingEncoding(enc: UInt) -> String?
}
extension NSURL {
  @available(OSX 10.6, *)
  class func fileURLWithPathComponents(components: [String]) -> NSURL?
  @available(OSX 10.6, *)
  var pathComponents: [String]? { get }
  @available(OSX 10.6, *)
  var lastPathComponent: String? { get }
  @available(OSX 10.6, *)
  var pathExtension: String? { get }
  @available(OSX 10.6, *)
  func appendingPathComponent(pathComponent: String) -> NSURL
  @available(OSX 10.7, *)
  func appendingPathComponent(pathComponent: String, isDirectory: Bool) -> NSURL
  @available(OSX 10.6, *)
  @NSCopying var deletingLastPathComponent: NSURL? { get }
  @available(OSX 10.6, *)
  func appendingPathExtension(pathExtension: String) -> NSURL
  @available(OSX 10.6, *)
  @NSCopying var deletingPathExtension: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var standardizingPath: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var resolvingSymlinksInPath: NSURL? { get }
}
@available(OSX 10.7, *)
class NSFileSecurity : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func encodeWith(aCoder: NSCoder)
}
extension NSObject {
}
extension NSURL {
}

/*!  
    @protocol NSURLAuthenticationChallengeSender 
    @discussion This protocol represents the sender of an
    authentication challenge. It has methods to provide a credential,
    to continue without any credential, getting whatever failure
    result would happen in that case, cancel a challenge, perform the default
    action as defined by the system, or reject the currently supplied protection-space
    in the challenge.
*/
protocol NSURLAuthenticationChallengeSender : NSObjectProtocol {

  /*!
      @method useCredential:forAuthenticationChallenge:
  */
  func use(credential: NSURLCredential, forAuthenticationChallenge challenge: NSURLAuthenticationChallenge)

  /*!
      @method continueWithoutCredentialForAuthenticationChallenge:
  */
  func continueWithoutCredentialFor(challenge: NSURLAuthenticationChallenge)

  /*!
      @method cancelAuthenticationChallenge:
  */
  func cancel(challenge: NSURLAuthenticationChallenge)

  /*!
   @method performDefaultHandlingForAuthenticationChallenge:
   */
  optional func performDefaultHandlingFor(challenge: NSURLAuthenticationChallenge)

  /*!
   @method rejectProtectionSpaceAndContinueWithChallenge:
   */
  optional func rejectProtectionSpaceAndContinueWith(challenge: NSURLAuthenticationChallenge)
}

/*!
    @class NSURLAuthenticationChallenge
    @discussion This class represents an authentication challenge. It
    provides all the information about the challenge, and has a method
    to indicate when it's done.
*/
class NSURLAuthenticationChallenge : NSObject, NSSecureCoding {

  /*!
      @method initWithProtectionSpace:proposedCredential:previousFailureCount:failureResponse:error:
      @abstract Initialize an authentication challenge 
      @param space The NSURLProtectionSpace to use
      @param credential The proposed NSURLCredential for this challenge, or nil
      @param previousFailureCount A count of previous failures attempting access.
      @param response The NSURLResponse for the authentication failure, if applicable, else nil
      @param error The NSError for the authentication failure, if applicable, else nil
      @result An authentication challenge initialized with the specified parameters
  */
  init(protectionSpace space: NSURLProtectionSpace, proposedCredential credential: NSURLCredential?, previousFailureCount: Int, failureResponse response: NSURLResponse?, error: NSError?, sender: NSURLAuthenticationChallengeSender)

  /*!
      @method initWithAuthenticationChallenge:
      @abstract Initialize an authentication challenge copying all parameters from another one.
      @param challenge
      @result A new challenge initialized with the parameters from the passed in challenge
      @discussion This initializer may be useful to subclassers that want to proxy
      one type of authentication challenge to look like another type.
  */
  init(authenticationChallenge challenge: NSURLAuthenticationChallenge, sender: NSURLAuthenticationChallengeSender)

  /*!
      @method protectionSpace
      @abstract Get a description of the protection space that requires authentication
      @result The protection space that needs authentication
  */
  @NSCopying var protectionSpace: NSURLProtectionSpace { get }

  /*!
      @method proposedCredential
      @abstract Get the proposed credential for this challenge
      @result The proposed credential
      @discussion proposedCredential may be nil, if there is no default
      credential to use for this challenge (either stored or in the
      URL). If the credential is not nil and returns YES for
      hasPassword, this means the NSURLConnection thinks the credential
      is ready to use as-is. If it returns NO for hasPassword, then the
      credential is not ready to use as-is, but provides a default
      username the client could use when prompting.
  */
  @NSCopying var proposedCredential: NSURLCredential? { get }

  /*!
      @method previousFailureCount
      @abstract Get count of previous failed authentication attempts
      @result The count of previous failures
  */
  var previousFailureCount: Int { get }

  /*!
      @method failureResponse
      @abstract Get the response representing authentication failure.
      @result The failure response or nil
      @discussion If there was a previous authentication failure, and
      this protocol uses responses to indicate authentication failure,
      then this method will return the response. Otherwise it will
      return nil.
  */
  @NSCopying var failureResponse: NSURLResponse? { get }

  /*!
      @method error
      @abstract Get the error representing authentication failure.
      @discussion If there was a previous authentication failure, and
      this protocol uses errors to indicate authentication failure,
      then this method will return the error. Otherwise it will
      return nil.
  */
  @NSCopying var error: NSError? { get }

  /*!
      @method sender
      @abstract Get the sender of this challenge
      @result The sender of the challenge
      @discussion The sender is the object you should reply to when done processing the challenge.
  */
  var sender: NSURLAuthenticationChallengeSender? { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
    @enum NSURLCacheStoragePolicy
    
    @discussion The NSURLCacheStoragePolicy enum defines constants that
    can be used to specify the type of storage that is allowable for an
    NSCachedURLResponse object that is to be stored in an NSURLCache.
    
    @constant NSURLCacheStorageAllowed Specifies that storage in an
    NSURLCache is allowed without restriction.

    @constant NSURLCacheStorageAllowedInMemoryOnly Specifies that
    storage in an NSURLCache is allowed; however storage should be
    done in memory only, no disk storage should be done.

    @constant NSURLCacheStorageNotAllowed Specifies that storage in an
    NSURLCache is not allowed in any fashion, either in memory or on
    disk.
*/
enum NSURLCacheStoragePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Allowed
  case AllowedInMemoryOnly
  case NotAllowed
}

/*!
    @class NSCachedURLResponse
    NSCachedURLResponse is a class whose objects functions as a wrapper for
    objects that are stored in the framework's caching system. 
    It is used to maintain characteristics and attributes of a cached 
    object. 
*/
class NSCachedURLResponse : NSObject, NSSecureCoding, NSCopying {

  /*! 
      @method initWithResponse:data
      @abstract Initializes an NSCachedURLResponse with the given
      response and data.
      @discussion A default NSURLCacheStoragePolicy is used for
      NSCachedURLResponse objects initialized with this method:
      NSURLCacheStorageAllowed.
      @param response a NSURLResponse object.
      @param data an NSData object representing the URL content
      corresponding to the given response.
      @result an initialized NSCachedURLResponse.
  */
  init(response: NSURLResponse, data: NSData)

  /*! 
      @method initWithResponse:data:userInfo:storagePolicy:
      @abstract Initializes an NSCachedURLResponse with the given
      response, data, user-info dictionary, and storage policy.
      @param response a NSURLResponse object.
      @param data an NSData object representing the URL content
      corresponding to the given response.
      @param userInfo a dictionary user-specified information to be
      stored with the NSCachedURLResponse.
      @param storagePolicy an NSURLCacheStoragePolicy constant.
      @result an initialized NSCachedURLResponse.
  */
  init(response: NSURLResponse, data: NSData, userInfo: [NSObject : AnyObject]? = [:], storagePolicy: NSURLCacheStoragePolicy)

  /*! 
      @method response
      @abstract Returns the response wrapped by this instance. 
      @result The response wrapped by this instance. 
  */
  @NSCopying var response: NSURLResponse { get }

  /*! 
      @method data
      @abstract Returns the data of the receiver. 
      @result The data of the receiver. 
  */
  @NSCopying var data: NSData { get }

  /*! 
      @method userInfo
      @abstract Returns the userInfo dictionary of the receiver. 
      @result The userInfo dictionary of the receiver. 
  */
  var userInfo: [NSObject : AnyObject]? { get }

  /*! 
      @method storagePolicy
      @abstract Returns the NSURLCacheStoragePolicy constant of the receiver. 
      @result The NSURLCacheStoragePolicy constant of the receiver. 
  */
  var storagePolicy: NSURLCacheStoragePolicy { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
class NSURLCache : NSObject {

  /*! 
      @method sharedURLCache
      @abstract Returns the shared NSURLCache instance.
      @discussion Unless set explicitly through a call to
      <tt>+setSharedURLCache:</tt>, this method returns an NSURLCache
      instance created with the following default values:
      <ul>
      <li>Memory capacity: 4 megabytes (4 * 1024 * 1024 bytes)
      <li>Disk capacity: 20 megabytes (20 * 1024 * 1024 bytes)
      <li>Disk path: <nobr>(user home directory)/Library/Caches/(application bundle id)</nobr> 
      </ul>
      <p>Users who do not have special caching requirements or
      constraints should find the default shared cache instance
      acceptable. If this default shared cache instance is not
      acceptable, <tt>+setSharedURLCache:</tt> can be called to set a
      different NSURLCache instance to be returned from this method.
      @result the shared NSURLCache instance.
  */
  class func shared() -> NSURLCache

  /*! 
      @method setSharedURLCache:
      @abstract Sets the NSURLCache instance shared by all clients of
      the current process. This will be the new object returned when
      calls to the <tt>sharedURLCache</tt> method are made.
      @discussion Callers should take care to ensure that this method is called
      at a time when no other caller has a reference to the previously-set shared
      URL cache. This is to prevent storing cache data from becoming 
      unexpectedly unretrievable.
      @param cache the new shared NSURLCache instance.
  */
  class func setSharedURLCache(cache: NSURLCache)

  /*! 
      @method initWithMemoryCapacity:diskCapacity:diskPath:
      @abstract Initializes an NSURLCache with the given capacity and
      path.
      @discussion The returned NSURLCache is backed by disk, so
      developers can be more liberal with space when choosing the
      capacity for this kind of cache. A disk cache measured in the tens
      of megabytes should be acceptable in most cases.
      @param capacity the capacity, measured in bytes, for the cache.
      @param path the path on disk where the cache data is stored.
      @result an initialized NSURLCache, with the given capacity, backed
      by disk.
  */
  init(memoryCapacity: Int, diskCapacity: Int, diskPath path: String?)

  /*! 
      @method cachedResponseForRequest:
      @abstract Returns the NSCachedURLResponse stored in the cache with
      the given request.
      @discussion The method returns nil if there is no
      NSCachedURLResponse stored using the given request.
      @param request the NSURLRequest to use as a key for the lookup.
      @result The NSCachedURLResponse stored in the cache with the given
      request, or nil if there is no NSCachedURLResponse stored with the
      given request.
  */
  func cachedResponseFor(request: NSURLRequest) -> NSCachedURLResponse?

  /*! 
      @method storeCachedResponse:forRequest:
      @abstract Stores the given NSCachedURLResponse in the cache using
      the given request.
      @param cachedResponse The cached response to store.
      @param request the NSURLRequest to use as a key for the storage.
  */
  func storeCachedResponse(cachedResponse: NSCachedURLResponse, forRequest request: NSURLRequest)

  /*! 
      @method removeCachedResponseForRequest:
      @abstract Removes the NSCachedURLResponse from the cache that is
      stored using the given request. 
      @discussion No action is taken if there is no NSCachedURLResponse
      stored with the given request.
      @param request the NSURLRequest to use as a key for the lookup.
  */
  func removeCachedResponseFor(request: NSURLRequest)

  /*! 
      @method removeAllCachedResponses
      @abstract Clears the given cache, removing all NSCachedURLResponse
      objects that it stores.
  */
  func removeAllCachedResponses()

  /*!
   @method removeCachedResponsesSince:
   @abstract Clears the given cache of any cached responses since the provided date.
   */
  @available(OSX 10.10, *)
  func removeCachedResponsesSince(date: NSDate)

  /*! 
      @method memoryCapacity
      @abstract In-memory capacity of the receiver. 
      @discussion At the time this call is made, the in-memory cache will truncate its contents to the size given, if necessary.
      @result The in-memory capacity, measured in bytes, for the receiver. 
  */
  var memoryCapacity: Int

  /*! 
      @method diskCapacity
      @abstract The on-disk capacity of the receiver. 
      @discussion At the time this call is made, the on-disk cache will truncate its contents to the size given, if necessary.
      @param diskCapacity the new on-disk capacity, measured in bytes, for the receiver.
  */
  var diskCapacity: Int

  /*! 
      @method currentMemoryUsage
      @abstract Returns the current amount of space consumed by the
      in-memory cache of the receiver.
      @discussion This size, measured in bytes, indicates the current
      usage of the in-memory cache. 
      @result the current usage of the in-memory cache of the receiver.
  */
  var currentMemoryUsage: Int { get }

  /*! 
      @method currentDiskUsage
      @abstract Returns the current amount of space consumed by the
      on-disk cache of the receiver.
      @discussion This size, measured in bytes, indicates the current
      usage of the on-disk cache. 
      @result the current usage of the on-disk cache of the receiver.
  */
  var currentDiskUsage: Int { get }
  init()
}
extension NSURLCache {
  @available(OSX 10.10, *)
  func storeCachedResponse(cachedResponse: NSCachedURLResponse, forDataTask dataTask: NSURLSessionDataTask)
  @available(OSX 10.10, *)
  func getCachedResponseFor(dataTask: NSURLSessionDataTask, completionHandler: (NSCachedURLResponse?) -> Void)
  @available(OSX 10.10, *)
  func removeCachedResponseFor(dataTask: NSURLSessionDataTask)
}

/*!
    @class NSURLConnection
    
    @abstract 
        
        An NSURLConnection object provides support to perform
        asynchronous loads of a URL request, providing data to a
        client supplied delegate.
    
    @discussion

        The interface for NSURLConnection is very sparse, providing
        only the controls to start and cancel asynchronous loads of a
        URL request.<p>

        An NSURLConnection may be used for loading of resource data
        directly to memory, in which case an
        NSURLConnectionDataDelegate should be supplied, or for
        downloading of resource data directly to a file, in which case
        an NSURLConnectionDownloadDelegate is used.  The delegate is
        retained by the NSURLConnection until a terminal condition is
        encountered.  These two delegates are logically subclasses of
        the base protocol, NSURLConnectionDelegate.<p>

        A terminal condition produced by the loader will result in a
        connection:didFailWithError: in the case of an error, or
        connectiondidFinishLoading: or connectionDidFinishDownloading:
        delegate message.<p>

        The -cancel message hints to the loader that a resource load
        should be abandoned but does not guarantee that more delegate
        messages will not be delivered.  If -cancel does cause the
        load to be abandoned, the delegate will be released without
        further messages.  In general, a caller should be prepared for
        -cancel to have no effect, and internally ignore any delegate
        callbacks until the delegate is released.

        Scheduling of an NSURLConnection specifies the context in
        which delegate callbacks will be made, but the actual IO may
        occur on a separate thread and should be considered an
        implementation detail.<p>

        When created, an NSURLConnection performs a deep-copy of the
        NSURLRequest.  This copy is available through the
        -originalRequest method.  As the connection performs the load,
        this request may change as a result of protocol
        canonicalization or due to following redirects.
        -currentRequest can be used to retrieve this value.<p>

        An NSURLConnections created with the
        +connectionWithRequest:delegate: or -initWithRequest:delegate:
        methods are scheduled on the current runloop immediately, and
        it is not necessary to send the -start message to begin the
        resource load.<p>

        NSURLConnections created with
        -initWithRequest:delegate:startImmediately: are not
        automatically scheduled.  Use -scheduleWithRunLoop:forMode: or
        -setDelegateQueue: to specify the context for delegate
        callbacks, and -start to begin the load.  If you do not
        explicitly schedule the connection before -start, it will be
        scheduled on the current runloop and mode automatically.<p>

        The NSURLConnectionSynchronousLoading category adds
        +sendSynchronousRequest:returningResponse:error, which blocks
        the current thread until the resource data is available or an
        error occurs.  It should be noted that using this method on an
        applications main run loop may result in an unacceptably long
        delay in a user interface and its use is strongly
        discourage.<p>

        The NSURLConnectionQueuedLoading category implements
        +sendAsynchronousRequest:queue:completionHandler, providing
        similar simplicity but provides a mechanism where the current
        runloop is not blocked.<p>

        Both of the immediate loading categories do not provide for
        customization of resource load, and do not allow the caller to
        respond to, e.g., authentication challenges.<p>
*/
class NSURLConnection : NSObject {
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: NSURLRequest, delegate: AnyObject?, startImmediately: Bool)
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: NSURLRequest, delegate: AnyObject?)
  @available(OSX 10.8, *)
  @NSCopying var originalRequest: NSURLRequest { get }
  @available(OSX 10.8, *)
  @NSCopying var currentRequest: NSURLRequest { get }
  @available(OSX 10.5, *)
  func start()
  func cancel()
  @available(OSX 10.5, *)
  func scheduleIn(aRunLoop: NSRunLoop, forMode mode: String)
  @available(OSX 10.5, *)
  func unscheduleFrom(aRunLoop: NSRunLoop, forMode mode: String)
  @available(OSX 10.7, *)
  func setDelegateQueue(queue: NSOperationQueue?)

  /*! 
      @method         canHandleRequest:
  
      @abstract
                      Performs a "preflight" operation that performs
                      some speculative checks to see if a connection can
                      be initialized, and the associated I/O that is
                      started in the initializer methods can begin.
  
      @discussion
                      The result of this method is valid only as long as
                      no protocols are registered or unregistered, and
                      as long as the request is not mutated (if the
                      request is mutable). Hence, clients should be
                      prepared to handle failures even if they have
                      performed request preflighting by calling this
                      method.
  
      @param 
          request     The request to preflight.
  
      @result
  
          YES         if it is likely that the given request can be used to
                      initialize a connection and the associated I/O can be
                      started
  
          NO            
  */
  class func canHandle(request: NSURLRequest) -> Bool
  init()
}

/*!
    @protocol       NSURLConnectionDelegate

    @abstract        
                    Delegate methods that are common to all forms of
                    NSURLConnection.  These are all optional.  This
                    protocol should be considered a base class for the
                    NSURLConnectionDataDelegate and
                    NSURLConnectionDownloadDelegate protocols.

    @discussion
                    connection:didFailWithError: will be called at
                    most once, if an error occurs during a resource
                    load.  No other callbacks will be made after.<p>

                    connectionShouldUseCredentialStorage: will be
                    called at most once, before a resource load begins
                    (which means it may be called during construction
                    of the connection.)  The delegate should return
                    TRUE if the connection should consult the shared
                    NSURLCredentialStorage in response to
                    authentication challenges.  Regardless of the
                    result, the authentication challenge methods may
                    still be called.

                    connection:willSendRequestForAuthenticationChallenge:
                    is the preferred (Mac OS X 10.7 and iOS 5.0 or
                    later) mechanism for responding to authentication
                    challenges.  See
                    <Foundation/NSURLAuthenticationChallenge.h> for
                    more information on dealing with the various types
                    of authentication challenges.

                    connection:canAuthenticateAgainstProtectionSpace:
                    connection:didReciveAuthenticationChallenge:
                    connection:didCancelAuthenticationChallenge: are
                    deprected and new code should adopt
                    connection:willSendRequestForAuthenticationChallenge.
                    The older delegates will still be called for
                    compatability, but incur more latency in dealing
                    with the authentication challenge.
*/
protocol NSURLConnectionDelegate : NSObjectProtocol {
  optional func connection(connection: NSURLConnection, didFailWithError error: NSError)
  optional func connectionShouldUseCredentialStorage(connection: NSURLConnection) -> Bool
  optional func connection(connection: NSURLConnection, willSendRequestFor challenge: NSURLAuthenticationChallenge)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: NSURLProtectionSpace) -> Bool
  @available(OSX, introduced=10.2, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, didReceive challenge: NSURLAuthenticationChallenge)
  @available(OSX, introduced=10.2, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, didCancel challenge: NSURLAuthenticationChallenge)
}

/*!
    @protocol       NSURLConnectionDataDelegate

    @abstract        
                    Delegate methods used for loading data to memory.
                    These delegate methods are all optional.

    @discussion
                    connection:willSendRequest:redirectResponse: is
                    called whenever an connection determines that it
                    must change URLs in order to continue loading a
                    request.  This gives the delegate an opportunity
                    inspect and if necessary modify a request.  A
                    delegate can cause the request to abort by either
                    calling the connections -cancel method, or by
                    returning nil from this callback.<p>

                    There is one subtle difference which results from
                    this choice. If -cancel is called in the delegate
                    method, all processing for the connection stops,
                    and no further delegate callbacks will be sent. If
                    the delegate returns nil, the connection will
                    continue to process, and this has special
                    relevance in the case where the redirectResponse
                    argument is non-nil. In this case, any data that
                    is loaded for the connection will be sent to the
                    delegate, and the delegate will receive a finished
                    or failure delegate callback as appropriate.<p>

                    connection:didReceiveResponse: is called when
                    enough data has been read to construct an
                    NSURLResponse object. In the event of a protocol
                    which may return multiple responses (such as HTTP
                    multipart/x-mixed-replace) the delegate should be
                    prepared to inspect the new response and make
                    itself ready for data callbacks as appropriate.<p>

                    connection:didReceiveData: is called with a single
                    immutable NSData object to the delegate,
                    representing the next portion of the data loaded
                    from the connection.  This is the only guaranteed
                    for the delegate to receive the data from the
                    resource load.<p>

                    connection:needNewBodyStream: is called when the
                    loader must retransmit a requests payload, due to
                    connection errors or authentication challenges.
                    Delegates should construct a new unopened and
                    autoreleased NSInputStream.  If not implemented,
                    the loader will be required to spool the bytes to
                    be uploaded to disk, a potentially expensive
                    operation.  Returning nil will cancel the
                    connection.

                    connection:didSendBodyData:totalBytesWritten:totalBytesExpectedToWrite:
                    is called during an upload operation to provide
                    progress feedback.  Note that the values may
                    change in unexpected ways if the request needs to
                    be retransmitted.<p>

                    connection:willCacheResponse: gives the delegate
                    an opportunity to inspect and modify the
                    NSCachedURLResponse which will be cached by the
                    loader if caching is enabled for the original
                    NSURLRequest.  Returning nil from this delegate
                    will prevent the resource from being cached.  Note
                    that the -data method of the cached response may
                    return an autoreleased in-memory copy of the true
                    data, and should not be used as an alternative to
                    receiving and accumulating the data through
                    connection:didReceiveData:<p>

                    connectionDidFinishLoading: is called when all
                    connection processing has completed successfully,
                    before the delegate is released by the
                    connection.<p>
*/
protocol NSURLConnectionDataDelegate : NSURLConnectionDelegate {
  optional func connection(connection: NSURLConnection, willSend request: NSURLRequest, redirectResponse response: NSURLResponse?) -> NSURLRequest?
  optional func connection(connection: NSURLConnection, didReceive response: NSURLResponse)
  optional func connection(connection: NSURLConnection, didReceive data: NSData)
  optional func connection(connection: NSURLConnection, needNewBodyStream request: NSURLRequest) -> NSInputStream?
  optional func connection(connection: NSURLConnection, didSendBodyData bytesWritten: Int, totalBytesWritten: Int, totalBytesExpectedToWrite: Int)
  optional func connection(connection: NSURLConnection, willCacheResponse cachedResponse: NSCachedURLResponse) -> NSCachedURLResponse?
  optional func connectionDidFinishLoading(connection: NSURLConnection)
}

/*!
    @protocol       NSURLConnectionDownloadDelegate

    @abstract
                    Delegate methods used to perform resource
                    downloads directly to a disk file.  All the
                    methods are optional with the exception of
                    connectionDidFinishDownloading:destinationURL:
                    which must be implemented in order to inform the
                    delegate of the location of the finished download.
                    This delegate and download implementation is
                    currently only available on iOS 5.0 or later.

    @discussion
                    connection:didWriteData:totalBytesWritten:expectedTotalBytes:
                    provides progress information about the state of
                    the download, the number of bytes written since
                    the last delegate callback, the total number of
                    bytes written to disk and the total number of
                    bytes that are expected (or 0 if this is unknown.)

                    connectionDidResumeDownloading:totalBytesWritten:expectedTotalBytes:
                    is called when the connection is able to resume an
                    in progress download.  This may happen due to a
                    connection or network failure.

                    connectionDidFinishDownloading:destinationURL: is
                    a terminal event which indicates the completion of
                    a download and provides the location of the file.
                    The file will be located in the applications cache
                    directory and is guaranteed to exist for the
                    duration of the delegate callback.  The
                    implication is that the delegate should copy or
                    move the download to a more persistent location if
                    desired.
*/
protocol NSURLConnectionDownloadDelegate : NSURLConnectionDelegate {
  optional func connection(connection: NSURLConnection, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  optional func connectionDidResumeDownloading(connection: NSURLConnection, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  func connectionDidFinishDownloading(connection: NSURLConnection, destinationURL: NSURL)
}

/*!
    @category    NSURLConnection(NSURLConnectionSynchronousLoading)

    @abstract
                 The NSURLConnectionSynchronousLoading category on
                 NSURLConnection provides the interface to perform
                 synchronous loading of URL requests.
*/
extension NSURLConnection {

  /*! 
      @method      sendSynchronousRequest:returningResponse:error:
  
      @abstract 
                   Performs a synchronous load of the given request,
                   returning an NSURLResponse in the given out
                   parameter.
  
      @discussion
                   A synchronous load for the given request is built on
                   top of the asynchronous loading code made available
                   by the class.  The calling thread is blocked while
                   the asynchronous loading system performs the URL load
                   on a thread spawned specifically for this load
                   request. No special threading or run loop
                   configuration is necessary in the calling thread in
                   order to perform a synchronous load. For instance,
                   the calling thread need not be running its run loop.
  
      @param
         request   The request to load. Note that the request is
                   deep-copied as part of the initialization
                   process. Changes made to the request argument after
                   this method returns do not affect the request that is
                   used for the loading process.
  
      @param
         response  An out parameter which is filled in with the
                   response generated by performing the load.
  
      @param
         error     Out parameter (may be NULL) used if an error occurs
                   while processing the request. Will not be modified if the 
                   load succeeds.
  
      @result      The content of the URL resulting from performing the load,
                   or nil if the load failed.
  */
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendSynchronousRequest(request: NSURLRequest, returning response: AutoreleasingUnsafeMutablePointer<NSURLResponse?>) throws -> NSData
}

/*!
    @category NSURLConnection(NSURLConnectionQueuedLoading)

    The NSURLConnectionQueuedLoading category on NSURLConnection
    provides the interface to perform asynchronous loading of URL
    requests where the results of the request are delivered to a
    block via an NSOperationQueue.

    Note that there is no guarantee of load ordering implied by this
    method.
 */
extension NSURLConnection {

  /*!
      @method       sendAsynchronousRequest:queue:completionHandler:
  
      @abstract 
                    Performs an asynchronous load of the given
                    request. When the request has completed or failed,
                    the block will be executed from the context of the
                    specified NSOperationQueue.
  
      @discussion
                    This is a convenience routine that allows for
                    asynchronous loading of an url based resource.  If
                    the resource load is successful, the data parameter
                    to the callback will contain the resource data and
                    the error parameter will be nil.  If the resource
                    load fails, the data parameter will be nil and the
                    error will contain information about the failure.
  
      @param
           request   The request to load. Note that the request is
                     deep-copied as part of the initialization
                     process. Changes made to the request argument after
                     this method returns do not affect the request that
                     is used for the loading process.
  
      @param 
           queue     An NSOperationQueue upon which    the handler block will
                     be dispatched.
  
      @param
           handler   A block which receives the results of the resource load.
   */
  @available(OSX, introduced=10.7, deprecated=10.11, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendAsynchronousRequest(request: NSURLRequest, queue: NSOperationQueue, completionHandler handler: (NSURLResponse?, NSData?, NSError?) -> Void)
}

/*!
    @enum NSURLCredentialPersistence
    @abstract Constants defining how long a credential will be kept around
    @constant NSURLCredentialPersistenceNone This credential won't be saved.
    @constant NSURLCredentialPersistenceForSession This credential will only be stored for this session.
    @constant NSURLCredentialPersistencePermanent This credential will be stored permanently. Note: Whereas in Mac OS X any application can access any credential provided the user gives permission, in iPhone OS an application can access only its own credentials.
    @constant NSURLCredentialPersistenceSynchronizable This credential will be stored permanently. Additionally, this credential will be distributed to other devices based on the owning AppleID.
        Note: Whereas in Mac OS X any application can access any credential provided the user gives permission, on iOS an application can 
        access only its own credentials.
*/
enum NSURLCredentialPersistence : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case ForSession
  case Permanent
  @available(OSX 10.8, *)
  case Synchronizable
}

/*!
    @class NSURLCredential
    @discussion This class is an immutable object representing an authentication credential.  The actual type of the credential is determined by the constructor called in the categories declared below.
*/
class NSURLCredential : NSObject, NSSecureCoding, NSCopying {

  /*!
      @method persistence
      @abstract Determine whether this credential is or should be stored persistently
      @result A value indicating whether this credential is stored permanently, per session or not at all.
   */
  var persistence: NSURLCredentialPersistence { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
    @class NSURLCredential(NSInternetPassword)
    @discussion This category defines the methods available to an NSURLCredential created to represent an internet password credential.  These are most commonly used for resources that require a username and password combination.
 */
extension NSURLCredential {

  /*!
      @method initWithUser:password:persistence:
      @abstract Initialize a NSURLCredential with a user and password
      @param user the username
      @param password the password
      @param persistence enum that says to store per session, permanently or not at all
      @result The initialized NSURLCredential
  */
  init(user: String, password: String, persistence: NSURLCredentialPersistence)

  /*!
      @method user
      @abstract Get the username
      @result The user string
  */
  var user: String? { get }

  /*!
      @method password
      @abstract Get the password
      @result The password string
      @discussion This method might actually attempt to retrieve the
      password from an external store, possible resulting in prompting,
      so do not call it unless needed.
  */
  var password: String? { get }

  /*!
      @method hasPassword
      @abstract Find out if this credential has a password, without trying to get it
      @result YES if this credential has a password, otherwise NO
      @discussion If this credential's password is actually kept in an
      external store, the password method may return nil even if this
      method returns YES, since getting the password may fail, or the
      user may refuse access.
  */
  var hasPassword: Bool { get }
}

/*!
    @class NSURLCredential(NSClientCertificate)
    @discussion This category defines the methods available to an NSURLCredential created to represent a client certificate credential.  Client certificates are commonly stored on the users computer in the keychain and must be presented to the server during a handshake.
*/
extension NSURLCredential {

  /*!
      @method initWithIdentity:certificates:persistence:
      @abstract Initialize an NSURLCredential with an identity and array of at least 1 client certificates (SecCertificateRef)
      @param identity a SecIdentityRef object
      @param certArray an array containing at least one SecCertificateRef objects
      @param persistence enum that says to store per session, permanently or not at all
      @result the Initialized NSURLCredential
   */
  @available(OSX 10.6, *)
  init(identity: SecIdentity, certificates certArray: [AnyObject]?, persistence: NSURLCredentialPersistence)

  /*!
      @method identity
      @abstract Returns the SecIdentityRef of this credential, if it was created with a certificate and identity
      @result A SecIdentityRef or NULL if this is a username/password credential
   */
  var identity: SecIdentity? { get }

  /*!
      @method certificates
      @abstract Returns an NSArray of SecCertificateRef objects representing the client certificate for this credential, if this credential was created with an identity and certificate.
      @result an NSArray of SecCertificateRef or NULL if this is a username/password credential
   */
  @available(OSX 10.6, *)
  var certificates: [AnyObject] { get }
}
extension NSURLCredential {

  /*!
      @method initWithTrust:
      @abstract Initialize a new NSURLCredential which specifies that the specified trust has been accepted.
      @result the Initialized NSURLCredential
   */
  @available(OSX 10.6, *)
  init(trust: SecTrust)

  /*!
      @method credentialForTrust:
      @abstract Create a new NSURLCredential which specifies that a handshake has been trusted.
      @result The new autoreleased NSURLCredential
   */
  @available(OSX 10.6, *)
  /*not inherited*/ init(forTrust trust: SecTrust)
}

/*!
    @class NSURLCredentialStorage
    @discussion NSURLCredentialStorage implements a singleton object (shared instance) which manages the shared credentials cache. Note: Whereas in Mac OS X any application can access any credential with a persistence of NSURLCredentialPersistencePermanent provided the user gives permission, in iPhone OS an application can access only its own credentials.
*/
class NSURLCredentialStorage : NSObject {

  /*!
      @method sharedCredentialStorage
      @abstract Get the shared singleton authentication storage
      @result the shared authentication storage
  */
  class func shared() -> NSURLCredentialStorage

  /*!
      @method credentialsForProtectionSpace:
      @abstract Get a dictionary mapping usernames to credentials for the specified protection space.
      @param protectionSpace An NSURLProtectionSpace indicating the protection space for which to get credentials
      @result A dictionary where the keys are usernames and the values are the corresponding NSURLCredentials.
  */
  func credentialsFor(space: NSURLProtectionSpace) -> [String : NSURLCredential]?

  /*!
      @method allCredentials
      @abstract Get a dictionary mapping NSURLProtectionSpaces to dictionaries which map usernames to NSURLCredentials
      @result an NSDictionary where the keys are NSURLProtectionSpaces
      and the values are dictionaries, in which the keys are usernames
      and the values are NSURLCredentials
  */
  var allCredentials: [NSURLProtectionSpace : [String : NSURLCredential]] { get }

  /*!
      @method setCredential:forProtectionSpace:
      @abstract Add a new credential to the set for the specified protection space or replace an existing one.
      @param credential The credential to set.
      @param space The protection space for which to add it. 
      @discussion Multiple credentials may be set for a given protection space, but each must have
      a distinct user. If a credential with the same user is already set for the protection space,
      the new one will replace it.
  */
  func setCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)

  /*!
      @method removeCredential:forProtectionSpace:
      @abstract Remove the credential from the set for the specified protection space.
      @param credential The credential to remove.
      @param space The protection space for which a credential should be removed
      @discussion The credential is removed from both persistent and temporary storage. A credential that
      has a persistence policy of NSURLCredentialPersistenceSynchronizable will fail.  
      See removeCredential:forProtectionSpace:options.
  */
  func remove(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)

  /*!
   @method removeCredential:forProtectionSpace:options
   @abstract Remove the credential from the set for the specified protection space based on options.
   @param credential The credential to remove.
   @param space The protection space for which a credential should be removed
   @param options A dictionary containing options to consider when removing the credential.  This should
   be used when trying to delete a credential that has the NSURLCredentialPersistenceSynchronizable policy.
   Please note that when NSURLCredential objects that have a NSURLCredentialPersistenceSynchronizable policy
   are removed, the credential will be removed on all devices that contain this credential.
   @discussion The credential is removed from both persistent and temporary storage.
   */
  @available(OSX 10.9, *)
  func remove(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace, options: [String : AnyObject]? = [:])

  /*!
      @method defaultCredentialForProtectionSpace:
      @abstract Get the default credential for the specified protection space.
      @param space The protection space for which to get the default credential.
  */
  func defaultCredentialFor(space: NSURLProtectionSpace) -> NSURLCredential?

  /*!
      @method setDefaultCredential:forProtectionSpace:
      @abstract Set the default credential for the specified protection space.
      @param credential The credential to set as default.
      @param space The protection space for which the credential should be set as default.
      @discussion If the credential is not yet in the set for the protection space, it will be added to it.
  */
  func setDefaultCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)
  init()
}
extension NSURLCredentialStorage {
  @available(OSX 10.10, *)
  func getCredentialsFor(protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: ([String : NSURLCredential]?) -> Void)
  @available(OSX 10.10, *)
  func setCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask)
  @available(OSX 10.10, *)
  func remove(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, options: [String : AnyObject]? = [:], task: NSURLSessionTask)
  @available(OSX 10.10, *)
  func getDefaultCredentialFor(space: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: (NSURLCredential?) -> Void)
  @available(OSX 10.10, *)
  func setDefaultCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask)
}

/*!
    @const NSURLCredentialStorageChangedNotification
    @abstract This notification is sent on the main thread whenever
    the set of stored credentials changes.
*/
let NSURLCredentialStorageChangedNotification: String
@available(OSX 10.9, *)
let NSURLCredentialStorageRemoveSynchronizableCredentials: String

/*!
    @class NSURLDownload
    @discussion A NSURLDownload loads a request and saves the downloaded data to a file. The progress of the download
    is reported via the NSURLDownloadDelegate protocol. Note: The word "download" is used to refer to the process
    of loading data off a network, decoding the data if necessary and saving the data to a file.
*/
class NSURLDownload : NSObject {

  /*!
      @method canResumeDownloadDecodedWithEncodingMIMEType:
      @abstract Returns whether or not NSURLDownload can resume a download that was decoded with a given encoding MIME type.
      @param MIMEType The encoding MIME type.
      @description canResumeDownloadDecodedWithEncodingMIMEType: returns whether or not NSURLDownload can resume a download
      that was decoded with a given encoding MIME type.  NSURLDownload cannot resume a download that was partially decoded
      in the gzip format for example. In order to ensure that a download can be later resumed,
      canResumeDownloadDecodedWithEncodingMIMEType: should be used when download:shouldDecodeSourceDataOfMIMEType: is called.
  */
  class func canResumeDownloadDecodedWithEncodingMIMEType(MIMEType: String) -> Bool

  /*!
      @method initWithRequest:delegate:
      @abstract Initializes a NSURLDownload object and starts the download.
      @param request The request to download. Must not be nil.
      @param delegate The delegate of the download.
      @result An initialized NSURLDownload object.
  */
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(request: NSURLRequest, delegate: NSURLDownloadDelegate?)

  /*!
      @method initWithResumeData:delegate:path:
      @abstract Initializes a NSURLDownload object for resuming a previous download.
      @param resumeData The resume data from the previous download.
      @param delegate The delegate of the download.
      @param path The path of the incomplete downloaded file.
      @result An initialized NSURLDownload object.
  */
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(resumeData: NSData, delegate: NSURLDownloadDelegate?, path: String)

  /*!
      @method cancel
      @abstract Cancels the download and deletes the downloaded file.
  */
  func cancel()

  /*!
      @method setDestination:allowOverwrite:
      @abstract Sets the destination path of the downloaded file.
      @param path The destination path of the downloaded file.
      @param allowOverwrite Allows a file of the same path to be overwritten.
      @discussion This method can be called after the download is created or in response to the
      decideDestinationWithSuggestedFilename: delegate method. It should only be called once.
      If NO is passed for allowOverwrite and a file of the same path exists, a number will be
      appended to the filename to prevent the overwrite. Because of this, use the path
      passed with didCreateDestination: to determine the actual path of the downloaded file.
  */
  func setDestination(path: String, allowOverwrite: Bool)

  /*!
      @method request
      @abstract Returns the request of the download.
      @result The request of the download.
  */
  @NSCopying var request: NSURLRequest { get }

  /*!
      @method resumeData
      @abstract Returns the resume data of a download that is incomplete.
      @result The resume data.
      @description resumeData returns the resume data of a download that is incomplete. This data represents the necessary
      state information that NSURLDownload needs to resume a download. The resume data can later be used when initializing
      a download with initWithResumeData:delegate:path:. Non-nil is returned if resuming the download seems possible.
      Non-nil is returned if the download was cancelled or ended in error after some but not all data has been received.
      The protocol of the download as well as the server must support resuming for non-nil to be returned.
      In order to later resume a download, be sure to call setDeletesFileUponFailure: with NO.
  */
  @NSCopying var resumeData: NSData? { get }

  /*!
      @method deletesFileUponFailure
      @abstract Sets whether or not the downloaded file should be deleted upon failure.
      @param deletesFileUponFailure The value of deletesFileUponFailure.
      @description To allow the download to be resumed in case the download ends prematurely,
      deletesFileUponFailure must be set to NO as soon as possible to prevent the downloaded file
      from being deleted. deletesFileUponFailure is YES by default.
  */
  var deletesFileUponFailure: Bool
  init()
}

/*!
    @protocol NSURLDownloadDelegate
    @discussion The NSURLDownloadDelegate delegate is used to report the progress of the download.
*/
protocol NSURLDownloadDelegate : NSObjectProtocol {

  /*!
      @method downloadDidBegin:
      @abstract This method is called immediately after the download has started.
      @param download The download that just started downloading.
  */
  optional func downloadDidBegin(download: NSURLDownload)

  /*!
      @method download:willSendRequest:redirectResponse:
      @abstract This method is called if the download must load another request because the previous
      request was redirected.
      @param download The download that will send the request.
      @param request The request that will be used to continue loading.
      @result The request to be used; either the request parameter or a replacement. If nil is returned,
      the download is cancelled.
      @discussion This method gives the delegate an opportunity to inspect the request
      that will be used to continue loading the request, and modify it if necessary.
  */
  optional func download(download: NSURLDownload, willSend request: NSURLRequest, redirectResponse: NSURLResponse?) -> NSURLRequest?

  /*!
      @method download:canAuthenticateAgainstProtectionSpace:
      @abstract This method gives the delegate an opportunity to inspect an NSURLProtectionSpace before an authentication attempt is made.
      @discussion If implemented, will be called before connection:didReceiveAuthenticationChallenge 
      to give the delegate a chance to inspect the protection space that will be authenticated against.  Delegates should determine
      if they are prepared to respond to the authentication method of the protection space and if so, return YES, or NO to
      allow default processing to handle the authentication.  If this delegate is not implemented, then default 
      processing will occur (typically, consulting
      the user's keychain and/or failing the connection attempt.
      @param connection an NSURLConnection that has an NSURLProtectionSpace ready for inspection
      @param protectionSpace an NSURLProtectionSpace that will be used to generate an authentication challenge
      @result a boolean value that indicates the willingness of the delegate to handle the authentication
   */
  optional func download(connection: NSURLDownload, canAuthenticateAgainstProtectionSpace protectionSpace: NSURLProtectionSpace) -> Bool

  /*!
      @method download:didReceiveAuthenticationChallenge:
      @abstract Start authentication for a given challenge
      @param download The download that needs authentication.
      @param challenge The NSURLAuthenticationChallenge for which to start authentication.
      @discussion Call useCredential:forAuthenticationChallenge:,
      continueWithoutCredentialForAuthenticationChallenge: or cancel on
      the connection sender when done.
  */
  optional func download(download: NSURLDownload, didReceive challenge: NSURLAuthenticationChallenge)

  /*!
      @method download:didCancelAuthenticationChallenge:
      @abstract Cancel authentication for a given request
      @param download The download that's cancelling
      @param challenge The NSURLAuthenticationChallenge to cancel authentication for
  */
  optional func download(download: NSURLDownload, didCancel challenge: NSURLAuthenticationChallenge)

  /*! 
      @method downloadShouldUseCredentialStorage   
      @abstract This method allows the delegate to inform the url loader that it
  				should not consult the credential storage for the download.
      @discussion This method will be called before any attempt to authenticate is
  		attempted on a download.  By returning NO the delegate is telling the
  		download to not consult the credential storage and taking responsiblity
  		for providing any credentials for authentication challenges.  Not implementing
  		this method is the same as returing YES.  The delegate is free to consult the
  		credential storage itself when it receives a didReceiveAuthenticationChallenge
  		message.
      @param download  the NSURLDownload object asking if it should consult the credential storage.
      @result NO if the download should not consult the credential storage, Yes if it should.
  */
  optional func downloadShouldUseCredentialStorage(download: NSURLDownload) -> Bool

  /*!
      @method download:didReceiveResponse:
      @abstract This method is called when the download has received a response from the server.
      @param download The download that now has a NSURLResponse available for inspection.
      @param response The NSURLResponse object for the given download.
      @discussion In some rare cases, multiple responses may be received for a single download.
      This occurs with multipart/x-mixed-replace, or "server push". In this case, the client
      should assume that each new response resets progress so far for the resource back to 0,
      and should check the new response for the expected content length.
  */
  optional func download(download: NSURLDownload, didReceive response: NSURLResponse)

  /*!
      @method download:willResumeWithResponse:fromByte:
      @abstract This method is called when the download has received a response from the server after attempting to
      resume a download.
      @param download The download that now has a NSURLResponse available for inspection.
      @param response The NSURLResponse object for the given download.
      @param startingByte The number of bytes from where the download will resume. 0 indicates that the download will
      restart from the beginning.
      @discussion download:willResumeWithResponse:fromByte: is called instead of download:didReceiveResponse:
      when a download is initialized with initWithResumeData:delegate:path:.
  */
  optional func download(download: NSURLDownload, willResumeWith response: NSURLResponse, fromByte startingByte: Int64)

  /*!
      @method download:didReceiveDataOfLength:
      @abstract This method is called when the download has loaded data.
      @param download The download that has received data.
      @param length The length of the received data.
      @discussion This method will be called one or more times.
  */
  optional func download(download: NSURLDownload, didReceiveDataOfLength length: Int)

  /*!
      @method download:shouldDecodeSourceDataOfMIMEType:
      @abstract This method is called if the download detects that the downloading file is encoded.
      @param download The download that has detected that the downloading file is encoded.
      @param mimeType A MIME type expressing the encoding type.
      @result Return YES to decode the file, NO to not decode the file.
      @discussion An encoded file is encoded in MacBinary, BinHex or gzip format. This method may be
      called more than once if the file is encoded multiple times. This method is not called if the
      download is not encoded.
  */
  optional func download(download: NSURLDownload, shouldDecodeSourceDataOfMIMEType encodingType: String) -> Bool

  /*!
      @method download:decideDestinationWithSuggestedFilename:
      @abstract This method is called when enough information has been loaded to decide a destination
      for the downloaded file.
      @param download The download that requests the download path.
      @param filename The suggested filename for deciding the path of the downloaded file. The filename is either
      derived from the last path component of the URL and the MIME type or if the download was encoded,
      it is the filename specified in the encoding.
      @discussion Once the delegate has decided a path, it should call setDestination:allowOverwrite:.
      The delegate may respond immediately or later. This method is not called if
      setDestination:allowOverwrite: has already been called.
  */
  optional func download(download: NSURLDownload, decideDestinationWithSuggestedFilename filename: String)

  /*!
      @method download:didCreateDestination:
      @abstract This method is called after the download creates the downloaded file.
      @param download The download that created the downloaded file.
      @param path The path of the downloaded file.
  */
  optional func download(download: NSURLDownload, didCreateDestination path: String)

  /*!
      @method downloadDidFinish:
      @abstract This method is called when the download has finished downloading.
      @param download The download that has finished downloading.
      @discussion This method is called after all the data has been received and written to disk.
      This method or download:didFailWithError: will only be called once.
  */
  optional func downloadDidFinish(download: NSURLDownload)

  /*!
      @method download:didFailWithError:
      @abstract This method is called when the download has failed. 
      @param download The download that ended in error.
      @param error The error caused the download to fail.
      @discussion This method is called when the download encounters a network or file I/O related error.
      This method or downloadDidFinish: will only be called once.
  */
  optional func download(download: NSURLDownload, didFailWithError error: NSError)
}
let NSURLErrorDomain: String

/*!
    @const NSURLErrorFailingURLErrorKey
    @abstract The NSError userInfo dictionary key used to store and retrieve the URL which caused a load to fail.
*/
@available(OSX 10.6, *)
let NSURLErrorFailingURLErrorKey: String

/*!
    @const NSURLErrorFailingURLStringErrorKey
    @abstract The NSError userInfo dictionary key used to store and retrieve the NSString object for the URL which caused a load to fail.
    @discussion This constant supersedes NSErrorFailingURLStringKey, which was deprecated in Mac OS X 10.6.  Both constants refer to the same value for backward-compatibility, but this symbol name has a better prefix.
*/
@available(OSX 10.6, *)
let NSURLErrorFailingURLStringErrorKey: String

/*!
    @const NSURLErrorFailingURLPeerTrustErrorKey
    @abstract The NSError userInfo dictionary key used to store and retrieve the SecTrustRef object representing the state of a failed SSL handshake.
 */
@available(OSX 10.6, *)
let NSURLErrorFailingURLPeerTrustErrorKey: String

/*!
    @const NSURLErrorBackgroundTaskCancelledReasonKey
    @abstract The NSError userInfo dictionary key used to store and retrieve the NSNumber corresponding to the reason why a background
	NSURLSessionTask was cancelled
 */
@available(OSX 10.10, *)
let NSURLErrorBackgroundTaskCancelledReasonKey: String
var NSURLErrorCancelledReasonUserForceQuitApplication: Int { get }
var NSURLErrorCancelledReasonBackgroundUpdatesDisabled: Int { get }
@available(OSX 10.10, *)
var NSURLErrorCancelledReasonInsufficientSystemResources: Int { get }
var NSURLErrorUnknown: Int { get }
var NSURLErrorCancelled: Int { get }
var NSURLErrorBadURL: Int { get }
var NSURLErrorTimedOut: Int { get }
var NSURLErrorUnsupportedURL: Int { get }
var NSURLErrorCannotFindHost: Int { get }
var NSURLErrorCannotConnectToHost: Int { get }
var NSURLErrorNetworkConnectionLost: Int { get }
var NSURLErrorDNSLookupFailed: Int { get }
var NSURLErrorHTTPTooManyRedirects: Int { get }
var NSURLErrorResourceUnavailable: Int { get }
var NSURLErrorNotConnectedToInternet: Int { get }
var NSURLErrorRedirectToNonExistentLocation: Int { get }
var NSURLErrorBadServerResponse: Int { get }
var NSURLErrorUserCancelledAuthentication: Int { get }
var NSURLErrorUserAuthenticationRequired: Int { get }
var NSURLErrorZeroByteResource: Int { get }
var NSURLErrorCannotDecodeRawData: Int { get }
var NSURLErrorCannotDecodeContentData: Int { get }
var NSURLErrorCannotParseResponse: Int { get }
@available(OSX 10.11, *)
var NSURLErrorAppTransportSecurityRequiresSecureConnection: Int { get }
var NSURLErrorFileDoesNotExist: Int { get }
var NSURLErrorFileIsDirectory: Int { get }
var NSURLErrorNoPermissionsToReadFile: Int { get }
@available(OSX 10.5, *)
var NSURLErrorDataLengthExceedsMaximum: Int { get }
var NSURLErrorSecureConnectionFailed: Int { get }
var NSURLErrorServerCertificateHasBadDate: Int { get }
var NSURLErrorServerCertificateUntrusted: Int { get }
var NSURLErrorServerCertificateHasUnknownRoot: Int { get }
var NSURLErrorServerCertificateNotYetValid: Int { get }
var NSURLErrorClientCertificateRejected: Int { get }
var NSURLErrorClientCertificateRequired: Int { get }
var NSURLErrorCannotLoadFromNetwork: Int { get }
var NSURLErrorCannotCreateFile: Int { get }
var NSURLErrorCannotOpenFile: Int { get }
var NSURLErrorCannotCloseFile: Int { get }
var NSURLErrorCannotWriteToFile: Int { get }
var NSURLErrorCannotRemoveFile: Int { get }
var NSURLErrorCannotMoveFile: Int { get }
var NSURLErrorDownloadDecodingFailedMidStream: Int { get }
var NSURLErrorDownloadDecodingFailedToComplete: Int { get }
@available(OSX 10.7, *)
var NSURLErrorInternationalRoamingOff: Int { get }
@available(OSX 10.7, *)
var NSURLErrorCallIsActive: Int { get }
@available(OSX 10.7, *)
var NSURLErrorDataNotAllowed: Int { get }
@available(OSX 10.7, *)
var NSURLErrorRequestBodyStreamExhausted: Int { get }
@available(OSX 10.10, *)
var NSURLErrorBackgroundSessionRequiresSharedContainer: Int { get }
@available(OSX 10.10, *)
var NSURLErrorBackgroundSessionInUseByAnotherProcess: Int { get }
@available(OSX 10.10, *)
var NSURLErrorBackgroundSessionWasDisconnected: Int { get }
enum NSURLHandleStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotLoaded
  case LoadSucceeded
  case LoadInProgress
  case LoadFailed
}
protocol NSURLHandleClient {
}
class NSURLHandle : NSObject {
  init()
}

/*!
   @const NSURLProtectionSpaceHTTP
   @abstract The protocol for HTTP
*/
@available(OSX 10.5, *)
let NSURLProtectionSpaceHTTP: String

/*!
   @const NSURLProtectionSpaceHTTPS
   @abstract The protocol for HTTPS
*/
@available(OSX 10.5, *)
let NSURLProtectionSpaceHTTPS: String

/*!
   @const NSURLProtectionSpaceFTP
   @abstract The protocol for FTP
*/
@available(OSX 10.5, *)
let NSURLProtectionSpaceFTP: String

/*!
    @const NSURLProtectionSpaceHTTPProxy
    @abstract The proxy type for http proxies
*/
let NSURLProtectionSpaceHTTPProxy: String

/*!
    @const NSURLProtectionSpaceHTTPSProxy
    @abstract The proxy type for https proxies
*/
let NSURLProtectionSpaceHTTPSProxy: String

/*!
    @const NSURLProtectionSpaceFTPProxy
    @abstract The proxy type for ftp proxies
*/
let NSURLProtectionSpaceFTPProxy: String

/*!
    @const NSURLProtectionSpaceSOCKSProxy
    @abstract The proxy type for SOCKS proxies
*/
let NSURLProtectionSpaceSOCKSProxy: String

/*!
    @const NSURLAuthenticationMethodDefault
    @abstract The default authentication method for a protocol
*/
let NSURLAuthenticationMethodDefault: String

/*!
    @const NSURLAuthenticationMethodHTTPBasic
    @abstract HTTP basic authentication. Equivalent to
    NSURLAuthenticationMethodDefault for http.
*/
let NSURLAuthenticationMethodHTTPBasic: String

/*!
    @const NSURLAuthenticationMethodHTTPDigest
    @abstract HTTP digest authentication.
*/
let NSURLAuthenticationMethodHTTPDigest: String

/*!
    @const NSURLAuthenticationMethodHTMLForm
    @abstract HTML form authentication. Applies to any protocol.
*/
let NSURLAuthenticationMethodHTMLForm: String

/*!
   @const NSURLAuthenticationMethodNTLM
   @abstract NTLM authentication.
*/
@available(OSX 10.5, *)
let NSURLAuthenticationMethodNTLM: String

/*!
   @const NSURLAuthenticationMethodNegotiate
   @abstract Negotiate authentication.
*/
@available(OSX 10.5, *)
let NSURLAuthenticationMethodNegotiate: String

/*!
    @const NSURLAuthenticationMethodClientCertificate
    @abstract SSL Client certificate.  Applies to any protocol.
 */
@available(OSX 10.6, *)
let NSURLAuthenticationMethodClientCertificate: String

/*!
    @const NSURLAuthenticationMethodServerTrust
    @abstract SecTrustRef validation required.  Applies to any protocol.
 */
@available(OSX 10.6, *)
let NSURLAuthenticationMethodServerTrust: String

/*!
    @class NSURLProtectionSpace
    @discussion This class represents a protection space requiring authentication.
*/
class NSURLProtectionSpace : NSObject, NSSecureCoding, NSCopying {

  /*!
      @method initWithHost:port:protocol:realm:authenticationMethod:
      @abstract Initialize a protection space representing an origin server, or a realm on one
      @param host The hostname of the server
      @param port The port for the server
      @param protocol The sprotocol for this server - e.g. "http", "ftp", "https"
      @param realm A string indicating a protocol-specific subdivision
      of a single host. For http and https, this maps to the realm
      string in http authentication challenges. For many other protocols
      it is unused.
      @param authenticationMethod The authentication method to use to access this protection space -
      valid values include nil (default method), @"digest" and @"form".
      @result The initialized object.
  */
  init(host: String, port: Int, protocol: String?, realm: String?, authenticationMethod: String?)

  /*!
      @method initWithProxyHost:port:type:realm:authenticationMethod:
      @abstract Initialize a protection space representing a proxy server, or a realm on one
      @param host The hostname of the proxy server
      @param port The port for the proxy server
      @param type The type of proxy - e.g. "http", "ftp", "SOCKS"
      @param realm A string indicating a protocol-specific subdivision
      of a single host. For http and https, this maps to the realm
      string in http authentication challenges. For many other protocols
      it is unused.
      @param authenticationMethod The authentication method to use to access this protection space -
      valid values include nil (default method) and @"digest"
      @result The initialized object.
  */
  init(proxyHost host: String, port: Int, type: String?, realm: String?, authenticationMethod: String?)

  /*!
      @method realm
      @abstract Get the authentication realm for which the protection space that
      needs authentication
      @discussion This is generally only available for http
      authentication, and may be nil otherwise.
      @result The realm string
  */
  var realm: String? { get }

  /*!
      @method receivesCredentialSecurely
      @abstract Determine if the password for this protection space can be sent securely
      @result YES if a secure authentication method or protocol will be used, NO otherwise
  */
  var receivesCredentialSecurely: Bool { get }

  /*!
      @method host
      @abstract Get the proxy host if this is a proxy authentication, or the host from the URL.
      @result The host for this protection space.
  */
  var host: String { get }

  /*!
      @method port
      @abstract Get the proxy port if this is a proxy authentication, or the port from the URL.
      @result The port for this protection space, or 0 if not set.
  */
  var port: Int { get }

  /*!
      @method proxyType
      @abstract Get the type of this protection space, if a proxy
      @result The type string, or nil if not a proxy.
   */
  var proxyType: String? { get }

  /*!
      @method protocol
      @abstract Get the protocol of this protection space, if not a proxy
      @result The type string, or nil if a proxy.
  */
  var `protocol`: String? { get }

  /*!
      @method authenticationMethod
      @abstract Get the authentication method to be used for this protection space
      @result The authentication method
  */
  var authenticationMethod: String { get }
  func isProxy() -> Bool
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
    @class NSURLProtectionSpace(NSClientCertificateSpace)
    @discussion This category supplies additional information for use when a client certificate is required by the server in order to complete authentication.
 */
extension NSURLProtectionSpace {

  /*!
      @method distinguishedNames
      @abstract Returns an array of acceptable certificate issuing authorities for client certification authentication. Issuers are identified by their distinguished name and returned as a DER encoded data.
      @result An array of NSData objects.  (Nil if the authenticationMethod is not NSURLAuthenticationMethodClientCertificate)
   */
  @available(OSX 10.6, *)
  var distinguishedNames: [NSData]? { get }
}

/*!
    @class NSURLProtectionSpace(NSServerTrustValidationSpace)
    @discussion This category supplies additional information for use by the client to evaluate whether to trust a given server during a security handshake.
 */
extension NSURLProtectionSpace {

  /*!
      @method serverTrust
      @abstract Returns a SecTrustRef which represents the state of the servers SSL transaction state
      @result A SecTrustRef from Security.framework.  (Nil if the authenticationMethod is not NSURLAuthenticationMethodServerTrust)
   */
  @available(OSX 10.6, *)
  var serverTrust: SecTrust? { get }
}

/*!
@protocol NSURLProtocolClient
@discussion NSURLProtocolClient provides the interface to the URL
loading system that is intended for use by NSURLProtocol
implementors.
*/
protocol NSURLProtocolClient : NSObjectProtocol {

  /*!
  @method URLProtocol:wasRedirectedToRequest:
   @abstract Indicates to an NSURLProtocolClient that a redirect has
   occurred.
   @param URLProtocol the NSURLProtocol object sending the message.
   @param request the NSURLRequest to which the protocol implementation
   has redirected.
   */
  func urlProtocol(protocol: NSURLProtocol, wasRedirectedTo request: NSURLRequest, redirectResponse: NSURLResponse)

  /*!
  @method URLProtocol:cachedResponseIsValid:
       @abstract Indicates to an NSURLProtocolClient that the protocol
       implementation has examined a cached response and has
       determined that it is valid.
       @param URLProtocol the NSURLProtocol object sending the message.
       @param cachedResponse the NSCachedURLResponse object that has
       examined and is valid.
       */
  func urlProtocol(protocol: NSURLProtocol, cachedResponseIsValid cachedResponse: NSCachedURLResponse)

  /*!
  @method URLProtocol:didReceiveResponse:
       @abstract Indicates to an NSURLProtocolClient that the protocol
       implementation has created an NSURLResponse for the current load.
       @param URLProtocol the NSURLProtocol object sending the message.
       @param response the NSURLResponse object the protocol implementation
       has created.
       @param cacheStoragePolicy The NSURLCacheStoragePolicy the protocol
       has determined should be used for the given response if the
       response is to be stored in a cache.
       */
  func urlProtocol(protocol: NSURLProtocol, didReceive response: NSURLResponse, cacheStoragePolicy policy: NSURLCacheStoragePolicy)

  /*!
  @method URLProtocol:didLoadData:
       @abstract Indicates to an NSURLProtocolClient that the protocol
       implementation has loaded URL data.
       @discussion The data object must contain only new data loaded since
       the previous call to this method (if any), not cumulative data for
       the entire load.
       @param URLProtocol the NSURLProtocol object sending the message.
       @param data URL load data being made available.
       */
  func urlProtocol(protocol: NSURLProtocol, didLoad data: NSData)

  /*!
  @method URLProtocolDidFinishLoading:
       @abstract Indicates to an NSURLProtocolClient that the protocol
       implementation has finished loading successfully.
       @param URLProtocol the NSURLProtocol object sending the message.
       */
  func urlProtocolDidFinishLoading(protocol: NSURLProtocol)

  /*!
              @method URLProtocol:didFailWithError:
   @abstract Indicates to an NSURLProtocolClient that the protocol
   implementation has failed to load successfully.
   @param URLProtocol the NSURLProtocol object sending the message.
   @param error The error that caused the load to fail.
   */
  func urlProtocol(protocol: NSURLProtocol, didFailWithError error: NSError)

  /*!
  @method URLProtocol:didReceiveAuthenticationChallenge:
       @abstract Start authentication for the specified request
       @param protocol The protocol object requesting authentication.
       @param challenge The authentication challenge.
       @discussion The protocol client guarantees that it will answer the
       request on the same thread that called this method. It may add a
       default credential to the challenge it issues to the connection delegate,
       if the protocol did not provide one.
       */
  func urlProtocol(protocol: NSURLProtocol, didReceive challenge: NSURLAuthenticationChallenge)

  /*!
  @method URLProtocol:didCancelAuthenticationChallenge:
       @abstract Cancel authentication for the specified request
       @param protocol The protocol object cancelling authentication.
       @param challenge The authentication challenge.
       */
  func urlProtocol(protocol: NSURLProtocol, didCancel challenge: NSURLAuthenticationChallenge)
}

/*!
    @class NSURLProtocol
    
    @abstract NSURLProtocol is an abstract class which provides the
    basic structure for performing protocol-specific loading of URL
    data. Concrete subclasses handle the specifics associated with one
    or more protocols or URL schemes.
*/
class NSURLProtocol : NSObject {

  /*! 
      @method initWithRequest:cachedResponse:client:
      @abstract Initializes an NSURLProtocol given request, 
      cached response, and client.
      @param request The request to load.
      @param cachedResponse A response that has been retrieved from the
      cache for the given request. The protocol implementation should
      apply protocol-specific validity checks if such tests are
      necessary.
      @param client The NSURLProtocolClient object that serves as the
      interface the protocol implementation can use to report results back
      to the URL loading system.
  */
  init(request: NSURLRequest, cachedResponse: NSCachedURLResponse?, client: NSURLProtocolClient?)

  /*! 
      @method client
      @abstract Returns the NSURLProtocolClient of the receiver. 
      @result The NSURLProtocolClient of the receiver.  
  */
  var client: NSURLProtocolClient? { get }

  /*! 
      @method request
      @abstract Returns the NSURLRequest of the receiver. 
      @result The NSURLRequest of the receiver. 
  */
  @NSCopying var request: NSURLRequest { get }

  /*! 
      @method cachedResponse
      @abstract Returns the NSCachedURLResponse of the receiver.  
      @result The NSCachedURLResponse of the receiver. 
  */
  @NSCopying var cachedResponse: NSCachedURLResponse? { get }

  /*! 
      @method canInitWithRequest:
      @abstract This method determines whether this protocol can handle
      the given request.
      @discussion A concrete subclass should inspect the given request and
      determine whether or not the implementation can perform a load with
      that request. This is an abstract method. Sublasses must provide an
      implementation. The implementation in this class calls
      NSRequestConcreteImplementation.
      @param request A request to inspect.
      @result YES if the protocol can handle the given request, NO if not.
  */
  class func canInitWith(request: NSURLRequest) -> Bool

  /*! 
      @method canonicalRequestForRequest:
      @abstract This method returns a canonical version of the given
      request.
      @discussion It is up to each concrete protocol implementation to
      define what "canonical" means. However, a protocol should
      guarantee that the same input request always yields the same
      canonical form. Special consideration should be given when
      implementing this method since the canonical form of a request is
      used to look up objects in the URL cache, a process which performs
      equality checks between NSURLRequest objects.
      <p>
      This is an abstract method; sublasses must provide an
      implementation. The implementation in this class calls
      NSRequestConcreteImplementation.
      @param request A request to make canonical.
      @result The canonical form of the given request. 
  */
  class func canonicalRequestFor(request: NSURLRequest) -> NSURLRequest

  /*!
      @method requestIsCacheEquivalent:toRequest:
      @abstract Compares two requests for equivalence with regard to caching.
      @discussion Requests are considered euqivalent for cache purposes
      if and only if they would be handled by the same protocol AND that
      protocol declares them equivalent after performing 
      implementation-specific checks.
      @result YES if the two requests are cache-equivalent, NO otherwise.
  */
  class func requestIsCacheEquivalent(a: NSURLRequest, to b: NSURLRequest) -> Bool

  /*! 
      @method startLoading
      @abstract Starts protocol-specific loading of a request. 
      @discussion When this method is called, the protocol implementation
      should start loading a request.
  */
  func startLoading()

  /*! 
      @method stopLoading
      @abstract Stops protocol-specific loading of a request. 
      @discussion When this method is called, the protocol implementation
      should end the work of loading a request. This could be in response
      to a cancel operation, so protocol implementations must be able to
      handle this call while a load is in progress.
  */
  func stopLoading()

  /*! 
      @method propertyForKey:inRequest:
      @abstract Returns the property in the given request previously
      stored with the given key.
      @discussion The purpose of this method is to provide an interface
      for protocol implementors to access protocol-specific information
      associated with NSURLRequest objects.
      @param key The string to use for the property lookup.
      @param request The request to use for the property lookup.
      @result The property stored with the given key, or nil if no property
      had previously been stored with the given key in the given request.
  */
  class func propertyForKey(key: String, in request: NSURLRequest) -> AnyObject?

  /*! 
      @method setProperty:forKey:inRequest:
      @abstract Stores the given property in the given request using the
      given key.
      @discussion The purpose of this method is to provide an interface
      for protocol implementors to customize protocol-specific
      information associated with NSMutableURLRequest objects.
      @param value The property to store. 
      @param key The string to use for the property storage. 
      @param request The request in which to store the property. 
  */
  class func setProperty(value: AnyObject, forKey key: String, in request: NSMutableURLRequest)

  /*!
      @method removePropertyForKey:inRequest:
      @abstract Remove any property stored under the given key
      @discussion Like setProperty:forKey:inRequest: above, the purpose of this
          method is to give protocol implementors the ability to store 
          protocol-specific information in an NSURLRequest
      @param key The key whose value should be removed
      @param request The request to be modified
  */
  class func removePropertyForKey(key: String, in request: NSMutableURLRequest)

  /*! 
      @method registerClass:
      @abstract This method registers a protocol class, making it visible
      to several other NSURLProtocol class methods.
      @discussion When the URL loading system begins to load a request,
      each protocol class that has been registered is consulted in turn to
      see if it can be initialized with a given request. The first
      protocol handler class to provide a YES answer to
      <tt>+canInitWithRequest:</tt> "wins" and that protocol
      implementation is used to perform the URL load. There is no
      guarantee that all registered protocol classes will be consulted.
      Hence, it should be noted that registering a class places it first
      on the list of classes that will be consulted in calls to
      <tt>+canInitWithRequest:</tt>, moving it in front of all classes
      that had been registered previously.
      <p>A similar design governs the process to create the canonical form
      of a request with the <tt>+canonicalRequestForRequest:</tt> class
      method.
      @param protocolClass the class to register.
      @result YES if the protocol was registered successfully, NO if not.
      The only way that failure can occur is if the given class is not a
      subclass of NSURLProtocol.
  */
  class func registerClass(protocolClass: AnyClass) -> Bool

  /*! 
      @method unregisterClass:
      @abstract This method unregisters a protocol. 
      @discussion After unregistration, a protocol class is no longer
      consulted in calls to NSURLProtocol class methods.
      @param protocolClass The class to unregister.
  */
  class func unregisterClass(protocolClass: AnyClass)
  convenience init()
}
extension NSURLProtocol {
  @available(OSX 10.10, *)
  class func canInitWith(task: NSURLSessionTask) -> Bool
  @available(OSX 10.10, *)
  convenience init(task: NSURLSessionTask, cachedResponse: NSCachedURLResponse?, client: NSURLProtocolClient?)
  @available(OSX 10.10, *)
  @NSCopying var task: NSURLSessionTask? { get }
}

/*!
    @enum NSURLRequestCachePolicy

    @discussion The NSURLRequestCachePolicy enum defines constants that
    can be used to specify the type of interactions that take place with
    the caching system when the URL loading system processes a request.
    Specifically, these constants cover interactions that have to do
    with whether already-existing cache data is returned to satisfy a
    URL load request.

    @constant NSURLRequestUseProtocolCachePolicy Specifies that the
    caching logic defined in the protocol implementation, if any, is
    used for a particular URL load request. This is the default policy
    for URL load requests.

    @constant NSURLRequestReloadIgnoringLocalCacheData Specifies that the
    data for the URL load should be loaded from the origin source. No
    existing local cache data, regardless of its freshness or validity,
    should be used to satisfy a URL load request.

    @constant NSURLRequestReloadIgnoringLocalAndRemoteCacheData Specifies that
    not only should the local cache data be ignored, but that proxies and
    other intermediates should be instructed to disregard their caches
    so far as the protocol allows.  Unimplemented.

    @constant NSURLRequestReloadIgnoringCacheData Older name for
    NSURLRequestReloadIgnoringLocalCacheData.

    @constant NSURLRequestReturnCacheDataElseLoad Specifies that the
    existing cache data should be used to satisfy a URL load request,
    regardless of its age or expiration date. However, if there is no
    existing data in the cache corresponding to a URL load request,
    the URL is loaded from the origin source.

    @constant NSURLRequestReturnCacheDataDontLoad Specifies that the
    existing cache data should be used to satisfy a URL load request,
    regardless of its age or expiration date. However, if there is no
    existing data in the cache corresponding to a URL load request, no
    attempt is made to load the URL from the origin source, and the
    load is considered to have failed. This constant specifies a
    behavior that is similar to an "offline" mode.

    @constant NSURLRequestReloadRevalidatingCacheData Specifies that
    the existing cache data may be used provided the origin source
    confirms its validity, otherwise the URL is loaded from the
    origin source.  Unimplemented.
*/
enum NSURLRequestCachePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UseProtocolCachePolicy
  case ReloadIgnoringLocalCacheData
  case ReloadIgnoringLocalAndRemoteCacheData
  static var ReloadIgnoringCacheData: NSURLRequestCachePolicy { get }
  case ReturnCacheDataElseLoad
  case ReturnCacheDataDontLoad
  case ReloadRevalidatingCacheData
}

/*!
 @enum NSURLRequestNetworkServiceType
 
 @discussion The NSURLRequestNetworkServiceType enum defines constants that
 can be used to specify the service type to associate with this request.  The
 service type is used to provide the networking layers a hint of the purpose 
 of the request.
 
 @constant NSURLNetworkServiceTypeDefault Is the default value for an NSURLRequest
 when created.  This value should be left unchanged for the vast majority of requests.
 
 @constant NSURLNetworkServiceTypeVoIP Specifies that the request is for voice over IP
 control traffic.
 
 @constant NSURLNetworkServiceTypeVideo Specifies that the request is for video
 traffic.

 @constant NSURLNetworkServiceTypeBackground Specifies that the request is for background
 traffic (such as a file download).

 @constant NSURLNetworkServiceTypeVoice Specifies that the request is for voice data.

*/
enum NSURLRequestNetworkServiceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NetworkServiceTypeDefault
  case NetworkServiceTypeVoIP
  case NetworkServiceTypeVideo
  case NetworkServiceTypeBackground
  case NetworkServiceTypeVoice
}

/*!
    @class NSURLRequest
    
    @abstract An NSURLRequest object represents a URL load request in a
    manner independent of protocol and URL scheme.
    
    @discussion NSURLRequest encapsulates two basic data elements about
    a URL load request:
    <ul>
    <li>The URL to load.
    <li>The policy to use when consulting the URL content cache made
    available by the implementation.
    </ul>
    In addition, NSURLRequest is designed to be extended to support
    protocol-specific data by adding categories to access a property
    object provided in an interface targeted at protocol implementors.
    <ul>
    <li>Protocol implementors should direct their attention to the
    NSURLRequestExtensibility category on NSURLRequest for more
    information on how to provide extensions on NSURLRequest to
    support protocol-specific request information.
    <li>Clients of this API who wish to create NSURLRequest objects to
    load URL content should consult the protocol-specific NSURLRequest
    categories that are available. The NSHTTPURLRequest category on
    NSURLRequest is an example.
    </ul>
    <p>
    Objects of this class are used to create NSURLConnection instances,
    which can are used to perform the load of a URL, or as input to the
    NSURLConnection class method which performs synchronous loads.
*/
class NSURLRequest : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  class func supportsSecureCoding() -> Bool

  /*! 
      @method initWithURL:
      @abstract Initializes an NSURLRequest with the given URL. 
      @discussion Default values are used for cache policy
      (NSURLRequestUseProtocolCachePolicy) and timeout interval (60
      seconds).
      @param URL The URL for the request. 
      @result An initialized NSURLRequest. 
  */
  convenience init(url URL: NSURL)

  /*! 
      @method initWithURL:
      @abstract Initializes an NSURLRequest with the given URL and
      cache policy.
      @discussion This is the designated initializer for the 
      NSURLRequest class.
      @param URL The URL for the request. 
      @param cachePolicy The cache policy for the request. 
      @param timeoutInterval The timeout interval for the request. See the
      commentary for the <tt>timeoutInterval</tt> for more information on
      timeout intervals.
      @result An initialized NSURLRequest. 
  */
  init(url URL: NSURL, cachePolicy: NSURLRequestCachePolicy, timeoutInterval: NSTimeInterval)

  /*! 
      @method URL
      @abstract Returns the URL of the receiver. 
      @result The URL of the receiver. 
  */
  @NSCopying var url: NSURL? { get }

  /*! 
      @method cachePolicy
      @abstract Returns the cache policy of the receiver. 
      @result The cache policy of the receiver. 
  */
  var cachePolicy: NSURLRequestCachePolicy { get }

  /*! 
      @method timeoutInterval
      @abstract Returns the timeout interval of the receiver.
      @discussion The timeout interval specifies the limit on the idle
      interval alloted to a request in the process of loading. The "idle
      interval" is defined as the period of time that has passed since the
      last instance of load activity occurred for a request that is in the
      process of loading. Hence, when an instance of load activity occurs
      (e.g. bytes are received from the network for a request), the idle
      interval for a request is reset to 0. If the idle interval ever
      becomes greater than or equal to the timeout interval, the request
      is considered to have timed out. This timeout interval is measured
      in seconds.
      @result The timeout interval of the receiver. 
  */
  var timeoutInterval: NSTimeInterval { get }

  /*!
      @method mainDocumentURL
      @abstract The main document URL associated with this load.
      @discussion This URL is used for the cookie "same domain as main
      document" policy. There may also be other future uses.
      See setMainDocumentURL:
      NOTE: In the current implementation, this value is unused by the
      framework. A fully functional version of this method will be available 
      in the future. 
      @result The main document URL.
  */
  @NSCopying var mainDocumentURL: NSURL? { get }

  /*!
   @method networkServiceType
   @abstract Returns the NSURLRequestNetworkServiceType associated with this request.
   @discussion  This will return NSURLNetworkServiceTypeDefault for requests that have
   not explicitly set a networkServiceType (using the setNetworkServiceType method).
   @result The NSURLRequestNetworkServiceType associated with this request.
   */
  @available(OSX 10.7, *)
  var networkServiceType: NSURLRequestNetworkServiceType { get }

  /*! 
   @method allowsCellularAccess:
   @abstract returns whether a connection created with this request is allowed to use
   the built in cellular radios (if present).
   @result YES if the receiver is allowed to use the built in cellular radios to
   satify the request, NO otherwise.
   */
  @available(OSX 10.8, *)
  var allowsCellularAccess: Bool { get }
  convenience init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}

/*! 
    @class NSMutableURLRequest
    
    @abstract An NSMutableURLRequest object represents a mutable URL load
    request in a manner independent of protocol and URL scheme.
    
    @discussion This specialization of NSURLRequest is provided to aid
    developers who may find it more convenient to mutate a single request
    object for a series of URL loads instead of creating an immutable
    NSURLRequest for each load. This programming model is supported by
    the following contract stipulation between NSMutableURLRequest and 
    NSURLConnection: NSURLConnection makes a deep copy of each 
    NSMutableURLRequest object passed to one of its initializers.    
    <p>NSMutableURLRequest is designed to be extended to support
    protocol-specific data by adding categories to access a property
    object provided in an interface targeted at protocol implementors.
    <ul>
    <li>Protocol implementors should direct their attention to the
    NSMutableURLRequestExtensibility category on
    NSMutableURLRequest for more information on how to provide
    extensions on NSMutableURLRequest to support protocol-specific
    request information.
    <li>Clients of this API who wish to create NSMutableURLRequest
    objects to load URL content should consult the protocol-specific
    NSMutableURLRequest categories that are available. The
    NSMutableHTTPURLRequest category on NSMutableURLRequest is an
    example.
    </ul>
*/
class NSMutableURLRequest : NSURLRequest {

  /*! 
      @method URL
      @abstract Sets the URL of the receiver. 
      @param URL The new URL for the receiver. 
  */
  @NSCopying var url: NSURL?

  /*! 
      @method setCachePolicy:
      @abstract The cache policy of the receiver. 
      @param policy The new NSURLRequestCachePolicy for the receiver. 
  */
  var cachePolicy: NSURLRequestCachePolicy

  /*! 
      @method setTimeoutInterval:
      @abstract Sets the timeout interval of the receiver.
      @discussion The timeout interval specifies the limit on the idle
      interval allotted to a request in the process of loading. The "idle
      interval" is defined as the period of time that has passed since the
      last instance of load activity occurred for a request that is in the
      process of loading. Hence, when an instance of load activity occurs
      (e.g. bytes are received from the network for a request), the idle
      interval for a request is reset to 0. If the idle interval ever
      becomes greater than or equal to the timeout interval, the request
      is considered to have timed out. This timeout interval is measured
      in seconds.
      @param seconds The new timeout interval of the receiver. 
  */
  var timeoutInterval: NSTimeInterval

  /*!
      @method setMainDocumentURL:
      @abstract Sets the main document URL
      @param URL The main document URL.
      @discussion The caller should pass the URL for an appropriate main
      document, if known. For example, when loading a web page, the URL
      of the main html document for the top-level frame should be
      passed.  This main document will be used to implement the cookie
      "only from same domain as main document" policy, and possibly
      other things in the future.
      NOTE: In the current implementation, the passed-in value is unused by the
      framework. A fully functional version of this method will be available 
      in the future. 
  */
  @NSCopying var mainDocumentURL: NSURL?

  /*!
   @method setNetworkServiceType:
   @abstract Sets the NSURLRequestNetworkServiceType to associate with this request
   @param networkServiceType The NSURLRequestNetworkServiceType to associate with the request.
   @discussion This method is used to provide the network layers with a hint as to the purpose
   of the request.  Most clients should not need to use this method.
   */
  @available(OSX 10.7, *)
  var networkServiceType: NSURLRequestNetworkServiceType

  /*! 
   @method setAllowsCellularAccess
   @abstract sets whether a connection created with this request is allowed to use
   the built in cellular radios (if present).
   @param allow NO if the receiver should not be allowed to use the built in
   cellular radios to satisfy the request, YES otherwise.  The default is YES.
   */
  @available(OSX 10.8, *)
  var allowsCellularAccess: Bool

  /*! 
      @method initWithURL:
      @abstract Initializes an NSURLRequest with the given URL. 
      @discussion Default values are used for cache policy
      (NSURLRequestUseProtocolCachePolicy) and timeout interval (60
      seconds).
      @param URL The URL for the request. 
      @result An initialized NSURLRequest. 
  */
  convenience init(url URL: NSURL)

  /*! 
      @method initWithURL:
      @abstract Initializes an NSURLRequest with the given URL and
      cache policy.
      @discussion This is the designated initializer for the 
      NSURLRequest class.
      @param URL The URL for the request. 
      @param cachePolicy The cache policy for the request. 
      @param timeoutInterval The timeout interval for the request. See the
      commentary for the <tt>timeoutInterval</tt> for more information on
      timeout intervals.
      @result An initialized NSURLRequest. 
  */
  init(url URL: NSURL, cachePolicy: NSURLRequestCachePolicy, timeoutInterval: NSTimeInterval)
  convenience init()
  init?(coder aDecoder: NSCoder)
}

/*!
    @category NSURLRequest(NSHTTPURLRequest) 
    The NSHTTPURLRequest on NSURLRequest provides methods for accessing
    information specific to HTTP protocol requests.
*/
extension NSURLRequest {

  /*! 
      @method HTTPMethod
      @abstract Returns the HTTP request method of the receiver. 
      @result the HTTP request method of the receiver. 
  */
  var httpMethod: String? { get }

  /*! 
      @method allHTTPHeaderFields
      @abstract Returns a dictionary containing all the HTTP header fields
      of the receiver.
      @result a dictionary containing all the HTTP header fields of the
      receiver.
  */
  var allHTTPHeaderFields: [String : String]? { get }

  /*! 
      @method valueForHTTPHeaderField:
      @abstract Returns the value which corresponds to the given header
      field. Note that, in keeping with the HTTP RFC, HTTP header field
      names are case-insensitive.
      @param field the header field name to use for the lookup
      (case-insensitive).
      @result the value associated with the given header field, or nil if
      there is no value associated with the given header field.
  */
  func valueForHTTPHeaderField(field: String) -> String?

  /*! 
      @method HTTPBody
      @abstract Returns the request body data of the receiver. 
      @discussion This data is sent as the message body of the request, as
      in done in an HTTP POST request.
      @result The request body data of the receiver. 
  */
  @NSCopying var httpBody: NSData? { get }

  /*!
      @method HTTPBodyStream
      @abstract Returns the request body stream of the receiver
      if any has been set
      @discussion The stream is returned for examination only; it is
      not safe for the caller to manipulate the stream in any way.  Also
      note that the HTTPBodyStream and HTTPBody are mutually exclusive - only
      one can be set on a given request.  Also note that the body stream is
      preserved across copies, but is LOST when the request is coded via the 
      NSCoding protocol
      @result The request body stream of the receiver.
  */
  var httpBodyStream: NSInputStream? { get }

  /*! 
      @method HTTPShouldHandleCookies
      @abstract Determine whether default cookie handling will happen for 
      this request.
      @discussion NOTE: This value is not used prior to 10.3
      @result YES if cookies will be sent with and set for this request; 
      otherwise NO.
  */
  var httpShouldHandleCookies: Bool { get }

  /*!
   @method HTTPShouldUsePipelining
   @abstract Reports whether the receiver is not expected to wait for the
   previous response before transmitting.
   @result YES if the receiver should transmit before the previous response
   is received.  NO if the receiver should wait for the previous response
   before transmitting.
   */
  @available(OSX 10.7, *)
  var httpShouldUsePipelining: Bool { get }
}

/*!
    @category NSMutableURLRequest(NSMutableHTTPURLRequest) 
    The NSMutableHTTPURLRequest on NSMutableURLRequest provides methods
    for configuring information specific to HTTP protocol requests.
*/
extension NSMutableURLRequest {

  /*! 
      @method HTTPMethod:
      @abstract Sets the HTTP request method of the receiver. 
      @param method the new HTTP request method for the receiver.
  */
  var httpMethod: String

  /*! 
      @method allHTTPHeaderFields:
      @abstract Sets the HTTP header fields of the receiver to the given
      dictionary.
      @discussion This method replaces all header fields that may have
      existed before this method call. 
      <p>Since HTTP header fields must be string values, each object and
      key in the dictionary passed to this method must answer YES when
      sent an <tt>-isKindOfClass:[NSString class]</tt> message. If either
      the key or value for a key-value pair answers NO when sent this
      message, the key-value pair is skipped.
      @param headerFields a dictionary containing HTTP header fields.
  */
  var allHTTPHeaderFields: [String : String]?

  /*! 
      @method setValue:forHTTPHeaderField:
      @abstract Sets the value of the given HTTP header field.
      @discussion If a value was previously set for the given header
      field, that value is replaced with the given value. Note that, in
      keeping with the HTTP RFC, HTTP header field names are
      case-insensitive.
      @param value the header field value. 
      @param field the header field name (case-insensitive). 
  */
  func setValue(value: String?, forHTTPHeaderField field: String)

  /*! 
      @method addValue:forHTTPHeaderField:
      @abstract Adds an HTTP header field in the current header
      dictionary.
      @discussion This method provides a way to add values to header
      fields incrementally. If a value was previously set for the given
      header field, the given value is appended to the previously-existing
      value. The appropriate field delimiter, a comma in the case of HTTP,
      is added by the implementation, and should not be added to the given
      value by the caller. Note that, in keeping with the HTTP RFC, HTTP
      header field names are case-insensitive.
      @param value the header field value. 
      @param field the header field name (case-insensitive). 
  */
  func addValue(value: String, forHTTPHeaderField field: String)

  /*! 
      @method HTTPBody:
      @abstract Sets the request body data of the receiver.
      @discussion This data is sent as the message body of the request, as
      in done in an HTTP POST request.
      @param data the new request body data for the receiver.
  */
  @NSCopying var httpBody: NSData?

  /*!
      @method HTTPBodyStream:
      @abstract Sets the request body to be the contents of the given stream. 
      @discussion The provided stream should be unopened; the request will take
      over the stream's delegate.  The entire stream's contents will be 
      transmitted as the HTTP body of the request.  Note that the body stream
      and the body data (set by setHTTPBody:, above) are mutually exclusive 
      - setting one will clear the other. 
      @param inputStream the new input stream for use by the receiver
  */
  var httpBodyStream: NSInputStream?

  /*!
      @method HTTPShouldHandleCookies
      @abstract Decide whether default cookie handling will happen for 
      this request.
      @param YES if cookies should be sent with and set for this request; 
      otherwise NO.
      @discussion The default is YES - in other words, cookies are sent from and 
      stored to the cookie manager by default.
      NOTE: In releases prior to 10.3, this value is ignored
  */
  var httpShouldHandleCookies: Bool

  /*!
   @method HTTPShouldUsePipelining
   @abstract Sets whether the request should not wait for the previous response 
   before transmitting.
   @param YES if the receiver should transmit before the previous response is
   received.  NO to wait for the previous response before transmitting.
   @discussion Calling this method with a YES value does not guarantee HTTP 
   pipelining behavior.  This method may have no effect if an HTTP proxy is
   configured, or if the HTTP request uses an unsafe request method (e.g., POST
   requests will not pipeline).  Pipelining behavior also may not begin until
   the second request on a given TCP connection.  There may be other situations
   where pipelining does not occur even though YES was set.
   HTTP 1.1 allows the client to send multiple requests to the server without
   waiting for a response.  Though HTTP 1.1 requires support for pipelining,
   some servers report themselves as being HTTP 1.1 but do not support
   pipelining (disconnecting, sending resources misordered, omitting part of
   a resource, etc.).
   */
  @available(OSX 10.7, *)
  var httpShouldUsePipelining: Bool
}

/*!
    @class NSURLResponse

    @abstract An NSURLResponse object represents a URL load response in a
    manner independent of protocol and URL scheme.

    @discussion NSURLResponse encapsulates the metadata associated
    with a URL load. Note that NSURLResponse objects do not contain
    the actual bytes representing the content of a URL. See
    NSURLConnection and NSURLConnectionDelegate for more information
    about receiving the content data for a URL load.
*/
class NSURLResponse : NSObject, NSSecureCoding, NSCopying {

  /*!
      @method initWithURL:MIMEType:expectedContentLength:textEncodingName:
      @abstract Initialize an NSURLResponse with the provided values.
      @param URL the URL
      @param MIMETYPE the MIME content type of the response
      @param expectedContentLength the expected content length of the associated data
      @param textEncodingName the name of the text encoding for the associated data, if applicable, else nil
      @result The initialized NSURLResponse.
      @discussion This is the designated initializer for NSURLResponse.
  */
  init(url URL: NSURL, mimeType MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)

  /*! 
      @method URL
      @abstract Returns the URL of the receiver. 
      @result The URL of the receiver. 
  */
  @NSCopying var url: NSURL? { get }

  /*! 
      @method MIMEType
      @abstract Returns the MIME type of the receiver. 
      @discussion The MIME type is based on the information provided
      from an origin source. However, that value may be changed or
      corrected by a protocol implementation if it can be determined
      that the origin server or source reported the information
      incorrectly or imprecisely. An attempt to guess the MIME type may
      be made if the origin source did not report any such information.
      @result The MIME type of the receiver.
  */
  var mimeType: String? { get }

  /*! 
      @method expectedContentLength
      @abstract Returns the expected content length of the receiver.
      @discussion Some protocol implementations report a content length
      as part of delivering load metadata, but not all protocols
      guarantee the amount of data that will be delivered in actuality.
      Hence, this method returns an expected amount. Clients should use
      this value as an advisory, and should be prepared to deal with
      either more or less data.
      @result The expected content length of the receiver, or -1 if
      there is no expectation that can be arrived at regarding expected
      content length.
  */
  var expectedContentLength: Int64 { get }

  /*! 
      @method textEncodingName
      @abstract Returns the name of the text encoding of the receiver.
      @discussion This name will be the actual string reported by the
      origin source during the course of performing a protocol-specific
      URL load. Clients can inspect this string and convert it to an
      NSStringEncoding or CFStringEncoding using the methods and
      functions made available in the appropriate framework.
      @result The name of the text encoding of the receiver, or nil if no
      text encoding was specified. 
  */
  var textEncodingName: String? { get }

  /*!
      @method suggestedFilename
      @abstract Returns a suggested filename if the resource were saved to disk.
      @discussion The method first checks if the server has specified a filename using the
      content disposition header. If no valid filename is specified using that mechanism,
      this method checks the last path component of the URL. If no valid filename can be
      obtained using the last path component, this method uses the URL's host as the filename.
      If the URL's host can't be converted to a valid filename, the filename "unknown" is used.
      In mose cases, this method appends the proper file extension based on the MIME type.
      This method always returns a valid filename.
      @result A suggested filename to use if saving the resource to disk.
  */
  var suggestedFilename: String? { get }
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
    @class NSHTTPURLResponse

    @abstract An NSHTTPURLResponse object represents a response to an
    HTTP URL load. It is a specialization of NSURLResponse which
    provides conveniences for accessing information specific to HTTP
    protocol responses.
*/
class NSHTTPURLResponse : NSURLResponse {

  /*!
    @method	initWithURL:statusCode:HTTPVersion:headerFields:
    @abstract initializer for NSHTTPURLResponse objects.
    @param 	url the URL from which the response was generated.
    @param	statusCode an HTTP status code.
    @param	HTTPVersion The version of the HTTP response as represented by the server.  This is typically represented as "HTTP/1.1".
    @param 	headerFields A dictionary representing the header keys and values of the server response.
    @result 	the instance of the object, or NULL if an error occurred during initialization.
    @discussion This API was introduced in Mac OS X 10.7.2 and iOS 5.0 and is not available prior to those releases.
  */
  @available(OSX 10.7, *)
  init?(url: NSURL, statusCode: Int, httpVersion HTTPVersion: String?, headerFields: [String : String]?)

  /*! 
      @method statusCode
      @abstract Returns the HTTP status code of the receiver. 
      @result The HTTP status code of the receiver. 
  */
  var statusCode: Int { get }

  /*! 
      @method allHeaderFields
      @abstract Returns a dictionary containing all the HTTP header fields
      of the receiver.
      @discussion By examining this header dictionary, clients can see
      the "raw" header information which was reported to the protocol
      implementation by the HTTP server. This may be of use to
      sophisticated or special-purpose HTTP clients.
      @result A dictionary containing all the HTTP header fields of the
      receiver.
  */
  var allHeaderFields: [NSObject : AnyObject] { get }

  /*! 
      @method localizedStringForStatusCode:
      @abstract Convenience method which returns a localized string
      corresponding to the status code for this response.
      @param the status code to use to produce a localized string.
      @result A localized string corresponding to the given status code.
  */
  class func localizedStringForStatusCode(statusCode: Int) -> String

  /*!
      @method initWithURL:MIMEType:expectedContentLength:textEncodingName:
      @abstract Initialize an NSURLResponse with the provided values.
      @param URL the URL
      @param MIMETYPE the MIME content type of the response
      @param expectedContentLength the expected content length of the associated data
      @param textEncodingName the name of the text encoding for the associated data, if applicable, else nil
      @result The initialized NSURLResponse.
      @discussion This is the designated initializer for NSURLResponse.
  */
  init(url URL: NSURL, mimeType MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.8, *)
class NSUUID : NSObject, NSCopying, NSSecureCoding {
  init()
  convenience init?(uuidString string: String)
  convenience init(uuidBytes bytes: UnsafePointer<UInt8>)
  func getBytes(uuid: UnsafeMutablePointer<UInt8>)
  var uuidString: String { get }
  @available(OSX 10.8, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.7, *)
class NSUbiquitousKeyValueStore : NSObject {
  class func defaultStore() -> NSUbiquitousKeyValueStore
  func objectForKey(aKey: String) -> AnyObject?
  func setObject(anObject: AnyObject?, forKey aKey: String)
  func removeObjectForKey(aKey: String)
  func stringForKey(aKey: String) -> String?
  func arrayForKey(aKey: String) -> [AnyObject]?
  func dictionaryForKey(aKey: String) -> [String : AnyObject]?
  func dataForKey(aKey: String) -> NSData?
  func longLongForKey(aKey: String) -> Int64
  func doubleForKey(aKey: String) -> Double
  func boolForKey(aKey: String) -> Bool
  func setString(aString: String?, forKey aKey: String)
  func setData(aData: NSData?, forKey aKey: String)
  func setArray(anArray: [AnyObject]?, forKey aKey: String)
  func setDictionary(aDictionary: [String : AnyObject]?, forKey aKey: String)
  func setLongLong(value: Int64, forKey aKey: String)
  func setDouble(value: Double, forKey aKey: String)
  func setBool(value: Bool, forKey aKey: String)
  var dictionaryRepresentation: [String : AnyObject] { get }
  func synchronize() -> Bool
  init()
}
@available(OSX 10.7, *)
let NSUbiquitousKeyValueStoreDidChangeExternallyNotification: String
@available(OSX 10.7, *)
let NSUbiquitousKeyValueStoreChangeReasonKey: String
@available(OSX 10.7, *)
let NSUbiquitousKeyValueStoreChangedKeysKey: String
@available(OSX 10.7, *)
var NSUbiquitousKeyValueStoreServerChange: Int { get }
@available(OSX 10.7, *)
var NSUbiquitousKeyValueStoreInitialSyncChange: Int { get }
@available(OSX 10.7, *)
var NSUbiquitousKeyValueStoreQuotaViolationChange: Int { get }
@available(OSX 10.8, *)
var NSUbiquitousKeyValueStoreAccountChange: Int { get }
let NSUndoCloseGroupingRunLoopOrdering: Int
@available(OSX 10.0, *)
class NSUndoManager : NSObject {
  func beginUndoGrouping()
  func endUndoGrouping()
  var groupingLevel: Int { get }
  func disableUndoRegistration()
  func enableUndoRegistration()
  var isUndoRegistrationEnabled: Bool { get }
  var groupsByEvent: Bool
  var levelsOfUndo: Int
  var runLoopModes: [String]
  func undo()
  func redo()
  func undoNestedGroup()
  var canUndo: Bool { get }
  var canRedo: Bool { get }
  var isUndoing: Bool { get }
  var isRedoing: Bool { get }
  func removeAllActions()
  func removeAllActionsWithTarget(target: AnyObject)
  func registerUndoWithTarget(target: AnyObject, selector: Selector, object anObject: AnyObject?)
  func prepareWithInvocationTarget(target: AnyObject) -> AnyObject

  /*! @abstract records single undo operation for the specified target
      @param target non-nil target of the undo operation
      @param undoHandler non-nil block to be executed for the undo operation
      @discussion
        As with other undo operations, this does not strongly retain target. Care should be taken to avoid introducing retain cycles by other references captured by the block.
   */
  @available(OSX 10.11, *)
  func __registerUndoWithTarget(target: AnyObject, handler undoHandler: (AnyObject) -> Void)
  @available(OSX 10.7, *)
  func setActionIsDiscardable(discardable: Bool)
  @available(OSX 10.7, *)
  var undoActionIsDiscardable: Bool { get }
  @available(OSX 10.7, *)
  var redoActionIsDiscardable: Bool { get }
  var undoActionName: String { get }
  var redoActionName: String { get }
  func setActionName(actionName: String)
  var undoMenuItemTitle: String { get }
  var redoMenuItemTitle: String { get }
  func undoMenuTitleForUndoActionName(actionName: String) -> String
  func redoMenuTitleForUndoActionName(actionName: String) -> String
  init()
}

extension NSUndoManager {
  func registerUndoWithTarget<TargetType : AnyObject>(target: TargetType, handler: (TargetType) -> Void)
}
@available(OSX 10.7, *)
let NSUndoManagerGroupIsDiscardableKey: String
@available(OSX 10.0, *)
let NSUndoManagerCheckpointNotification: String
@available(OSX 10.0, *)
let NSUndoManagerWillUndoChangeNotification: String
@available(OSX 10.0, *)
let NSUndoManagerWillRedoChangeNotification: String
@available(OSX 10.0, *)
let NSUndoManagerDidUndoChangeNotification: String
@available(OSX 10.0, *)
let NSUndoManagerDidRedoChangeNotification: String
@available(OSX 10.0, *)
let NSUndoManagerDidOpenUndoGroupNotification: String
@available(OSX 10.0, *)
let NSUndoManagerWillCloseUndoGroupNotification: String
@available(OSX 10.7, *)
let NSUndoManagerDidCloseUndoGroupNotification: String
@available(OSX 10.10, *)
class NSUserActivity : NSObject {
  init(activityType: String)
  init()
  var activityType: String { get }
  var title: String?
  var userInfo: [NSObject : AnyObject]?
  func addUserInfoEntriesFrom(otherDictionary: [NSObject : AnyObject])
  @available(OSX 10.11, *)
  var requiredUserInfoKeys: Set<String>
  var needsSave: Bool
  @NSCopying var webpageURL: NSURL?
  @available(OSX 10.11, *)
  @NSCopying var expirationDate: NSDate
  @available(OSX 10.11, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak NSUserActivityDelegate?
  func becomeCurrent()
  @available(OSX 10.11, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreamsWithCompletionHandler(completionHandler: (NSInputStream?, NSOutputStream?, NSError?) -> Void)
  @available(OSX 10.11, *)
  var isEligibleForHandoff: Bool
  @available(OSX 10.11, *)
  var isEligibleForSearch: Bool
  @available(OSX 10.11, *)
  var isEligibleForPublicIndexing: Bool
}
@available(OSX 10.10, *)
let NSUserActivityTypeBrowsingWeb: String
@available(OSX 10.10, *)
protocol NSUserActivityDelegate : NSObjectProtocol {
  optional func userActivityWillSave(userActivity: NSUserActivity)
  optional func userActivityWasContinued(userActivity: NSUserActivity)
  optional func userActivity(userActivity: NSUserActivity?, didReceive inputStream: NSInputStream, outputStream: NSOutputStream)
}
let NSGlobalDomain: String
let NSArgumentDomain: String
let NSRegistrationDomain: String
class NSUserDefaults : NSObject {
  class func standard() -> NSUserDefaults
  class func resetStandardUserDefaults()
  convenience init()
  @available(OSX 10.9, *)
  init?(suiteName suitename: String?)
  func objectForKey(defaultName: String) -> AnyObject?
  func setObject(value: AnyObject?, forKey defaultName: String)
  func removeObjectForKey(defaultName: String)
  func stringForKey(defaultName: String) -> String?
  func arrayForKey(defaultName: String) -> [AnyObject]?
  func dictionaryForKey(defaultName: String) -> [String : AnyObject]?
  func dataForKey(defaultName: String) -> NSData?
  func stringArrayForKey(defaultName: String) -> [String]?
  func integerForKey(defaultName: String) -> Int
  func floatForKey(defaultName: String) -> Float
  func doubleForKey(defaultName: String) -> Double
  func boolForKey(defaultName: String) -> Bool
  @available(OSX 10.6, *)
  func urlForKey(defaultName: String) -> NSURL?
  func setInteger(value: Int, forKey defaultName: String)
  func setFloat(value: Float, forKey defaultName: String)
  func setDouble(value: Double, forKey defaultName: String)
  func setBool(value: Bool, forKey defaultName: String)
  @available(OSX 10.6, *)
  func setURL(url: NSURL?, forKey defaultName: String)
  func register(registrationDictionary: [String : AnyObject])
  func addSuiteNamed(suiteName: String)
  func removeSuiteNamed(suiteName: String)
  func dictionaryRepresentation() -> [String : AnyObject]
  var volatileDomainNames: [String] { get }
  func volatileDomainForName(domainName: String) -> [String : AnyObject]
  func setVolatileDomain(domain: [String : AnyObject], forName domainName: String)
  func removeVolatileDomainForName(domainName: String)
  func persistentDomainForName(domainName: String) -> [String : AnyObject]?
  func setPersistentDomain(domain: [String : AnyObject], forName domainName: String)
  func removePersistentDomainForName(domainName: String)
  func synchronize() -> Bool
  func objectIsForcedForKey(key: String) -> Bool
  func objectIsForcedForKey(key: String, inDomain domain: String) -> Bool
}
let NSUserDefaultsDidChangeNotification: String
@available(OSX 10.8, *)
enum NSUserNotificationActivationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case ContentsClicked
  case ActionButtonClicked
  @available(OSX 10.9, *)
  case Replied
  @available(OSX 10.10, *)
  case AdditionalActionClicked
}
@available(OSX 10.8, *)
class NSUserNotification : NSObject, NSCopying {
  init()
  var title: String?
  var subtitle: String?
  var informativeText: String?
  var actionButtonTitle: String
  var userInfo: [String : AnyObject]?
  @NSCopying var deliveryDate: NSDate?
  @NSCopying var deliveryTimeZone: NSTimeZone?
  @NSCopying var deliveryRepeatInterval: NSDateComponents?
  @NSCopying var actualDeliveryDate: NSDate? { get }
  var isPresented: Bool { get }
  var isRemote: Bool { get }
  var soundName: String?
  var hasActionButton: Bool
  var activationType: NSUserNotificationActivationType { get }
  var otherButtonTitle: String
  @available(OSX 10.9, *)
  var identifier: String?
  @available(OSX 10.9, *)
  var hasReplyButton: Bool
  @available(OSX 10.9, *)
  var responsePlaceholder: String?
  @available(OSX 10.9, *)
  @NSCopying var response: NSAttributedString? { get }
  @available(OSX 10.10, *)
  var additionalActions: [NSUserNotificationAction]?
  @available(OSX 10.10, *)
  @NSCopying var additionalActivationAction: NSUserNotificationAction? { get }
  @available(OSX 10.8, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.10, *)
class NSUserNotificationAction : NSObject, NSCopying {
  convenience init(identifier: String?, title: String?)
  var identifier: String? { get }
  var title: String? { get }
  init()
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.8, *)
let NSUserNotificationDefaultSoundName: String
@available(OSX 10.8, *)
class NSUserNotificationCenter : NSObject {
  class func defaultUserNotificationCenter() -> NSUserNotificationCenter
  unowned(unsafe) var delegate: @sil_unmanaged NSUserNotificationCenterDelegate?
  var scheduledNotifications: [NSUserNotification]
  func scheduleNotification(notification: NSUserNotification)
  func removeScheduledNotification(notification: NSUserNotification)
  var deliveredNotifications: [NSUserNotification] { get }
  func deliver(notification: NSUserNotification)
  func removeDeliveredNotification(notification: NSUserNotification)
  func removeAllDeliveredNotifications()
  init()
}
protocol NSUserNotificationCenterDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  optional func userNotificationCenter(center: NSUserNotificationCenter, didDeliver notification: NSUserNotification)
  @available(OSX 10.8, *)
  optional func userNotificationCenter(center: NSUserNotificationCenter, didActivateNotification notification: NSUserNotification)
  @available(OSX 10.8, *)
  optional func userNotificationCenter(center: NSUserNotificationCenter, shouldPresent notification: NSUserNotification) -> Bool
}
@available(OSX 10.8, *)
class NSUserScriptTask : NSObject {
  init(url: NSURL) throws
  @NSCopying var scriptURL: NSURL { get }
  func execute(completionHandler handler: NSUserScriptTaskCompletionHandler? = nil)
  convenience init()
}
typealias NSUserScriptTaskCompletionHandler = (NSError?) -> Void
@available(OSX 10.8, *)
class NSUserUnixTask : NSUserScriptTask {
  var standardInput: NSFileHandle?
  var standardOutput: NSFileHandle?
  var standardError: NSFileHandle?
  func executeWithArguments(arguments: [String]?, completionHandler handler: NSUserUnixTaskCompletionHandler? = nil)
  init(url: NSURL) throws
  convenience init()
}
typealias NSUserUnixTaskCompletionHandler = (NSError?) -> Void
@available(OSX 10.8, *)
class NSUserAppleScriptTask : NSUserScriptTask {
  func executeWithAppleEvent(event: NSAppleEventDescriptor?, completionHandler handler: NSUserAppleScriptTaskCompletionHandler? = nil)
  init(url: NSURL) throws
  convenience init()
}
typealias NSUserAppleScriptTaskCompletionHandler = (NSAppleEventDescriptor?, NSError?) -> Void
@available(OSX 10.8, *)
class NSUserAutomatorTask : NSUserScriptTask {
  var variables: [String : AnyObject]?
  func executeWithInput(input: NSSecureCoding?, completionHandler handler: NSUserAutomatorTaskCompletionHandler? = nil)
  init(url: NSURL) throws
  convenience init()
}
typealias NSUserAutomatorTaskCompletionHandler = (AnyObject?, NSError?) -> Void
class NSValue : NSObject, NSCopying, NSSecureCoding {
  func getValue(value: UnsafeMutablePointer<Void>)
  var objCType: UnsafePointer<Int8> { get }
  init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  init?(coder aDecoder: NSCoder)
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
}
extension NSValue {
  /*not inherited*/ init(_ value: UnsafePointer<Void>, withObjCType type: UnsafePointer<Int8>)
}
extension NSValue {
  /*not inherited*/ init(nonretainedObject anObject: AnyObject?)
  var nonretainedObjectValue: AnyObject? { get }
  /*not inherited*/ init(pointer: UnsafePointer<Void>)
  var pointerValue: UnsafeMutablePointer<Void> { get }
  func isEqualTo(value: NSValue) -> Bool
}
class NSNumber : NSValue {
  init?(coder aDecoder: NSCoder)
  init(char value: Int8)
  init(unsignedChar value: UInt8)
  init(short value: Int16)
  init(unsignedShort value: UInt16)
  init(int value: Int32)
  init(unsignedInt value: UInt32)
  init(long value: Int)
  init(unsignedLong value: UInt)
  init(longLong value: Int64)
  init(unsignedLongLong value: UInt64)
  init(float value: Float)
  init(double value: Double)
  init(bool value: Bool)
  @available(OSX 10.5, *)
  init(integer value: Int)
  @available(OSX 10.5, *)
  init(unsignedInteger value: UInt)
  var charValue: Int8 { get }
  var unsignedCharValue: UInt8 { get }
  var shortValue: Int16 { get }
  var unsignedShortValue: UInt16 { get }
  var intValue: Int32 { get }
  var unsignedIntValue: UInt32 { get }
  var longValue: Int { get }
  var unsignedLongValue: UInt { get }
  var longLongValue: Int64 { get }
  var unsignedLongLongValue: UInt64 { get }
  var floatValue: Float { get }
  var doubleValue: Double { get }
  var boolValue: Bool { get }
  @available(OSX 10.5, *)
  var integerValue: Int { get }
  @available(OSX 10.5, *)
  var unsignedIntegerValue: UInt { get }
  var stringValue: String { get }
  func compare(otherNumber: NSNumber) -> NSComparisonResult
  func isEqualTo(number: NSNumber) -> Bool
  func descriptionWithLocale(locale: AnyObject?) -> String
  convenience init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  convenience init()
}

extension NSNumber : FloatLiteralConvertible, IntegerLiteralConvertible, BooleanLiteralConvertible {
  /// Create an instance initialized to `value`.
  required convenience init(integerLiteral value: Int)
  /// Create an instance initialized to `value`.
  required convenience init(floatLiteral value: Double)
  /// Create an instance initialized to `value`.
  required convenience init(booleanLiteral value: Bool)
  typealias FloatLiteralType = Double
  typealias IntegerLiteralType = Int
  typealias BooleanLiteralType = Bool
}
extension NSNumber {
}
@available(OSX 10.3, *)
let NSNegateBooleanTransformerName: String
@available(OSX 10.3, *)
let NSIsNilTransformerName: String
@available(OSX 10.3, *)
let NSIsNotNilTransformerName: String
@available(OSX 10.3, *)
let NSUnarchiveFromDataTransformerName: String
@available(OSX 10.5, *)
let NSKeyedUnarchiveFromDataTransformerName: String
@available(OSX 10.3, *)
class NSValueTransformer : NSObject {
  class func setValueTransformer(transformer: NSValueTransformer?, forName name: String)
  /*not inherited*/ init?(forName name: String)
  class func valueTransformerNames() -> [String]
  class func transformedValueClass() -> AnyClass
  class func allowsReverseTransformation() -> Bool
  func transformedValue(value: AnyObject?) -> AnyObject?
  func reverseTransformedValue(value: AnyObject?) -> AnyObject?
  init()
}

/*!
    @class NSXMLDTD
    @abstract Defines the order, repetition, and allowable values for a document
*/
class NSXMLDTD : NSXMLNode {
  init()
  convenience init(contentsOf url: NSURL, options mask: Int) throws
  init(data: NSData, options mask: Int) throws

  /*!
      @method publicID
      @abstract Sets the public id. This identifier should be in the default catalog in /etc/xml/catalog or in a path specified by the environment variable XML_CATALOG_FILES. When the public id is set the system id must also be set.
  */
  var publicID: String?

  /*!
      @method systemID
      @abstract Sets the system id. This should be a URL that points to a valid DTD.
  */
  var systemID: String?

  /*!
      @method insertChild:atIndex:
      @abstract Inserts a child at a particular index.
  */
  func insertChild(child: NSXMLNode, at index: Int)

  /*!
      @method insertChildren:atIndex:
      @abstract Insert several children at a particular index.
  */
  func insertChildren(children: [NSXMLNode], at index: Int)

  /*!
      @method removeChildAtIndex:
      @abstract Removes a child at a particular index.
  */
  func removeChildAt(index: Int)

  /*!
      @method setChildren:
      @abstract Removes all existing children and replaces them with the new children. Set children to nil to simply remove all children.
  */
  func setChildren(children: [NSXMLNode]?)

  /*!
      @method addChild:
      @abstract Adds a child to the end of the existing children.
  */
  func addChild(child: NSXMLNode)

  /*!
      @method replaceChildAtIndex:withNode:
      @abstract Replaces a child at a particular index with another child.
  */
  func replaceChildAt(index: Int, withNode node: NSXMLNode)

  /*!
      @method entityDeclarationForName:
      @abstract Returns the entity declaration matching this name.
  */
  func entityDeclarationForName(name: String) -> NSXMLDTDNode?

  /*!
      @method notationDeclarationForName:
      @abstract Returns the notation declaration matching this name.
  */
  func notationDeclarationForName(name: String) -> NSXMLDTDNode?

  /*!
      @method elementDeclarationForName:
      @abstract Returns the element declaration matching this name.
  */
  func elementDeclarationForName(name: String) -> NSXMLDTDNode?

  /*!
      @method attributeDeclarationForName:
      @abstract Returns the attribute declaration matching this name.
  */
  func attributeDeclarationForName(name: String, elementName: String) -> NSXMLDTDNode?

  /*!
      @method predefinedEntityDeclarationForName:
      @abstract Returns the predefined entity declaration matching this name.
  	@discussion The five predefined entities are
  	<ul><li>&amp;lt; - &lt;</li><li>&amp;gt; - &gt;</li><li>&amp;amp; - &amp;</li><li>&amp;quot; - &quot;</li><li>&amp;apos; - &amp;</li></ul>
  */
  class func predefinedEntityDeclarationForName(name: String) -> NSXMLDTDNode?

  /*!
      @method initWithKind:
      @abstract Invokes @link initWithKind:options: @/link with options set to NSXMLNodeOptionsNone
  */
  convenience init(kind: NSXMLNodeKind)
}

/*!
    @typedef NSXMLDTDNodeKind
	@abstract The subkind of a DTD node kind.
*/
enum NSXMLDTDNodeKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NSXMLEntityGeneralKind
  case NSXMLEntityParsedKind
  case NSXMLEntityUnparsedKind
  case NSXMLEntityParameterKind
  case NSXMLEntityPredefined
  case NSXMLAttributeCDATAKind
  case NSXMLAttributeIDKind
  case NSXMLAttributeIDRefKind
  case NSXMLAttributeIDRefsKind
  case NSXMLAttributeEntityKind
  case NSXMLAttributeEntitiesKind
  case NSXMLAttributeNMTokenKind
  case NSXMLAttributeNMTokensKind
  case NSXMLAttributeEnumerationKind
  case NSXMLAttributeNotationKind
  case NSXMLElementDeclarationUndefinedKind
  case NSXMLElementDeclarationEmptyKind
  case NSXMLElementDeclarationAnyKind
  case NSXMLElementDeclarationMixedKind
  case NSXMLElementDeclarationElementKind
}

/*!
    @class NSXMLDTDNode
    @abstract The nodes that are exclusive to a DTD
	@discussion Every DTD node has a name. Object value is defined as follows:<ul>
		<li><b>Entity declaration</b> - the string that that entity resolves to eg "&lt;"</li>
		<li><b>Attribute declaration</b> - the default value, if any</li>
		<li><b>Element declaration</b> - the validation string</li>
		<li><b>Notation declaration</b> - no objectValue</li></ul>
*/
class NSXMLDTDNode : NSXMLNode {

  /*!
      @method initWithXMLString:
      @abstract Returns an element, attribute, entity, or notation DTD node based on the full XML string.
  */
  init?(xmlString string: String)
  init(kind: NSXMLNodeKind, options: Int)
  init()

  /*!
      @method DTDKind
      @abstract Sets the DTD sub kind.
  */
  var dtdKind: NSXMLDTDNodeKind

  /*!
      @method isExternal
      @abstract True if the system id is set. Valid for entities and notations.
  */
  var isExternal: Bool { get }

  /*!
      @method publicID
      @abstract Sets the public id. This identifier should be in the default catalog in /etc/xml/catalog or in a path specified by the environment variable XML_CATALOG_FILES. When the public id is set the system id must also be set. Valid for entities and notations.
  */
  var publicID: String?

  /*!
      @method systemID
      @abstract Sets the system id. This should be a URL that points to a valid DTD. Valid for entities and notations.
  */
  var systemID: String?

  /*!
      @method notationName
      @abstract Set the notation name. Valid for entities only.
  */
  var notationName: String?

  /*!
      @method initWithKind:
      @abstract Invokes @link initWithKind:options: @/link with options set to NSXMLNodeOptionsNone
  */
  convenience init(kind: NSXMLNodeKind)
}

/*!
    @typedef NSXMLDocumentContentKind
	@abstract Define what type of document this is.
	@constant NSXMLDocumentXMLKind The default document type
	@constant NSXMLDocumentXHTMLKind Set if NSXMLDocumentTidyHTML is set and HTML is detected
	@constant NSXMLDocumentHTMLKind Outputs empty tags without a close tag, eg <br>
	@constant NSXMLDocumentTextKind Output the string value of the document
*/
enum NSXMLDocumentContentKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case XMLKind
  case XHTMLKind
  case HTMLKind
  case TextKind
}

/*!
    @class NSXMLDocument
    @abstract An XML Document
	@discussion Note: if the application of a method would result in more than one element in the children array, an exception is thrown. Trying to add a document, namespace, attribute, or node with a parent also throws an exception. To add a node with a parent first detach or create a copy of it.
*/
class NSXMLDocument : NSXMLNode {
  init()

  /*!
      @method initWithXMLString:options:error:
      @abstract Returns a document created from either XML or HTML, if the HTMLTidy option is set. Parse errors are returned in <tt>error</tt>.
  */
  convenience init(xmlString string: String, options mask: Int) throws

  /*!
      @method initWithContentsOfURL:options:error:
      @abstract Returns a document created from the contents of an XML or HTML URL. Connection problems such as 404, parse errors are returned in <tt>error</tt>.
  */
  convenience init(contentsOf url: NSURL, options mask: Int) throws

  /*!
      @method initWithData:options:error:
      @abstract Returns a document created from data. Parse errors are returned in <tt>error</tt>.
  */
  init(data: NSData, options mask: Int) throws

  /*!
      @method initWithRootElement:
      @abstract Returns a document with a single child, the root element.
  */
  init(rootElement element: NSXMLElement?)
  class func replacementClassFor(cls: AnyClass) -> AnyClass

  /*!
      @method characterEncoding
      @abstract Sets the character encoding to an IANA type.
  */
  var characterEncoding: String?

  /*!
      @method version
      @abstract Sets the XML version. Should be 1.0 or 1.1.
  */
  var version: String?

  /*!
      @method standalone
      @abstract Set whether this document depends on an external DTD. If this option is set the standalone declaration will appear on output.
  */
  var isStandalone: Bool

  /*!
      @method documentContentKind
      @abstract The kind of document.
  */
  var documentContentKind: NSXMLDocumentContentKind

  /*!
      @method MIMEType
      @abstract Set the MIME type, eg text/xml.
  */
  var mimeType: String?

  /*!
      @method DTD
      @abstract Set the associated DTD. This DTD will be output with the document.
  */
  @NSCopying var dtd: NSXMLDTD?

  /*!
      @method setRootElement:
      @abstract Set the root element. Removes all other children including comments and processing-instructions.
  */
  func setRootElement(root: NSXMLElement)

  /*!
      @method rootElement
      @abstract The root element.
  */
  func rootElement() -> NSXMLElement?

  /*!
      @method insertChild:atIndex:
      @abstract Inserts a child at a particular index.
  */
  func insertChild(child: NSXMLNode, at index: Int)

  /*!
      @method insertChildren:atIndex:
      @abstract Insert several children at a particular index.
  */
  func insertChildren(children: [NSXMLNode], at index: Int)

  /*!
      @method removeChildAtIndex:atIndex:
      @abstract Removes a child at a particular index.
  */
  func removeChildAt(index: Int)

  /*!
      @method setChildren:
      @abstract Removes all existing children and replaces them with the new children. Set children to nil to simply remove all children.
  */
  func setChildren(children: [NSXMLNode]?)

  /*!
      @method addChild:
      @abstract Adds a child to the end of the existing children.
  */
  func addChild(child: NSXMLNode)

  /*!
      @method replaceChildAtIndex:withNode:
      @abstract Replaces a child at a particular index with another child.
  */
  func replaceChildAt(index: Int, withNode node: NSXMLNode)

  /*!
      @method XMLData
      @abstract Invokes XMLDataWithOptions with NSXMLNodeOptionsNone.
  */
  @NSCopying var xmlData: NSData { get }

  /*!
      @method XMLDataWithOptions:
      @abstract The representation of this node as it would appear in an XML document, encoded based on characterEncoding.
  */
  func xmlDataWithOptions(options: Int) -> NSData

  /*!
      @method objectByApplyingXSLT:arguments:error:
      @abstract Applies XSLT with arguments (NSString key/value pairs) to this document, returning a new document.
  */
  func objectByApplyingXSLT(xslt: NSData, arguments: [String : String]?) throws -> AnyObject

  /*!
      @method objectByApplyingXSLTString:arguments:error:
      @abstract Applies XSLT as expressed by a string with arguments (NSString key/value pairs) to this document, returning a new document.
  */
  func objectByApplyingXSLTString(xslt: String, arguments: [String : String]?) throws -> AnyObject

  /*!
      @method objectByApplyingXSLTAtURL:arguments:error:
      @abstract Applies the XSLT at a URL with arguments (NSString key/value pairs) to this document, returning a new document. Error may contain a connection error from the URL.
  */
  func objectByApplyingXSLTAt(xsltURL: NSURL, arguments argument: [String : String]?) throws -> AnyObject
  func validate() throws

  /*!
      @method initWithKind:
      @abstract Invokes @link initWithKind:options: @/link with options set to NSXMLNodeOptionsNone
  */
  convenience init(kind: NSXMLNodeKind)

  /*!
      @method initWithKind:options:
      @abstract Inits a node with fidelity options as description NSXMLNodeOptions.h
  */
  convenience init(kind: NSXMLNodeKind, options: Int)
}

/*!
    @class NSXMLElement
    @abstract An XML element
    @discussion Note: Trying to add a document, namespace, attribute, or node with a parent throws an exception. To add a node with a parent first detach or create a copy of it.
*/
class NSXMLElement : NSXMLNode {

  /*!
      @method initWithName:
      @abstract Returns an element <tt>&lt;name>&lt;/name></tt>.
  */
  convenience init(name: String)

  /*!
      @method initWithName:URI:
      @abstract Returns an element whose full QName is specified.
  */
  init(name: String, uri URI: String?)

  /*!
      @method initWithName:stringValue:
      @abstract Returns an element with a single text node child <tt>&lt;name>string&lt;/name></tt>.
  */
  convenience init(name: String, stringValue string: String?)

  /*!
      @method initWithXMLString:error:
      @abstract Returns an element created from a string. Parse errors are collected in <tt>error</tt>.
  */
  init(xmlString string: String) throws
  convenience init(kind: NSXMLNodeKind, options: Int)

  /*!
      @method elementsForName:
      @abstract Returns all of the child elements that match this name.
  */
  func elementsForName(name: String) -> [NSXMLElement]

  /*!
      @method elementsForLocalName:URI
      @abstract Returns all of the child elements that match this localname URI pair.
  */
  func elementsForLocalName(localName: String, uri URI: String?) -> [NSXMLElement]

  /*!
      @method addAttribute:
      @abstract Adds an attribute. Attributes with duplicate names are not added.
  */
  func addAttribute(attribute: NSXMLNode)

  /*!
      @method removeAttributeForName:
      @abstract Removes an attribute based on its name.
  */
  func removeAttributeForName(name: String)

  /*!
      @method setAttributes
      @abstract Set the attributes. In the case of duplicate names, the first attribute with the name is used.
  */
  var attributes: [NSXMLNode]?

  /*!
   @method setAttributesWithDictionary:
   @abstract Set the attributes based on a name-value dictionary.
   */
  func setAttributesWith(attributes: [String : String])

  /*!
      @method attributeForName:
      @abstract Returns an attribute matching this name.
  */
  func attributeForName(name: String) -> NSXMLNode?

  /*!
      @method attributeForLocalName:URI:
      @abstract Returns an attribute matching this localname URI pair.
  */
  func attributeForLocalName(localName: String, uri URI: String?) -> NSXMLNode?

  /*!
      @method addNamespace:URI:
      @abstract Adds a namespace. Namespaces with duplicate names are not added.
  */
  func addNamespace(aNamespace: NSXMLNode)

  /*!
      @method addNamespace:URI:
      @abstract Removes a namespace with a particular name.
  */
  func removeNamespaceForPrefix(name: String)

  /*!
      @method namespaces
      @abstract Set the namespaces. In the case of duplicate names, the first namespace with the name is used.
  */
  var namespaces: [NSXMLNode]?

  /*!
      @method namespaceForPrefix:
      @abstract Returns the namespace matching this prefix.
  */
  func namespaceForPrefix(name: String) -> NSXMLNode?

  /*!
      @method resolveNamespaceForName:
      @abstract Returns the namespace who matches the prefix of the name given. Looks in the entire namespace chain.
  */
  func resolveNamespaceForName(name: String) -> NSXMLNode?

  /*!
      @method resolvePrefixForNamespaceURI:
      @abstract Returns the URI of this prefix. Looks in the entire namespace chain.
  */
  func resolvePrefixForNamespaceURI(namespaceURI: String) -> String?

  /*!
      @method insertChild:atIndex:
      @abstract Inserts a child at a particular index.
  */
  func insertChild(child: NSXMLNode, at index: Int)

  /*!
      @method insertChildren:atIndex:
      @abstract Insert several children at a particular index.
  */
  func insertChildren(children: [NSXMLNode], at index: Int)

  /*!
      @method removeChildAtIndex:atIndex:
      @abstract Removes a child at a particular index.
  */
  func removeChildAt(index: Int)

  /*!
      @method setChildren:
      @abstract Removes all existing children and replaces them with the new children. Set children to nil to simply remove all children.
  */
  func setChildren(children: [NSXMLNode]?)

  /*!
      @method addChild:
      @abstract Adds a child to the end of the existing children.
  */
  func addChild(child: NSXMLNode)

  /*!
      @method replaceChildAtIndex:withNode:
      @abstract Replaces a child at a particular index with another child.
  */
  func replaceChildAt(index: Int, withNode node: NSXMLNode)

  /*!
      @method normalizeAdjacentTextNodesPreservingCDATA:
      @abstract Adjacent text nodes are coalesced. If the node's value is the empty string, it is removed. This should be called with a value of NO before using XQuery or XPath.
  */
  func normalizeAdjacentTextNodesPreservingCDATA(preserve: Bool)
  convenience init()

  /*!
      @method initWithKind:
      @abstract Invokes @link initWithKind:options: @/link with options set to NSXMLNodeOptionsNone
  */
  convenience init(kind: NSXMLNodeKind)
}
extension NSXMLElement {

  /*!
      @method setAttributesAsDictionary:
      @abstract Set the attributes base on a name-value dictionary.
      @discussion This method is deprecated and does not function correctly. Use -setAttributesWithDictionary: instead.
   */
  func setAttributesAs(attributes: [NSObject : AnyObject])
}

/*!
    @typedef NSXMLNodeKind
*/
enum NSXMLNodeKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case InvalidKind
  case DocumentKind
  case ElementKind
  case AttributeKind
  case NamespaceKind
  case ProcessingInstructionKind
  case CommentKind
  case TextKind
  case DTDKind
  case EntityDeclarationKind
  case AttributeDeclarationKind
  case ElementDeclarationKind
  case NotationDeclarationKind
}

/*!
    @class NSXMLNode
    @abstract The basic unit of an XML document.
*/
class NSXMLNode : NSObject, NSCopying {
  init()

  /*!
      @method initWithKind:
      @abstract Invokes @link initWithKind:options: @/link with options set to NSXMLNodeOptionsNone
  */
  convenience init(kind: NSXMLNodeKind)

  /*!
      @method initWithKind:options:
      @abstract Inits a node with fidelity options as description NSXMLNodeOptions.h
  */
  init(kind: NSXMLNodeKind, options: Int)

  /*!
      @method document:
      @abstract Returns an empty document.
  */
  class func document() -> AnyObject

  /*!
      @method documentWithRootElement:
      @abstract Returns a document
      @param element The document's root node.
  */
  class func documentWithRootElement(element: NSXMLElement) -> AnyObject

  /*!
      @method elementWithName:
      @abstract Returns an element <tt>&lt;name>&lt;/name></tt>.
  */
  class func elementWithName(name: String) -> AnyObject

  /*!
      @method elementWithName:URI:
      @abstract Returns an element whose full QName is specified.
  */
  class func elementWithName(name: String, uri URI: String) -> AnyObject

  /*!
      @method elementWithName:stringValue:
      @abstract Returns an element with a single text node child <tt>&lt;name>string&lt;/name></tt>.
  */
  class func elementWithName(name: String, stringValue string: String) -> AnyObject

  /*!
      @method elementWithName:children:attributes:
      @abstract Returns an element children and attributes <tt>&lt;name attr1="foo" attr2="bar">&lt;-- child1 -->child2&lt;/name></tt>.
  */
  class func elementWithName(name: String, children: [NSXMLNode]?, attributes: [NSXMLNode]?) -> AnyObject

  /*!
      @method attributeWithName:stringValue:
      @abstract Returns an attribute <tt>name="stringValue"</tt>.
  */
  class func attributeWithName(name: String, stringValue: String) -> AnyObject

  /*!
      @method attributeWithLocalName:URI:stringValue:
      @abstract Returns an attribute whose full QName is specified.
  */
  class func attributeWithName(name: String, uri URI: String, stringValue: String) -> AnyObject

  /*!
      @method namespaceWithName:stringValue:
      @abstract Returns a namespace <tt>xmlns:name="stringValue"</tt>.
  */
  class func namespaceWithName(name: String, stringValue: String) -> AnyObject

  /*!
      @method processingInstructionWithName:stringValue:
      @abstract Returns a processing instruction <tt>&lt;?name stringValue></tt>.
  */
  class func processingInstructionWithName(name: String, stringValue: String) -> AnyObject

  /*!
      @method commentWithStringValue:
      @abstract Returns a comment <tt>&lt;--stringValue--></tt>.
  */
  class func commentWithStringValue(stringValue: String) -> AnyObject

  /*!
      @method textWithStringValue:
      @abstract Returns a text node.
  */
  class func textWithStringValue(stringValue: String) -> AnyObject

  /*!
      @method DTDNodeWithXMLString:
      @abstract Returns an element, attribute, entity, or notation DTD node based on the full XML string.
  */
  class func dtdNodeWithXMLString(string: String) -> AnyObject?

  /*!
      @method kind
      @abstract Returns an element, attribute, entity, or notation DTD node based on the full XML string.
  */
  var kind: NSXMLNodeKind { get }

  /*!
      @method name
      @abstract Sets the nodes name. Applicable for element, attribute, namespace, processing-instruction, document type declaration, element declaration, attribute declaration, entity declaration, and notation declaration.
  */
  var name: String?

  /*!
      @method objectValue
      @abstract Sets the content of the node. Setting the objectValue removes all existing children including processing instructions and comments. Setting the object value on an element creates a single text node child.
  */
  var objectValue: AnyObject?

  /*!
      @method stringValue:
      @abstract Sets the content of the node. Setting the stringValue removes all existing children including processing instructions and comments. Setting the string value on an element creates a single text node child. The getter returns the string value of the node, which may be either its content or child text nodes, depending on the type of node. Elements are recursed and text nodes concatenated in document order with no intervening spaces.
  */
  var stringValue: String?

  /*!
      @method setStringValue:resolvingEntities:
      @abstract Sets the content as with @link setStringValue: @/link, but when "resolve" is true, character references, predefined entities and user entities available in the document's dtd are resolved. Entities not available in the dtd remain in their entity form.
  */
  func setStringValue(string: String, resolvingEntities resolve: Bool)

  /*!
      @method index
      @abstract A node's index amongst its siblings.
  */
  var index: Int { get }

  /*!
      @method level
      @abstract The depth of the node within the tree. Documents and standalone nodes are level 0.
  */
  var level: Int { get }

  /*!
      @method rootDocument
      @abstract The encompassing document or nil.
  */
  var rootDocument: NSXMLDocument? { get }

  /*!
      @method parent
      @abstract The parent of this node. Documents and standalone Nodes have a nil parent; there is not a 1-to-1 relationship between parent and children, eg a namespace cannot be a child but has a parent element.
  */
  @NSCopying var parent: NSXMLNode? { get }

  /*!
      @method childCount
      @abstract The amount of children, relevant for documents, elements, and document type declarations. Use this instead of [[self children] count].
  */
  var childCount: Int { get }

  /*!
      @method children
      @abstract An immutable array of child nodes. Relevant for documents, elements, and document type declarations.
  */
  var children: [NSXMLNode]? { get }

  /*!
      @method childAtIndex:
      @abstract Returns the child node at a particular index.
  */
  func childAt(index: Int) -> NSXMLNode?

  /*!
      @method previousSibling:
      @abstract Returns the previous sibling, or nil if there isn't one.
  */
  @NSCopying var previousSibling: NSXMLNode? { get }

  /*!
      @method nextSibling:
      @abstract Returns the next sibling, or nil if there isn't one.
  */
  @NSCopying var nextSibling: NSXMLNode? { get }

  /*!
      @method previousNode:
      @abstract Returns the previous node in document order. This can be used to walk the tree backwards.
  */
  @NSCopying var previous: NSXMLNode? { get }

  /*!
      @method nextNode:
      @abstract Returns the next node in document order. This can be used to walk the tree forwards.
  */
  @NSCopying var next: NSXMLNode? { get }

  /*!
      @method detach:
      @abstract Detaches this node from its parent.
  */
  func detach()

  /*!
      @method detach:
      @abstract Returns the XPath to this node, for example foo/bar[2]/baz.
  */
  var xPath: String? { get }

  /*!
  	@method localName
  	@abstract Returns the local name bar if this attribute or element's name is foo:bar
  */
  var localName: String? { get }

  /*!
  	@method prefix
  	@abstract Returns the prefix foo if this attribute or element's name if foo:bar
  */
  var prefix: String? { get }

  /*!
  	@method URI
  	@abstract Set the URI of this element, attribute, or document. For documents it is the URI of document origin. Getter returns the URI of this element, attribute, or document. For documents it is the URI of document origin and is automatically set when using initWithContentsOfURL.
  */
  var uri: String?

  /*!
      @method localNameForName:
      @abstract Returns the local name bar in foo:bar.
  */
  class func localNameForName(name: String) -> String

  /*!
      @method localNameForName:
      @abstract Returns the prefix foo in the name foo:bar.
  */
  class func prefixForName(name: String) -> String?

  /*!
      @method predefinedNamespaceForPrefix:
      @abstract Returns the namespace belonging to one of the predefined namespaces xml, xs, or xsi
  */
  class func predefinedNamespaceForPrefix(name: String) -> NSXMLNode?

  /*!
      @method description
      @abstract Used for debugging. May give more information than XMLString.
  */
  var description: String { get }

  /*!
      @method XMLString
      @abstract The representation of this node as it would appear in an XML document.
  */
  var xmlString: String { get }

  /*!
      @method XMLStringWithOptions:
      @abstract The representation of this node as it would appear in an XML document, with various output options available.
  */
  func xmlStringWithOptions(options: Int) -> String

  /*!
      @method canonicalXMLStringPreservingComments:
      @abstract W3 canonical form (http://www.w3.org/TR/xml-c14n). The input option NSXMLNodePreserveWhitespace should be set for true canonical form.
  */
  func canonicalXMLStringPreservingComments(comments: Bool) -> String

  /*!
      @method nodesForXPath:error:
      @abstract Returns the nodes resulting from applying an XPath to this node using the node as the context item ("."). normalizeAdjacentTextNodesPreservingCDATA:NO should be called if there are adjacent text nodes since they are not allowed under the XPath/XQuery Data Model.
  	@returns An array whose elements are a kind of NSXMLNode.
  */
  func nodesForXPath(xpath: String) throws -> [NSXMLNode]

  /*!
      @method objectsForXQuery:constants:error:
      @abstract Returns the objects resulting from applying an XQuery to this node using the node as the context item ("."). Constants are a name-value dictionary for constants declared "external" in the query. normalizeAdjacentTextNodesPreservingCDATA:NO should be called if there are adjacent text nodes since they are not allowed under the XPath/XQuery Data Model.
  	@returns An array whose elements are kinds of NSArray, NSData, NSDate, NSNumber, NSString, NSURL, or NSXMLNode.
  */
  func objectsForXQuery(xquery: String, constants: [String : AnyObject]?) throws -> [AnyObject]
  func objectsForXQuery(xquery: String) throws -> [AnyObject]
  func copy(zone zone: NSZone = nil) -> AnyObject
}
var NSXMLNodeOptionsNone: Int { get }
var NSXMLNodeIsCDATA: Int { get }
var NSXMLNodeExpandEmptyElement: Int { get }
var NSXMLNodeCompactEmptyElement: Int { get }
var NSXMLNodeUseSingleQuotes: Int { get }
var NSXMLNodeUseDoubleQuotes: Int { get }
var NSXMLNodeNeverEscapeContents: Int { get }
var NSXMLDocumentTidyHTML: Int { get }
var NSXMLDocumentTidyXML: Int { get }
var NSXMLDocumentValidate: Int { get }
var NSXMLNodeLoadExternalEntitiesAlways: Int { get }
var NSXMLNodeLoadExternalEntitiesSameOriginOnly: Int { get }
var NSXMLNodeLoadExternalEntitiesNever: Int { get }
var NSXMLDocumentXInclude: Int { get }
var NSXMLNodePrettyPrint: Int { get }
var NSXMLDocumentIncludeContentTypeDeclaration: Int { get }
var NSXMLNodePreserveNamespaceOrder: Int { get }
var NSXMLNodePreserveAttributeOrder: Int { get }
var NSXMLNodePreserveEntities: Int { get }
var NSXMLNodePreservePrefixes: Int { get }
var NSXMLNodePreserveCDATA: Int { get }
var NSXMLNodePreserveWhitespace: Int { get }
var NSXMLNodePreserveDTD: Int { get }
var NSXMLNodePreserveCharacterReferences: Int { get }
var NSXMLNodePromoteSignificantWhitespace: Int { get }
var NSXMLNodePreserveEmptyElements: Int { get }
var NSXMLNodePreserveQuotes: Int { get }
var NSXMLNodePreserveAll: Int { get }
@available(OSX 10.9, *)
enum NSXMLParserExternalEntityResolvingPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ResolveExternalEntitiesNever
  case ResolveExternalEntitiesNoNetwork
  case ResolveExternalEntitiesSameOriginOnly
  case ResolveExternalEntitiesAlways
}
class NSXMLParser : NSObject {
  convenience init?(contentsOf url: NSURL)
  init(data: NSData)
  @available(OSX 10.7, *)
  convenience init(stream: NSInputStream)
  unowned(unsafe) var delegate: @sil_unmanaged NSXMLParserDelegate?
  var shouldProcessNamespaces: Bool
  var shouldReportNamespacePrefixes: Bool
  @available(OSX 10.9, *)
  var externalEntityResolvingPolicy: NSXMLParserExternalEntityResolvingPolicy
  @available(OSX 10.9, *)
  var allowedExternalEntityURLs: Set<NSURL>?
  func parse() -> Bool
  func abortParsing()
  @NSCopying var parserError: NSError? { get }
  var shouldResolveExternalEntities: Bool
  convenience init()
}
extension NSXMLParser {
  var publicID: String? { get }
  var systemID: String? { get }
  var lineNumber: Int { get }
  var columnNumber: Int { get }
}
protocol NSXMLParserDelegate : NSObjectProtocol {
  optional func parserDidStartDocument(parser: NSXMLParser)
  optional func parserDidEndDocument(parser: NSXMLParser)
  optional func parser(parser: NSXMLParser, foundNotationDeclarationWithName name: String, publicID: String?, systemID: String?)
  optional func parser(parser: NSXMLParser, foundUnparsedEntityDeclarationWithName name: String, publicID: String?, systemID: String?, notationName: String?)
  optional func parser(parser: NSXMLParser, foundAttributeDeclarationWithName attributeName: String, forElement elementName: String, type: String?, defaultValue: String?)
  optional func parser(parser: NSXMLParser, foundElementDeclarationWithName elementName: String, model: String)
  optional func parser(parser: NSXMLParser, foundInternalEntityDeclarationWithName name: String, value: String?)
  optional func parser(parser: NSXMLParser, foundExternalEntityDeclarationWithName name: String, publicID: String?, systemID: String?)
  optional func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:])
  optional func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?)
  optional func parser(parser: NSXMLParser, didStartMappingPrefix prefix: String, toURI namespaceURI: String)
  optional func parser(parser: NSXMLParser, didEndMappingPrefix prefix: String)
  optional func parser(parser: NSXMLParser, foundCharacters string: String)
  optional func parser(parser: NSXMLParser, foundIgnorableWhitespace whitespaceString: String)
  optional func parser(parser: NSXMLParser, foundProcessingInstructionWithTarget target: String, data: String?)
  optional func parser(parser: NSXMLParser, foundComment comment: String)
  optional func parser(parser: NSXMLParser, foundCDATA CDATABlock: NSData)
  optional func parser(parser: NSXMLParser, resolveExternalEntityName name: String, systemID: String?) -> NSData?
  optional func parser(parser: NSXMLParser, parseErrorOccurred parseError: NSError)
  optional func parser(parser: NSXMLParser, validationErrorOccurred validationError: NSError)
}
@available(OSX 10.3, *)
let NSXMLParserErrorDomain: String
enum NSXMLParserError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InternalError
  case OutOfMemoryError
  case DocumentStartError
  case EmptyDocumentError
  case PrematureDocumentEndError
  case InvalidHexCharacterRefError
  case InvalidDecimalCharacterRefError
  case InvalidCharacterRefError
  case InvalidCharacterError
  case CharacterRefAtEOFError
  case CharacterRefInPrologError
  case CharacterRefInEpilogError
  case CharacterRefInDTDError
  case EntityRefAtEOFError
  case EntityRefInPrologError
  case EntityRefInEpilogError
  case EntityRefInDTDError
  case ParsedEntityRefAtEOFError
  case ParsedEntityRefInPrologError
  case ParsedEntityRefInEpilogError
  case ParsedEntityRefInInternalSubsetError
  case EntityReferenceWithoutNameError
  case EntityReferenceMissingSemiError
  case ParsedEntityRefNoNameError
  case ParsedEntityRefMissingSemiError
  case UndeclaredEntityError
  case UnparsedEntityError
  case EntityIsExternalError
  case EntityIsParameterError
  case UnknownEncodingError
  case EncodingNotSupportedError
  case StringNotStartedError
  case StringNotClosedError
  case NamespaceDeclarationError
  case EntityNotStartedError
  case EntityNotFinishedError
  case LessThanSymbolInAttributeError
  case AttributeNotStartedError
  case AttributeNotFinishedError
  case AttributeHasNoValueError
  case AttributeRedefinedError
  case LiteralNotStartedError
  case LiteralNotFinishedError
  case CommentNotFinishedError
  case ProcessingInstructionNotStartedError
  case ProcessingInstructionNotFinishedError
  case NotationNotStartedError
  case NotationNotFinishedError
  case AttributeListNotStartedError
  case AttributeListNotFinishedError
  case MixedContentDeclNotStartedError
  case MixedContentDeclNotFinishedError
  case ElementContentDeclNotStartedError
  case ElementContentDeclNotFinishedError
  case XMLDeclNotStartedError
  case XMLDeclNotFinishedError
  case ConditionalSectionNotStartedError
  case ConditionalSectionNotFinishedError
  case ExternalSubsetNotFinishedError
  case DOCTYPEDeclNotFinishedError
  case MisplacedCDATAEndStringError
  case CDATANotFinishedError
  case MisplacedXMLDeclarationError
  case SpaceRequiredError
  case SeparatorRequiredError
  case NMTOKENRequiredError
  case NAMERequiredError
  case PCDATARequiredError
  case URIRequiredError
  case PublicIdentifierRequiredError
  case LTRequiredError
  case GTRequiredError
  case LTSlashRequiredError
  case EqualExpectedError
  case TagNameMismatchError
  case UnfinishedTagError
  case StandaloneValueError
  case InvalidEncodingNameError
  case CommentContainsDoubleHyphenError
  case InvalidEncodingError
  case ExternalStandaloneEntityError
  case InvalidConditionalSectionError
  case EntityValueRequiredError
  case NotWellBalancedError
  case ExtraContentError
  case InvalidCharacterInEntityError
  case ParsedEntityRefInInternalError
  case EntityRefLoopError
  case EntityBoundaryError
  case InvalidURIError
  case URIFragmentError
  case NoDTDError
  case DelegateAbortedParseError
}
protocol NSXPCProxyCreating {
  func remoteObjectProxy() -> AnyObject
  func remoteObjectProxyWithErrorHandler(handler: (NSError) -> Void) -> AnyObject
}
@available(OSX 10.8, *)
struct NSXPCConnectionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Privileged: NSXPCConnectionOptions { get }
}
@available(OSX 10.8, *)
class NSXPCConnection : NSObject, NSXPCProxyCreating {
  init(serviceName: String)
  var serviceName: String? { get }
  init(machServiceName name: String, options: NSXPCConnectionOptions = [])
  init(listenerEndpoint endpoint: NSXPCListenerEndpoint)
  var endpoint: NSXPCListenerEndpoint { get }
  var exportedInterface: NSXPCInterface?
  var exportedObject: AnyObject?
  var remoteObjectInterface: NSXPCInterface?
  var remoteObjectProxy: AnyObject { get }
  func remoteObjectProxyWithErrorHandler(handler: (NSError) -> Void) -> AnyObject
  var interruptionHandler: (() -> Void)?
  var invalidationHandler: (() -> Void)?
  func resume()
  func suspend()
  func invalidate()
  var auditSessionIdentifier: au_asid_t { get }
  var processIdentifier: pid_t { get }
  var effectiveUserIdentifier: uid_t { get }
  var effectiveGroupIdentifier: gid_t { get }
  init()
}
@available(OSX 10.8, *)
class NSXPCListener : NSObject {
  class func service() -> NSXPCListener
  class func anonymous() -> NSXPCListener
  init(machServiceName name: String)
  unowned(unsafe) var delegate: @sil_unmanaged NSXPCListenerDelegate?
  var endpoint: NSXPCListenerEndpoint { get }
  func resume()
  func suspend()
  func invalidate()
  convenience init()
}
protocol NSXPCListenerDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  optional func listener(listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool
}
@available(OSX 10.8, *)
class NSXPCInterface : NSObject {
  /*not inherited*/ init(withProtocol protocol: Protocol)
  unowned(unsafe) var `protocol`: @sil_unmanaged Protocol
  func setClasses(classes: Set<NSObject>, forSelector sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func classesFor(sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> Set<NSObject>
  func setInterface(ifc: NSXPCInterface, forSelector sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func forSelector(sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> NSXPCInterface?
  init()
}
@available(OSX 10.8, *)
class NSXPCListenerEndpoint : NSObject, NSSecureCoding {
  init()
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
var NSScannedOption: Int { get }
var NSCollectorDisabledOption: Int { get }
func NSPageSize() -> Int
func NSLogPageSize() -> Int
func NSRoundUpToMultipleOfPageSize(bytes: Int) -> Int
func NSRoundDownToMultipleOfPageSize(bytes: Int) -> Int
func NSAllocateMemoryPages(bytes: Int) -> UnsafeMutablePointer<Void>
func NSDeallocateMemoryPages(ptr: UnsafeMutablePointer<Void>, _ bytes: Int)
func NSCopyMemoryPages(source: UnsafePointer<Void>, _ dest: UnsafeMutablePointer<Void>, _ bytes: Int)
