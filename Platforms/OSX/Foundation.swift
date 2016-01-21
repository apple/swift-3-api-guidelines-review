
var fileNoSuchFileError: Int { get }
var fileLockingError: Int { get }
var fileReadUnknownError: Int { get }
var fileReadNoPermissionError: Int { get }
var fileReadInvalidFileNameError: Int { get }
var fileReadCorruptFileError: Int { get }
var fileReadNoSuchFileError: Int { get }
var fileReadInapplicableStringEncodingError: Int { get }
var fileReadUnsupportedSchemeError: Int { get }
@available(OSX 10.5, *)
var fileReadTooLargeError: Int { get }
@available(OSX 10.5, *)
var fileReadUnknownStringEncodingError: Int { get }
var fileWriteUnknownError: Int { get }
var fileWriteNoPermissionError: Int { get }
var fileWriteInvalidFileNameError: Int { get }
@available(OSX 10.7, *)
var fileWriteFileExistsError: Int { get }
var fileWriteInapplicableStringEncodingError: Int { get }
var fileWriteUnsupportedSchemeError: Int { get }
var fileWriteOutOfSpaceError: Int { get }
@available(OSX 10.6, *)
var fileWriteVolumeReadOnlyError: Int { get }
@available(OSX 10.11, *)
var fileManagerUnmountUnknownError: Int { get }
@available(OSX 10.11, *)
var fileManagerUnmountBusyError: Int { get }
var keyValueValidationError: Int { get }
var formattingError: Int { get }
var userCancelledError: Int { get }
@available(OSX 10.8, *)
var featureUnsupportedError: Int { get }
@available(OSX 10.5, *)
var executableNotLoadableError: Int { get }
@available(OSX 10.5, *)
var executableArchitectureMismatchError: Int { get }
@available(OSX 10.5, *)
var executableRuntimeMismatchError: Int { get }
@available(OSX 10.5, *)
var executableLoadError: Int { get }
@available(OSX 10.5, *)
var executableLinkError: Int { get }
var fileErrorMinimum: Int { get }
var fileErrorMaximum: Int { get }
var validationErrorMinimum: Int { get }
var validationErrorMaximum: Int { get }
@available(OSX 10.5, *)
var executableErrorMinimum: Int { get }
@available(OSX 10.5, *)
var executableErrorMaximum: Int { get }
var formattingErrorMinimum: Int { get }
var formattingErrorMaximum: Int { get }
@available(OSX 10.6, *)
var propertyListReadCorruptError: Int { get }
@available(OSX 10.6, *)
var propertyListReadUnknownVersionError: Int { get }
@available(OSX 10.6, *)
var propertyListReadStreamError: Int { get }
@available(OSX 10.6, *)
var propertyListWriteStreamError: Int { get }
@available(OSX 10.10, *)
var propertyListWriteInvalidError: Int { get }
@available(OSX 10.6, *)
var propertyListErrorMinimum: Int { get }
@available(OSX 10.6, *)
var propertyListErrorMaximum: Int { get }
@available(OSX 10.8, *)
var XPCConnectionInterrupted: Int { get }
@available(OSX 10.8, *)
var XPCConnectionInvalid: Int { get }
@available(OSX 10.8, *)
var XPCConnectionReplyInvalid: Int { get }
@available(OSX 10.8, *)
var XPCConnectionErrorMinimum: Int { get }
@available(OSX 10.8, *)
var XPCConnectionErrorMaximum: Int { get }
@available(OSX 10.9, *)
var ubiquitousFileUnavailableError: Int { get }
@available(OSX 10.9, *)
var ubiquitousFileNotUploadedDueToQuotaError: Int { get }
@available(OSX 10.9, *)
var ubiquitousFileUbiquityServerNotAvailable: Int { get }
@available(OSX 10.9, *)
var ubiquitousFileErrorMinimum: Int { get }
@available(OSX 10.9, *)
var ubiquitousFileErrorMaximum: Int { get }
@available(OSX 10.10, *)
var userActivityHandoffFailedError: Int { get }
@available(OSX 10.10, *)
var userActivityConnectionUnavailableError: Int { get }
@available(OSX 10.10, *)
var userActivityRemoteApplicationTimedOutError: Int { get }
@available(OSX 10.10, *)
var userActivityHandoffUserInfoTooLargeError: Int { get }
@available(OSX 10.10, *)
var userActivityErrorMinimum: Int { get }
@available(OSX 10.10, *)
var userActivityErrorMaximum: Int { get }
@available(OSX 10.11, *)
var coderReadCorruptError: Int { get }
@available(OSX 10.11, *)
var coderValueNotFoundError: Int { get }
@available(OSX 10.11, *)
var coderErrorMinimum: Int { get }
@available(OSX 10.11, *)
var coderErrorMaximum: Int { get }
@available(OSX 10.11, *)
var bundleErrorMinimum: Int { get }
@available(OSX 10.11, *)
var bundleErrorMaximum: Int { get }
struct AffineTransformStruct {
  var m11: CGFloat
  var m12: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var tX: CGFloat
  var tY: CGFloat
  init()
  init(m11: CGFloat, m12: CGFloat, m21: CGFloat, m22: CGFloat, tX: CGFloat, tY: CGFloat)
}
class AffineTransform : Object, Copying, SecureCoding {
  convenience init(transform: AffineTransform)
  init()
  func translateXBy(deltaX: CGFloat, yBy deltaY: CGFloat)
  func rotateByDegrees(angle: CGFloat)
  func rotateByRadians(angle: CGFloat)
  func scaleBy(scale: CGFloat)
  func scaleXBy(scaleX: CGFloat, yBy scaleY: CGFloat)
  func invert()
  func append(transform: AffineTransform)
  func prependTransform(transform: AffineTransform)
  func transform(aPoint: Point) -> Point
  func transform(aSize: Size) -> Size
  var transformStruct: AffineTransformStruct
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
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
typealias AppleEventManagerSuspensionID = COpaquePointer
let appleEventTimeOutDefault: Double
let appleEventTimeOutNone: Double
let appleEventManagerWillProcessFirstEventNotification: String
class AppleEventManager : Object {
  class func shared() -> AppleEventManager
  func setEventHandler(handler: AnyObject, andSelector handleEventSelector: Selector, forEventClass eventClass: AEEventClass, andEventID eventID: AEEventID)
  func removeEventHandlerForEventClass(eventClass: AEEventClass, andEventID eventID: AEEventID)
  func dispatchRawAppleEvent(theAppleEvent: UnsafePointer<AppleEvent>, withRawReply theReply: UnsafeMutablePointer<AppleEvent>, handlerRefCon: SRefCon) -> OSErr
  var currentAppleEvent: AppleEventDescriptor? { get }
  var currentReplyAppleEvent: AppleEventDescriptor? { get }
  func suspendCurrentAppleEvent() -> AppleEventManagerSuspensionID
  func appleEventForSuspensionID(suspensionID: AppleEventManagerSuspensionID) -> AppleEventDescriptor
  func replyAppleEventForSuspensionID(suspensionID: AppleEventManagerSuspensionID) -> AppleEventDescriptor
  func setCurrentAppleEventAndReplyEventWithSuspensionID(suspensionID: AppleEventManagerSuspensionID)
  func resumeWithSuspensionID(suspensionID: AppleEventManagerSuspensionID)
  init()
}
@available(OSX 10.2, *)
let appleScriptErrorMessage: String
@available(OSX 10.2, *)
let appleScriptErrorNumber: String
@available(OSX 10.2, *)
let appleScriptErrorAppName: String
@available(OSX 10.2, *)
let appleScriptErrorBriefMessage: String
@available(OSX 10.2, *)
let appleScriptErrorRange: String
class AppleScript : Object, Copying {
  init?(contentsOf url: URL, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(source: String)
  var source: String? { get }
  var isCompiled: Bool { get }
  func compileAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func executeAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> AppleEventDescriptor
  func executeAppleEvent(event: AppleEventDescriptor, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> AppleEventDescriptor
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
}

/************		Archiving: Writing	****************/
class Archiver : Coder {
  init(forWritingWith mdata: MutableData)
  var archiverData: MutableData { get }
  func encodeRootObject(rootObject: AnyObject)
  func encodeConditionalObject(object: AnyObject?)
  class func archivedDataWithRootObject(rootObject: AnyObject) -> Data
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  func encodeClassName(trueName: String, intoClassName inArchiveName: String)
  func classNameEncodedForTrueClassName(trueName: String) -> String?
  func replace(object: AnyObject, withObject newObject: AnyObject)
  convenience init()
}

/************		Archiving: Reading		****************/
class Unarchiver : Coder {
  init?(forReadingWith data: Data)
  var isAtEnd: Bool { get }
  var systemVersion: UInt32 { get }
  class func unarchiveObjectWith(data: Data) -> AnyObject?
  class func unarchiveObjectWithFile(path: String) -> AnyObject?
  class func decodeClassName(inArchiveName: String, asClassName trueName: String)
  func decodeClassName(inArchiveName: String, asClassName trueName: String)
  class func classNameDecodedForArchiveClassName(inArchiveName: String) -> String
  func classNameDecodedForArchiveClassName(inArchiveName: String) -> String
  func replace(object: AnyObject, withObject newObject: AnyObject)
  convenience init()
}

/************		Exceptions		****************/
let inconsistentArchiveException: String

/************		Object call back		****************/
extension Object {
  var classForArchiver: AnyClass? { get }
  class func replacementObjectFor(archiver: Archiver) -> AnyObject?
  func replacementObjectFor(archiver: Archiver) -> AnyObject?
  class func classForArchiver() -> AnyClass?
}

/****************	Immutable Array		****************/
class NSArray : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func objectAt(index: Int) -> AnyObject
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func objectEnumerator() -> Enumerator
  func reverseObjectEnumerator() -> Enumerator
  @NSCopying var sortedArrayHint: Data { get }
  func sortedArrayUsing(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>) -> [AnyObject]
  func sortedArrayUsing(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>, hint: Data?) -> [AnyObject]
  func sortedArrayUsing(comparator: Selector) -> [AnyObject]
  func subarrayWith(range: NSRange) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: URL, atomically: Bool) -> Bool
  func objectsAt(indexes: IndexSet) -> [AnyObject]
  @available(OSX 10.8, *)
  subscript (idx: Int) -> AnyObject { get }
  @available(OSX 10.6, *)
  func enumerateObjectsUsing(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateObjects(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func indexOfObject(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func indexOfObjectAt(s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(OSX 10.6, *)
  func indexesOfObjects(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(OSX 10.6, *)
  func indexesOfObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(OSX 10.6, *)
  func sortedArrayUsingComparator(cmptr: Comparator) -> [AnyObject]
  @available(OSX 10.6, *)
  func sortedArray(options opts: SortOptions = [], usingComparator cmptr: Comparator) -> [AnyObject]
  @available(OSX 10.6, *)
  func indexOf(obj: AnyObject, inSortedRange r: NSRange, options opts: BinarySearchingOptions = [], usingComparator cmp: Comparator) -> Int
}
struct BinarySearchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var FirstEqual: BinarySearchingOptions { get }
  static var LastEqual: BinarySearchingOptions { get }
  static var InsertionIndex: BinarySearchingOptions { get }
}
extension NSArray {
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
extension NSArray {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}

/****************	Mutable Array		****************/
class MutableArray : NSArray {
  func add(anObject: AnyObject)
  func insert(anObject: AnyObject, at index: Int)
  func removeLastObject()
  func removeObjectAt(index: Int)
  func replaceObjectAt(index: Int, withObject anObject: AnyObject)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: Coder)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
}
extension MutableArray {
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
  func insert(objects: [AnyObject], at indexes: IndexSet)
  func removeObjectsAt(indexes: IndexSet)
  func replaceObjectsAt(indexes: IndexSet, withObjects objects: [AnyObject])
  @available(OSX 10.8, *)
  subscript (idx: Int) -> AnyObject
  @available(OSX 10.6, *)
  func sortUsingComparator(cmptr: Comparator)
  @available(OSX 10.6, *)
  func sort(options opts: SortOptions = [], usingComparator cmptr: Comparator)
}
extension MutableArray {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
@available(OSX 10.0, *)
class AttributedString : Object, Copying, MutableCopying, SecureCoding {
  var string: String { get }
  func attributesAt(location: Int, effectiveRange range: RangePointer) -> [String : AnyObject]
  init()
  @available(OSX 10.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.0, *)
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.0, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension AttributedString {
  var length: Int { get }
  func attribute(attrName: String, at location: Int, effectiveRange range: RangePointer) -> AnyObject?
  func attributedSubstringFrom(range: NSRange) -> AttributedString
  func attributesAt(location: Int, longestEffectiveRange range: RangePointer, in rangeLimit: NSRange) -> [String : AnyObject]
  func attribute(attrName: String, at location: Int, longestEffectiveRange range: RangePointer, in rangeLimit: NSRange) -> AnyObject?
  func isEqualTo(other: AttributedString) -> Bool
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: AttributedString)
  @available(OSX 10.6, *)
  func enumerateAttributesIn(enumerationRange: NSRange, options opts: AttributedStringEnumerationOptions = [], usingBlock block: ([String : AnyObject], NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateAttribute(attrName: String, in enumerationRange: NSRange, options opts: AttributedStringEnumerationOptions = [], usingBlock block: (AnyObject?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
struct AttributedStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Reverse: AttributedStringEnumerationOptions { get }
  static var LongestEffectiveRangeNotRequired: AttributedStringEnumerationOptions { get }
}
@available(OSX 10.0, *)
class MutableAttributedString : AttributedString {
  func replaceCharactersIn(range: NSRange, withString str: String)
  func setAttributes(attrs: [String : AnyObject]? = [:], range: NSRange)
  init()
  init?(coder aDecoder: Coder)
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: AttributedString)
}
extension MutableAttributedString {
  var mutableString: MutableString { get }
  func addAttribute(name: String, value: AnyObject, range: NSRange)
  func addAttributes(attrs: [String : AnyObject] = [:], range: NSRange)
  func removeAttribute(name: String, range: NSRange)
  func replaceCharactersIn(range: NSRange, withAttributedString attrString: AttributedString)
  func insert(attrString: AttributedString, at loc: Int)
  func append(attrString: AttributedString)
  func deleteCharactersIn(range: NSRange)
  func setAttributedString(attrString: AttributedString)
  func beginEditing()
  func endEditing()
}
@available(OSX 10.10, *)
enum BackgroundActivityResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Finished
  case Deferred
}
typealias BackgroundActivityCompletionHandler = (BackgroundActivityResult) -> Void
@available(OSX 10.10, *)
class BackgroundActivityScheduler : Object {
  init(identifier: String)
  var identifier: String { get }
  var qualityOfService: QualityOfService
  var repeats: Bool
  var interval: TimeInterval
  var tolerance: TimeInterval
  func scheduleWith(block: (BackgroundActivityCompletionHandler) -> Void)
  func invalidate()
  var shouldDefer: Bool { get }
  convenience init()
}
class Bundle : Object {
  class func main() -> Bundle
  init?(path: String)
  @available(OSX 10.6, *)
  convenience init?(url: URL)
  /*not inherited*/ init(forClass aClass: AnyClass)
  /*not inherited*/ init?(identifier: String)
  class func allBundles() -> [Bundle]
  class func allFrameworks() -> [Bundle]
  func load() -> Bool
  var isLoaded: Bool { get }
  func unload() -> Bool
  @available(OSX 10.5, *)
  func preflight() throws
  @available(OSX 10.5, *)
  func loadAndReturnError() throws
  @available(OSX 10.6, *)
  @NSCopying var bundleURL: URL { get }
  @available(OSX 10.6, *)
  @NSCopying var resourceURL: URL? { get }
  @available(OSX 10.6, *)
  @NSCopying var executableURL: URL? { get }
  @available(OSX 10.6, *)
  func urlForAuxiliaryExecutable(executableName: String) -> URL?
  @available(OSX 10.6, *)
  @NSCopying var privateFrameworksURL: URL? { get }
  @available(OSX 10.6, *)
  @NSCopying var sharedFrameworksURL: URL? { get }
  @available(OSX 10.6, *)
  @NSCopying var sharedSupportURL: URL? { get }
  @available(OSX 10.6, *)
  @NSCopying var builtInPlugInsURL: URL? { get }
  @available(OSX 10.7, *)
  @NSCopying var appStoreReceiptURL: URL? { get }
  var bundlePath: String { get }
  var resourcePath: String? { get }
  var executablePath: String? { get }
  func pathForAuxiliaryExecutable(executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  @available(OSX 10.6, *)
  class func urlForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?, inBundleWith bundleURL: URL) -> URL?
  @available(OSX 10.6, *)
  class func urLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?, inBundleWith bundleURL: URL) -> [URL]?
  @available(OSX 10.6, *)
  func urlForResource(name: String?, withExtension ext: String?) -> URL?
  @available(OSX 10.6, *)
  func urlForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?) -> URL?
  @available(OSX 10.6, *)
  func urlForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> URL?
  @available(OSX 10.6, *)
  func urLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?) -> [URL]?
  @available(OSX 10.6, *)
  func urLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> [URL]?
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
  var executableArchitectures: [Number]? { get }
  convenience init()
}
var bundleExecutableArchitectureI386: Int { get }
var bundleExecutableArchitecturePPC: Int { get }
var bundleExecutableArchitectureX86_64: Int { get }
var bundleExecutableArchitecturePPC64: Int { get }
extension NSString {
  @available(OSX 10.11, *)
  func variantFittingPresentationWidth(width: Int) -> String
}
let bundleDidLoadNotification: String
let loadedClasses: String
extension Bundle {
}
struct ByteCountFormatterUnits : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UseDefault: ByteCountFormatterUnits { get }
  static var UseBytes: ByteCountFormatterUnits { get }
  static var UseKB: ByteCountFormatterUnits { get }
  static var UseMB: ByteCountFormatterUnits { get }
  static var UseGB: ByteCountFormatterUnits { get }
  static var UseTB: ByteCountFormatterUnits { get }
  static var UsePB: ByteCountFormatterUnits { get }
  static var UseEB: ByteCountFormatterUnits { get }
  static var UseZB: ByteCountFormatterUnits { get }
  static var UseYBOrHigher: ByteCountFormatterUnits { get }
  static var UseAll: ByteCountFormatterUnits { get }
}
enum ByteCountFormatterCountStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case File
  case Memory
  case Decimal
  case Binary
}
@available(OSX 10.8, *)
class ByteCountFormatter : Formatter {
  class func stringFromByteCount(byteCount: Int64, countStyle: ByteCountFormatterCountStyle) -> String
  func stringFromByteCount(byteCount: Int64) -> String
  var allowedUnits: ByteCountFormatterUnits
  var countStyle: ByteCountFormatterCountStyle
  var allowsNonnumericFormatting: Bool
  var includesUnit: Bool
  var includesCount: Bool
  var includesActualByteCount: Bool
  var isAdaptive: Bool
  var zeroPadsFractionDigits: Bool
  @available(OSX 10.10, *)
  var formattingContext: FormattingContext
  init()
  init?(coder aDecoder: Coder)
}
var _UnknownByteOrder: Int { get }
var _LittleEndian: Int { get }
var _BigEndian: Int { get }
func hostByteOrder() -> Int
func swapShort(inv: UInt16) -> UInt16
func swapInt(inv: UInt32) -> UInt32
func swapLong(inv: UInt) -> UInt
func swapLongLong(inv: UInt64) -> UInt64
func swapBigShortToHost(x: UInt16) -> UInt16
func swapBigIntToHost(x: UInt32) -> UInt32
func swapBigLongToHost(x: UInt) -> UInt
func swapBigLongLongToHost(x: UInt64) -> UInt64
func swapHostShortToBig(x: UInt16) -> UInt16
func swapHostIntToBig(x: UInt32) -> UInt32
func swapHostLongToBig(x: UInt) -> UInt
func swapHostLongLongToBig(x: UInt64) -> UInt64
func swapLittleShortToHost(x: UInt16) -> UInt16
func swapLittleIntToHost(x: UInt32) -> UInt32
func swapLittleLongToHost(x: UInt) -> UInt
func swapLittleLongLongToHost(x: UInt64) -> UInt64
func swapHostShortToLittle(x: UInt16) -> UInt16
func swapHostIntToLittle(x: UInt32) -> UInt32
func swapHostLongToLittle(x: UInt) -> UInt
func swapHostLongLongToLittle(x: UInt64) -> UInt64
struct SwappedFloat {
  var v: UInt32
  init()
  init(v: UInt32)
}
struct SwappedDouble {
  var v: UInt64
  init()
  init(v: UInt64)
}
func convertHostFloatToSwapped(x: Float) -> SwappedFloat
func convertSwappedFloatToHost(x: SwappedFloat) -> Float
func convertHostDoubleToSwapped(x: Double) -> SwappedDouble
func convertSwappedDoubleToHost(x: SwappedDouble) -> Double
func swapFloat(x: SwappedFloat) -> SwappedFloat
func swapDouble(x: SwappedDouble) -> SwappedDouble
func swapBigDoubleToHost(x: SwappedDouble) -> Double
func swapBigFloatToHost(x: SwappedFloat) -> Float
func swapHostDoubleToBig(x: Double) -> SwappedDouble
func swapHostFloatToBig(x: Float) -> SwappedFloat
func swapLittleDoubleToHost(x: SwappedDouble) -> Double
func swapLittleFloatToHost(x: SwappedFloat) -> Float
func swapHostDoubleToLittle(x: Double) -> SwappedDouble
func swapHostFloatToLittle(x: Float) -> SwappedFloat
@available(OSX 10.6, *)
class Cache : Object {
  var name: String
  unowned(unsafe) var delegate: @sil_unmanaged CacheDelegate?
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
protocol CacheDelegate : ObjectProtocol {
  @available(OSX 10.6, *)
  optional func cache(cache: Cache, willEvictObject obj: AnyObject)
}
@available(OSX 10.6, *)
let calendarIdentifierGregorian: String
@available(OSX 10.6, *)
let calendarIdentifierBuddhist: String
@available(OSX 10.6, *)
let calendarIdentifierChinese: String
@available(OSX 10.6, *)
let calendarIdentifierCoptic: String
@available(OSX 10.6, *)
let calendarIdentifierEthiopicAmeteMihret: String
@available(OSX 10.6, *)
let calendarIdentifierEthiopicAmeteAlem: String
@available(OSX 10.6, *)
let calendarIdentifierHebrew: String
@available(OSX 10.6, *)
let calendarIdentifierISO8601: String
@available(OSX 10.6, *)
let calendarIdentifierIndian: String
@available(OSX 10.6, *)
let calendarIdentifierIslamic: String
@available(OSX 10.6, *)
let calendarIdentifierIslamicCivil: String
@available(OSX 10.6, *)
let calendarIdentifierJapanese: String
@available(OSX 10.6, *)
let calendarIdentifierPersian: String
@available(OSX 10.6, *)
let calendarIdentifierRepublicOfChina: String
@available(OSX 10.10, *)
let calendarIdentifierIslamicTabular: String
@available(OSX 10.10, *)
let calendarIdentifierIslamicUmmAlQura: String
struct CalendarUnit : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Era: CalendarUnit { get }
  static var Year: CalendarUnit { get }
  static var Month: CalendarUnit { get }
  static var Day: CalendarUnit { get }
  static var Hour: CalendarUnit { get }
  static var Minute: CalendarUnit { get }
  static var Second: CalendarUnit { get }
  static var Weekday: CalendarUnit { get }
  static var WeekdayOrdinal: CalendarUnit { get }
  @available(OSX 10.6, *)
  static var Quarter: CalendarUnit { get }
  @available(OSX 10.7, *)
  static var WeekOfMonth: CalendarUnit { get }
  @available(OSX 10.7, *)
  static var WeekOfYear: CalendarUnit { get }
  @available(OSX 10.7, *)
  static var YearForWeekOfYear: CalendarUnit { get }
  @available(OSX 10.7, *)
  static var Nanosecond: CalendarUnit { get }
  @available(OSX 10.7, *)
  static var Calendar: CalendarUnit { get }
  @available(OSX 10.7, *)
  static var TimeZone: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitEra instead")
  static var eraCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitYear instead")
  static var yearCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitMonth instead")
  static var monthCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitDay instead")
  static var dayCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitHour instead")
  static var hourCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitMinute instead")
  static var minuteCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitSecond instead")
  static var secondCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitWeekOfMonth or NSCalendarUnitWeekOfYear, depending on which you mean")
  static var weekCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitWeekday instead")
  static var weekdayCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitWeekdayOrdinal instead")
  static var weekdayOrdinalCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use NSCalendarUnitQuarter instead")
  static var quarterCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitWeekOfMonth instead")
  static var weekOfMonthCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitWeekOfYear instead")
  static var weekOfYearCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitYearForWeekOfYear instead")
  static var yearForWeekOfYearCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitCalendar instead")
  static var calendarCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitTimeZone instead")
  static var timeZoneCalendarUnit: CalendarUnit { get }
}
struct CalendarOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WrapComponents: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchStrictly: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var SearchBackwards: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchPreviousTimePreservingSmallerUnits: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchNextTimePreservingSmallerUnits: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchNextTime: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchFirst: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchLast: CalendarOptions { get }
}
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarWrapComponents instead")
var wrapCalendarComponents: Int { get }
class Calendar : Object, Copying, SecureCoding {
  class func current() -> Calendar
  @available(OSX 10.5, *)
  class func autoupdatingCurrent() -> Calendar
  @available(OSX 10.9, *)
  /*not inherited*/ init?(identifier calendarIdentifierConstant: String)
  init?(calendarIdentifier ident: String)
  var calendarIdentifier: String { get }
  @NSCopying var locale: Locale?
  @NSCopying var timeZone: TimeZone
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
  func minimumRangeOf(unit: CalendarUnit) -> NSRange
  func maximumRangeOf(unit: CalendarUnit) -> NSRange
  func rangeOf(smaller: CalendarUnit, in larger: CalendarUnit, forDate date: Date) -> NSRange
  func ordinalityOf(smaller: CalendarUnit, in larger: CalendarUnit, forDate date: Date) -> Int
  @available(OSX 10.5, *)
  func rangeOf(unit: CalendarUnit, start datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, forDate date: Date) -> Bool
  func dateFrom(comps: DateComponents) -> Date?
  func components(unitFlags: CalendarUnit, from date: Date) -> DateComponents
  func dateByAdding(comps: DateComponents, to date: Date, options opts: CalendarOptions = []) -> Date?
  func components(unitFlags: CalendarUnit, from startingDate: Date, to resultDate: Date, options opts: CalendarOptions = []) -> DateComponents
  @available(OSX 10.9, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, year yearValuePointer: UnsafeMutablePointer<Int>, month monthValuePointer: UnsafeMutablePointer<Int>, day dayValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  @available(OSX 10.9, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, yearForWeekOfYear yearValuePointer: UnsafeMutablePointer<Int>, weekOfYear weekValuePointer: UnsafeMutablePointer<Int>, weekday weekdayValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  @available(OSX 10.9, *)
  func getHour(hourValuePointer: UnsafeMutablePointer<Int>, minute minuteValuePointer: UnsafeMutablePointer<Int>, second secondValuePointer: UnsafeMutablePointer<Int>, nanosecond nanosecondValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  @available(OSX 10.9, *)
  func component(unit: CalendarUnit, from date: Date) -> Int
  @available(OSX 10.9, *)
  func dateWithEra(eraValue: Int, year yearValue: Int, month monthValue: Int, day dayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> Date?
  @available(OSX 10.9, *)
  func dateWithEra(eraValue: Int, yearForWeekOfYear yearValue: Int, weekOfYear weekValue: Int, weekday weekdayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> Date?
  @available(OSX 10.9, *)
  func startOfDayFor(date: Date) -> Date
  @available(OSX 10.9, *)
  func componentsIn(timezone: TimeZone, from date: Date) -> DateComponents
  @available(OSX 10.9, *)
  func compare(date1: Date, to date2: Date, toUnitGranularity unit: CalendarUnit) -> ComparisonResult
  @available(OSX 10.9, *)
  func isDate(date1: Date, equalTo date2: Date, toUnitGranularity unit: CalendarUnit) -> Bool
  @available(OSX 10.9, *)
  func isDate(date1: Date, inSameDayAs date2: Date) -> Bool
  @available(OSX 10.9, *)
  func isDateInToday(date: Date) -> Bool
  @available(OSX 10.9, *)
  func isDateInYesterday(date: Date) -> Bool
  @available(OSX 10.9, *)
  func isDateInTomorrow(date: Date) -> Bool
  @available(OSX 10.9, *)
  func isDateInWeekend(date: Date) -> Bool
  @available(OSX 10.9, *)
  func rangeOfWeekendStart(datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, containing date: Date) -> Bool
  @available(OSX 10.9, *)
  func nextWeekendStart(datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, options: CalendarOptions = [], after date: Date) -> Bool
  @available(OSX 10.9, *)
  func components(unitFlags: CalendarUnit, from startingDateComp: DateComponents, to resultDateComp: DateComponents, options: CalendarOptions = []) -> DateComponents
  @available(OSX 10.9, *)
  func dateByAdding(unit: CalendarUnit, value: Int, to date: Date, options: CalendarOptions = []) -> Date?
  @available(OSX 10.9, *)
  func enumerateDatesStartingAfter(start: Date, matching comps: DateComponents, options opts: CalendarOptions = [], usingBlock block: (Date?, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.9, *)
  func nextDateAfter(date: Date, matching comps: DateComponents, options: CalendarOptions = []) -> Date?
  @available(OSX 10.9, *)
  func nextDateAfter(date: Date, matching unit: CalendarUnit, value: Int, options: CalendarOptions = []) -> Date?
  @available(OSX 10.9, *)
  func nextDateAfter(date: Date, matchingHour hourValue: Int, minute minuteValue: Int, second secondValue: Int, options: CalendarOptions = []) -> Date?
  @available(OSX 10.9, *)
  func dateBySettingUnit(unit: CalendarUnit, value v: Int, of date: Date, options opts: CalendarOptions = []) -> Date?
  @available(OSX 10.9, *)
  func dateBySettingHour(h: Int, minute m: Int, second s: Int, of date: Date, options opts: CalendarOptions = []) -> Date?
  @available(OSX 10.9, *)
  func date(date: Date, matchesComponents components: DateComponents) -> Bool
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.9, *)
let calendarDayChangedNotification: String
var dateComponentUndefined: Int { get }
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSDateComponentUndefined instead")
var undefinedDateComponent: Int { get }
class DateComponents : Object, Copying, SecureCoding {
  @available(OSX 10.7, *)
  @NSCopying var calendar: Calendar?
  @available(OSX 10.7, *)
  @NSCopying var timeZone: TimeZone?
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
  @NSCopying var date: Date? { get }
  @available(OSX 10.9, *)
  func setValue(value: Int, forComponent unit: CalendarUnit)
  @available(OSX 10.9, *)
  func valueForComponent(unit: CalendarUnit) -> Int
  @available(OSX 10.9, *)
  var isValidDate: Bool { get }
  @available(OSX 10.9, *)
  func isValidDateIn(calendar: Calendar) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension Date {
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func dateWithNaturalLanguageString(string: String, locale: AnyObject?) -> AnyObject?
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func dateWithNaturalLanguageString(string: String) -> AnyObject?
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func dateWith(aString: String) -> AnyObject
  @available(OSX, introduced=10.4, deprecated=10.10)
  func dateWithCalendarFormat(format: String?, timeZone aTimeZone: TimeZone?) -> CalendarDate
  @available(OSX, introduced=10.4, deprecated=10.10)
  func descriptionWithCalendarFormat(format: String?, timeZone aTimeZone: TimeZone?, locale: AnyObject?) -> String?
  @available(OSX, introduced=10.4, deprecated=10.10)
  convenience init?(string description: String)
}
var openStepUnicodeReservedBase: Int { get }
class CharacterSet : Object, Copying, MutableCopying, Coding {
  class func control() -> CharacterSet
  class func whitespace() -> CharacterSet
  class func whitespaceAndNewline() -> CharacterSet
  class func decimalDigit() -> CharacterSet
  class func letter() -> CharacterSet
  class func lowercaseLetter() -> CharacterSet
  class func uppercaseLetter() -> CharacterSet
  class func nonBase() -> CharacterSet
  class func alphanumeric() -> CharacterSet
  class func decomposable() -> CharacterSet
  class func illegal() -> CharacterSet
  class func punctuation() -> CharacterSet
  class func capitalizedLetter() -> CharacterSet
  class func symbol() -> CharacterSet
  @available(OSX 10.5, *)
  class func newline() -> CharacterSet
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersIn aString: String)
  /*not inherited*/ init(bitmapRepresentation data: Data)
  /*not inherited*/ init?(contentsOfFile fName: String)
  init(coder aDecoder: Coder)
  func characterIsMember(aCharacter: unichar) -> Bool
  @NSCopying var bitmapRepresentation: Data { get }
  @NSCopying var inverted: CharacterSet { get }
  func longCharacterIsMember(theLongChar: UTF32Char) -> Bool
  func isSupersetOf(theOtherSet: CharacterSet) -> Bool
  func hasMemberInPlane(thePlane: UInt8) -> Bool
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
}
class MutableCharacterSet : CharacterSet, Copying, MutableCopying {
  func addCharactersIn(aRange: NSRange)
  func removeCharactersIn(aRange: NSRange)
  func addCharactersIn(aString: String)
  func removeCharactersIn(aString: String)
  func formUnionWith(otherSet: CharacterSet)
  func formIntersectionWith(otherSet: CharacterSet)
  func invert()
  class func control() -> MutableCharacterSet
  class func whitespace() -> MutableCharacterSet
  class func whitespaceAndNewline() -> MutableCharacterSet
  class func decimalDigit() -> MutableCharacterSet
  class func letter() -> MutableCharacterSet
  class func lowercaseLetter() -> MutableCharacterSet
  class func uppercaseLetter() -> MutableCharacterSet
  class func nonBase() -> MutableCharacterSet
  class func alphanumeric() -> MutableCharacterSet
  class func decomposable() -> MutableCharacterSet
  class func illegal() -> MutableCharacterSet
  class func punctuation() -> MutableCharacterSet
  class func capitalizedLetter() -> MutableCharacterSet
  class func symbol() -> MutableCharacterSet
  @available(OSX 10.5, *)
  class func newline() -> MutableCharacterSet
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersIn aString: String)
  /*not inherited*/ init(bitmapRepresentation data: Data)
  /*not inherited*/ init?(contentsOfFile fName: String)
  init(coder aDecoder: Coder)
  convenience init()
}
class ClassDescription : Object {
  class func register(description: ClassDescription, forClass aClass: AnyClass)
  class func invalidateClassDescriptionCache()
  /*not inherited*/ init?(forClass aClass: AnyClass)
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  func inverseForRelationshipKey(relationshipKey: String) -> String?
  init()
}
extension Object {
  @NSCopying var classDescription: ClassDescription { get }
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  class func inverseForRelationshipKey(relationshipKey: String) -> String?
  func inverseForRelationshipKey(relationshipKey: String) -> String?
  class func classDescription() -> ClassDescription
  class func attributeKeys() -> [String]
  class func toOneRelationshipKeys() -> [String]
  class func toManyRelationshipKeys() -> [String]
}
let classDescriptionNeededForClassNotification: String
class Coder : Object {
  func encodeValueOfObjCType(type: UnsafePointer<Int8>, at addr: UnsafePointer<Void>)
  func encodeDataObject(data: Data)
  func decodeValueOfObjCType(type: UnsafePointer<Int8>, at data: UnsafeMutablePointer<Void>)
  func decodeDataObject() -> Data?
  func versionForClassName(className: String) -> Int
  init()
}

extension Coder {
  @warn_unused_result
  func decodeObjectOfClass<DecodedObjectType : Coding where DecodedObjectType : NSObject>(cls: DecodedObjectType.Type, forKey key: String) -> DecodedObjectType?
  @warn_unused_result
  @nonobjc func decodeObjectOfClasses(classes: NSSet?, forKey key: String) -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObject() throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectForKey(key: String) throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectOfClass<DecodedObjectType : Coding where DecodedObjectType : NSObject>(cls: DecodedObjectType.Type, forKey key: String) throws -> DecodedObjectType?
  @warn_unused_result
  func decodeTopLevelObjectOfClasses(classes: NSSet?, forKey key: String) throws -> AnyObject?
}
extension Coder {
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
  func __decodeObjectOfClasses(classes: Set<Object>?, forKey key: String) -> AnyObject?
  @available(OSX 10.8, *)
  func decodePropertyListForKey(key: String) -> AnyObject?
  @available(OSX 10.8, *)
  var allowedClasses: Set<Object>? { get }
  @available(OSX 10.11, *)
  func failWithError(error: Error)
}
extension Coder {
}
struct ComparisonPredicateOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitivePredicateOption: ComparisonPredicateOptions { get }
  static var DiacriticInsensitivePredicateOption: ComparisonPredicateOptions { get }
  @available(OSX 10.6, *)
  static var NormalizedPredicateOption: ComparisonPredicateOptions { get }
}
enum ComparisonPredicateModifier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DirectPredicateModifier
  case AllPredicateModifier
  case AnyPredicateModifier
}
enum PredicateOperatorType : UInt {
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
class ComparisonPredicate : Predicate {
  init(leftExpression lhs: Expression, rightExpression rhs: Expression, modifier: ComparisonPredicateModifier, type: PredicateOperatorType, options: ComparisonPredicateOptions = [])
  init(leftExpression lhs: Expression, rightExpression rhs: Expression, customSelector selector: Selector)
  init?(coder: Coder)
  var predicateOperatorType: PredicateOperatorType { get }
  var comparisonPredicateModifier: ComparisonPredicateModifier { get }
  var leftExpression: Expression { get }
  var rightExpression: Expression { get }
  var customSelector: Selector { get }
  var options: ComparisonPredicateOptions { get }
  convenience init()
}
enum CompoundPredicateType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotPredicateType
  case AndPredicateType
  case OrPredicateType
}
@available(OSX 10.4, *)
class CompoundPredicate : Predicate {
  init(type: CompoundPredicateType, subpredicates: [Predicate])
  init?(coder: Coder)
  var compoundPredicateType: CompoundPredicateType { get }
  var subpredicates: [AnyObject] { get }

  /*** Convenience Methods ***/
  /*not inherited*/ init(andPredicateWithSubpredicates subpredicates: [Predicate])
  /*not inherited*/ init(orPredicateWithSubpredicates subpredicates: [Predicate])
  /*not inherited*/ init(notPredicateWithSubpredicate predicate: Predicate)
  convenience init()
}

/****************	Read/Write Options	****************/
struct DataReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataReadingMappedIfSafe: DataReadingOptions { get }
  static var DataReadingUncached: DataReadingOptions { get }
  @available(OSX 10.7, *)
  static var DataReadingMappedAlways: DataReadingOptions { get }
  static var DataReadingMapped: DataReadingOptions { get }
  static var MappedRead: DataReadingOptions { get }
  static var UncachedRead: DataReadingOptions { get }
}
struct DataWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataWritingAtomic: DataWritingOptions { get }
  @available(OSX 10.8, *)
  static var DataWritingWithoutOverwriting: DataWritingOptions { get }
  static var AtomicWrite: DataWritingOptions { get }
}

/****************	Data Search Options	****************/
@available(OSX 10.6, *)
struct DataSearchOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Backwards: DataSearchOptions { get }
  static var Anchored: DataSearchOptions { get }
}

/****************        Base 64 Options	****************/
@available(OSX 10.9, *)
struct DataBase64EncodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Encoding64CharacterLineLength: DataBase64EncodingOptions { get }
  static var Encoding76CharacterLineLength: DataBase64EncodingOptions { get }
  static var EncodingEndLineWithCarriageReturn: DataBase64EncodingOptions { get }
  static var EncodingEndLineWithLineFeed: DataBase64EncodingOptions { get }
}
@available(OSX 10.9, *)
struct DataBase64DecodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var IgnoreUnknownCharacters: DataBase64DecodingOptions { get }
}

/****************	Immutable Data		****************/
class Data : Object, Copying, MutableCopying, SecureCoding {
  var length: Int { get }
  var bytes: UnsafePointer<Void> { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension Data {
  var description: String { get }
  func getBytes(buffer: UnsafeMutablePointer<Void>, length: Int)
  func getBytes(buffer: UnsafeMutablePointer<Void>, range: NSRange)
  func isEqualTo(other: Data) -> Bool
  func subdataWith(range: NSRange) -> Data
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: URL, atomically: Bool) -> Bool
  func writeToFile(path: String, options writeOptionsMask: DataWritingOptions = []) throws
  func writeTo(url: URL, options writeOptionsMask: DataWritingOptions = []) throws
  @available(OSX 10.6, *)
  func rangeOf(dataToFind: Data, options mask: DataSearchOptions = [], range searchRange: NSRange) -> NSRange
  @available(OSX 10.9, *)
  func enumerateByteRangesUsing(block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension Data {
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(OSX 10.9, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
}
extension Data {
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  @available(OSX 10.9, *)
  func base64EncodedString(options options: DataBase64EncodingOptions = []) -> String
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
  @available(OSX 10.9, *)
  func base64EncodedData(options options: DataBase64EncodingOptions = []) -> Data
}
extension Data {
  @available(OSX, introduced=10.0, deprecated=10.10, message="This method is unsafe because it could potentially cause buffer overruns. Use -getBytes:length: instead.")
  func getBytes(buffer: UnsafeMutablePointer<Void>)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +dataWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  class func dataWithContentsOfMappedFile(path: String) -> AnyObject?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}

/****************	Mutable Data		****************/
class MutableData : Data {
  var mutableBytes: UnsafeMutablePointer<Void> { get }
  var length: Int
  init()
  init?(coder aDecoder: Coder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(OSX 10.9, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
extension MutableData {
  func appendBytes(bytes: UnsafePointer<Void>, length: Int)
  func append(other: Data)
  func increaseLengthBy(extraLength: Int)
  func replaceBytesIn(range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytesIn(range: NSRange)
  func setData(data: Data)
  func replaceBytesIn(range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension MutableData {
  init?(capacity: Int)
  init?(length: Int)
}

/****************	    Purgeable Data	****************/
@available(OSX 10.6, *)
class PurgeableData : MutableData, DiscardableContent {
  init()
  init?(coder aDecoder: Coder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(OSX 10.9, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
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
let systemClockDidChangeNotification: String
typealias TimeInterval = Double
var NSTimeIntervalSince1970: Double { get }
class Date : Object, Copying, SecureCoding {
  var timeIntervalSinceReferenceDate: TimeInterval { get }
  init()
  init(timeIntervalSinceReferenceDate ti: TimeInterval)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}

extension Date : _Reflectable {
  func _getMirror() -> _MirrorType
}
extension Date {
  func timeIntervalSince(anotherDate: Date) -> TimeInterval
  var timeIntervalSinceNow: TimeInterval { get }
  var timeIntervalSince1970: TimeInterval { get }
  @available(OSX 10.6, *)
  func addingTimeInterval(ti: TimeInterval) -> Self
  func earlierDate(anotherDate: Date) -> Date
  func laterDate(anotherDate: Date) -> Date
  func compare(other: Date) -> ComparisonResult
  func isEqualTo(otherDate: Date) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  class func timeIntervalSinceReferenceDate() -> TimeInterval
}
extension Date {
  class func distantFuture() -> Date
  class func distantPast() -> Date
  convenience init(timeIntervalSinceNow secs: TimeInterval)
  convenience init(timeIntervalSince1970 secs: TimeInterval)
  convenience init(timeInterval secsToBeAdded: TimeInterval, since date: Date)
}
@available(OSX 10.10, *)
enum DateComponentsFormatterUnitsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Positional
  case Abbreviated
  case Short
  case Full
  case SpellOut
}
@available(OSX 10.10, *)
struct DateComponentsFormatterZeroFormattingBehavior : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: DateComponentsFormatterZeroFormattingBehavior { get }
  static var Default: DateComponentsFormatterZeroFormattingBehavior { get }
  static var DropLeading: DateComponentsFormatterZeroFormattingBehavior { get }
  static var DropMiddle: DateComponentsFormatterZeroFormattingBehavior { get }
  static var DropTrailing: DateComponentsFormatterZeroFormattingBehavior { get }
  static var DropAll: DateComponentsFormatterZeroFormattingBehavior { get }
  static var Pad: DateComponentsFormatterZeroFormattingBehavior { get }
}
@available(OSX 10.10, *)
class DateComponentsFormatter : Formatter {
  func stringForObjectValue(obj: AnyObject) -> String?
  func stringFrom(components: DateComponents) -> String?
  func stringFrom(startDate: Date, to endDate: Date) -> String?
  func stringFromTimeInterval(ti: TimeInterval) -> String?
  class func localizedStringFrom(components: DateComponents, unitsStyle: DateComponentsFormatterUnitsStyle) -> String?
  var unitsStyle: DateComponentsFormatterUnitsStyle
  var allowedUnits: CalendarUnit
  var zeroFormattingBehavior: DateComponentsFormatterZeroFormattingBehavior
  @NSCopying var calendar: Calendar?
  var allowsFractionalUnits: Bool
  var maximumUnitCount: Int
  var collapsesLargestUnit: Bool
  var includesApproximationPhrase: Bool
  var includesTimeRemainingPhrase: Bool
  var formattingContext: FormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
class DateFormatter : Formatter {
  @available(OSX 10.10, *)
  var formattingContext: FormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFrom(date: Date) -> String
  func dateFrom(string: String) -> Date?
  @available(OSX 10.6, *)
  class func localizedStringFrom(date: Date, dateStyle dstyle: DateFormatterStyle, time tstyle: DateFormatterStyle) -> String
  @available(OSX 10.6, *)
  class func dateFormatFromTemplate(tmplate: String, options opts: Int, locale: Locale?) -> String?
  class func defaultFormatterBehavior() -> DateFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: DateFormatterBehavior)
  @available(OSX 10.10, *)
  func setLocalizedDateFormatFromTemplate(dateFormatTemplate: String)
  var dateFormat: String!
  var dateStyle: DateFormatterStyle
  var timeStyle: DateFormatterStyle
  @NSCopying var locale: Locale!
  var generatesCalendarDates: Bool
  var formatterBehavior: DateFormatterBehavior
  @NSCopying var timeZone: TimeZone!
  @NSCopying var calendar: Calendar!
  var isLenient: Bool
  @NSCopying var twoDigitStartDate: Date?
  @NSCopying var defaultDate: Date?
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
  @NSCopying var gregorianStartDate: Date?
  @available(OSX 10.6, *)
  var doesRelativeDateFormatting: Bool
  init()
  init?(coder aDecoder: Coder)
}
enum DateFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
enum DateFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_0
  case Behavior10_4
}
extension DateFormatter {
}
@available(OSX 10.10, *)
enum DateIntervalFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
@available(OSX 10.10, *)
class DateIntervalFormatter : Formatter {
  @NSCopying var locale: Locale!
  @NSCopying var calendar: Calendar!
  @NSCopying var timeZone: TimeZone!
  var dateTemplate: String!
  var dateStyle: DateIntervalFormatterStyle
  var timeStyle: DateIntervalFormatterStyle
  func stringFrom(fromDate: Date, to toDate: Date) -> String
  init()
  init?(coder aDecoder: Coder)
}

/***************	Type definitions		***********/
enum RoundingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RoundPlain
  case RoundDown
  case RoundUp
  case RoundBankers
}
enum CalculationError : UInt {
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
struct Decimal {
  var _exponent: Int32
  var _length: UInt32
  var _isNegative: UInt32
  var _isCompact: UInt32
  var _reserved: UInt32
  var _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)
  init()
  init(_exponent: Int32, _length: UInt32, _isNegative: UInt32, _isCompact: UInt32, _reserved: UInt32, _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16))
}
func decimalIsNotANumber(dcm: UnsafePointer<Decimal>) -> Bool

/***************	Operations		***********/
func decimalCopy(destination: UnsafeMutablePointer<Decimal>, _ source: UnsafePointer<Decimal>)
func decimalCompact(number: UnsafeMutablePointer<Decimal>)
func decimalCompare(leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>) -> ComparisonResult
func decimalRound(result: UnsafeMutablePointer<Decimal>, _ number: UnsafePointer<Decimal>, _ scale: Int, _ roundingMode: RoundingMode)
func decimalNormalize(number1: UnsafeMutablePointer<Decimal>, _ number2: UnsafeMutablePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalAdd(result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalSubtract(result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalMultiply(result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalDivide(result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalPower(result: UnsafeMutablePointer<Decimal>, _ number: UnsafePointer<Decimal>, _ power: Int, _ roundingMode: RoundingMode) -> CalculationError
func decimalMultiplyByPowerOf10(result: UnsafeMutablePointer<Decimal>, _ number: UnsafePointer<Decimal>, _ power: Int16, _ roundingMode: RoundingMode) -> CalculationError
func decimalString(dcm: UnsafePointer<Decimal>, _ locale: AnyObject?) -> String

/***************	Exceptions		***********/
let decimalNumberExactnessException: String
let decimalNumberOverflowException: String
let decimalNumberUnderflowException: String
let decimalNumberDivideByZeroException: String
protocol DecimalNumberBehaviors {
  func roundingMode() -> RoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(operation: Selector, error: CalculationError, leftOperand: DecimalNumber, rightOperand: DecimalNumber?) -> DecimalNumber?
}

/***************	NSDecimalNumber: the class		***********/
class DecimalNumber : Number {
  convenience init(mantissa: UInt64, exponent: Int16, isNegative flag: Bool)
  init(decimal dcm: Decimal)
  convenience init(string numberValue: String?)
  convenience init(string numberValue: String?, locale: AnyObject?)
  func descriptionWithLocale(locale: AnyObject?) -> String
  var decimalValue: Decimal { get }
  class func zero() -> DecimalNumber
  class func one() -> DecimalNumber
  class func minimum() -> DecimalNumber
  class func maximum() -> DecimalNumber
  class func notA() -> DecimalNumber
  func adding(decimalNumber: DecimalNumber) -> DecimalNumber
  func adding(decimalNumber: DecimalNumber, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func subtracting(decimalNumber: DecimalNumber) -> DecimalNumber
  func subtracting(decimalNumber: DecimalNumber, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func multiplyingBy(decimalNumber: DecimalNumber) -> DecimalNumber
  func multiplyingBy(decimalNumber: DecimalNumber, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func dividingBy(decimalNumber: DecimalNumber) -> DecimalNumber
  func dividingBy(decimalNumber: DecimalNumber, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func raisingToPower(power: Int) -> DecimalNumber
  func raisingToPower(power: Int, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func multiplyingByPowerOf10(power: Int16) -> DecimalNumber
  func multiplyingByPowerOf10(power: Int16, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func byRoundingAccordingToBehavior(behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func compare(decimalNumber: Number) -> ComparisonResult
  class func setDefaultBehavior(behavior: DecimalNumberBehaviors)
  class func defaultBehavior() -> DecimalNumberBehaviors
  var objCType: UnsafePointer<Int8> { get }
  var doubleValue: Double { get }
  init?(coder aDecoder: Coder)
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
class DecimalNumberHandler : Object, DecimalNumberBehaviors, Coding {
  class func defaultDecimalNumberHandler() -> DecimalNumberHandler
  init(roundingMode: RoundingMode, scale: Int16, raiseOnExactness exact: Bool, raiseOnOverflow overflow: Bool, raiseOnUnderflow underflow: Bool, raiseOnDivideByZero divideByZero: Bool)
  convenience init()
  func roundingMode() -> RoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(operation: Selector, error: CalculationError, leftOperand: DecimalNumber, rightOperand: DecimalNumber?) -> DecimalNumber?
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

/***********	Extensions to other classes		*******/
extension Number {
  var decimalValue: Decimal { get }
}
extension Scanner {
  func scanDecimal(dcm: UnsafeMutablePointer<Decimal>) -> Bool
}

/****************	Immutable Dictionary	****************/
class NSDictionary : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func objectFor(aKey: AnyObject) -> AnyObject?
  func keyEnumerator() -> Enumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<Copying?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSDictionary : DictionaryLiteralConvertible {
  required convenience init(dictionaryLiteral elements: (Copying, AnyObject)...)
  typealias Key = Copying
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
  func isEqualTo(otherDictionary: [Object : AnyObject]) -> Bool
  func objectEnumerator() -> Enumerator
  func objectsFor(keys: [AnyObject], notFoundMarker marker: AnyObject) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: URL, atomically: Bool) -> Bool
  func keysSortedByValueUsing(comparator: Selector) -> [AnyObject]
  @available(OSX 10.7, *)
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>, count: Int)
  @available(OSX 10.8, *)
  subscript (key: Copying) -> AnyObject? { get }
  @available(OSX 10.6, *)
  func enumerateKeysAndObjectsUsing(block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateKeysAndObjects(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func keysSortedByValueUsingComparator(cmptr: Comparator) -> [AnyObject]
  @available(OSX 10.6, *)
  func keysSortedByValue(options opts: SortOptions = [], usingComparator cmptr: Comparator) -> [AnyObject]
  @available(OSX 10.6, *)
  func keysOfEntriesPassingTest(predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
  @available(OSX 10.6, *)
  func keysOfEntries(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
}
extension NSDictionary {

  /// This method is unsafe because it could potentially cause buffer overruns. You should use -getObjects:andKeys:count:
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
extension NSDictionary {
  convenience init(object: AnyObject, forKey key: Copying)
  convenience init(dictionary otherDictionary: [Object : AnyObject])
  convenience init(dictionary otherDictionary: [Object : AnyObject], copyItems flag: Bool)
  convenience init(objects: [AnyObject], forKeys keys: [Copying])
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}

/****************	Mutable Dictionary	****************/
class MutableDictionary : NSDictionary {
  func removeObjectFor(aKey: AnyObject)
  func setObject(anObject: AnyObject, forKey aKey: Copying)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: Coder)
  convenience init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<Copying?>, count cnt: Int)
  convenience init(object: AnyObject, forKey key: Copying)
  convenience init(dictionary otherDictionary: [Object : AnyObject])
  convenience init(dictionary otherDictionary: [Object : AnyObject], copyItems flag: Bool)
  convenience init(objects: [AnyObject], forKeys keys: [Copying])
}
extension MutableDictionary {
  func addEntriesFrom(otherDictionary: [Object : AnyObject])
  func removeAllObjects()
  func removeObjectsFor(keyArray: [AnyObject])
  func setDictionary(otherDictionary: [Object : AnyObject])
  @available(OSX 10.8, *)
  subscript (key: Copying) -> AnyObject?
}
extension MutableDictionary {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
extension NSDictionary {
  @available(OSX 10.8, *)
  class func sharedKeySetForKeys(keys: [Copying]) -> AnyObject
}
extension MutableDictionary {
  @available(OSX 10.8, *)
  /*not inherited*/ init(sharedKeySet keyset: AnyObject)
}
class DistributedLock : Object {
  init?(path: String)
  func tryLock() -> Bool
  func unlock()
  func breakLock()
  @NSCopying var lockDate: Date { get }
}
let localNotificationCenterType: String
enum NotificationSuspensionBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Drop
  case Coalesce
  case Hold
  case DeliverImmediately
}
struct DistributedNotificationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DeliverImmediately: DistributedNotificationOptions { get }
  static var PostToAllSessions: DistributedNotificationOptions { get }
}
let notificationDeliverImmediately: DistributedNotificationOptions
let notificationPostToAllSessions: DistributedNotificationOptions
class DistributedNotificationCenter : NotificationCenter {
  class func forType(notificationCenterType: String) -> DistributedNotificationCenter
  class func defaultCenter() -> DistributedNotificationCenter
  func addObserver(observer: AnyObject, selector: Selector, name: String?, object: String?, suspensionBehavior: NotificationSuspensionBehavior)
  func postNotificationName(name: String, object: String?, userInfo: [Object : AnyObject]? = [:], deliverImmediately: Bool)
  func postNotificationName(name: String, object: String?, userInfo: [Object : AnyObject]? = [:], options: DistributedNotificationOptions = [])
  var suspended: Bool
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: String?)
  func postNotificationName(aName: String, object anObject: String?)
  func postNotificationName(aName: String, object anObject: String?, userInfo aUserInfo: [Object : AnyObject]? = [:])
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: String?)
  init()
}
@available(OSX 10.10, *)
enum EnergyFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Joule
  case Kilojoule
  case Calorie
  case Kilocalorie
}
@available(OSX 10.10, *)
class EnergyFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: FormattingUnitStyle
  var isForFoodEnergyUse: Bool
  func stringFromValue(value: Double, unit: EnergyFormatterUnit) -> String
  func stringFromJoules(numberInJoules: Double) -> String
  func unitStringFromValue(value: Double, unit: EnergyFormatterUnit) -> String
  func unitStringFromJoules(numberInJoules: Double, usedUnit unitp: UnsafeMutablePointer<EnergyFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
struct FastEnumerationState {
  var state: UInt
  var itemsPtr: AutoreleasingUnsafeMutablePointer<AnyObject?>
  var mutationsPtr: UnsafeMutablePointer<UInt>
  var extra: (UInt, UInt, UInt, UInt, UInt)
  init()
  init(state: UInt, itemsPtr: AutoreleasingUnsafeMutablePointer<AnyObject?>, mutationsPtr: UnsafeMutablePointer<UInt>, extra: (UInt, UInt, UInt, UInt, UInt))
}
protocol FastEnumeration {
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class Enumerator : Object, FastEnumeration {
  func nextObject() -> AnyObject?
  init()
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension Enumerator : SequenceType {
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}
extension Enumerator {
  var allObjects: [AnyObject] { get }
}
let cocoaErrorDomain: String
let POSIXErrorDomain: String
let OSStatusErrorDomain: String
let machErrorDomain: String
let underlyingErrorKey: String
let localizedDescriptionKey: String
let localizedFailureReasonErrorKey: String
let localizedRecoverySuggestionErrorKey: String
let localizedRecoveryOptionsErrorKey: String
let recoveryAttempterErrorKey: String
let helpAnchorErrorKey: String
let stringEncodingErrorKey: String
let URLErrorKey: String
let filePathErrorKey: String
class Error : Object, Copying, SecureCoding {
  init(domain: String, code: Int, userInfo dict: [Object : AnyObject]? = [:])
  var domain: String { get }
  var code: Int { get }
  var userInfo: [Object : AnyObject] { get }
  var localizedDescription: String { get }
  var localizedFailureReason: String? { get }
  var localizedRecoverySuggestion: String? { get }
  var localizedRecoveryOptions: [String]? { get }
  var recoveryAttempter: AnyObject? { get }
  var helpAnchor: String? { get }
  @available(OSX 10.11, *)
  class func setUserInfoValueProviderForDomain(errorDomain: String, provider: ((Error, String) -> AnyObject?)? = nil)
  @available(OSX 10.11, *)
  class func userInfoValueProviderForDomain(errorDomain: String) -> ((Error, String) -> AnyObject?)?
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension Error : ErrorType {
  var _domain: String { get }
  var _code: Int { get }
}
extension Object {
  class func attemptRecoveryFromError(error: Error, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecoverSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func attemptRecoveryFromError(error: Error, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecoverSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  class func attemptRecoveryFromError(error: Error, optionIndex recoveryOptionIndex: Int) -> Bool
  func attemptRecoveryFromError(error: Error, optionIndex recoveryOptionIndex: Int) -> Bool
}

/***************	Generic Exception names		***************/
let genericException: String
let rangeException: String
let invalidArgumentException: String
let internalInconsistencyException: String
let mallocException: String
let objectInaccessibleException: String
let objectNotAvailableException: String
let destinationInvalidException: String
let portTimeoutException: String
let invalidSendPortException: String
let invalidReceivePortException: String
let portSendException: String
let portReceiveException: String
let oldStyleException: String
class Exception : Object, Copying, Coding {
  init(name aName: String, reason aReason: String?, userInfo aUserInfo: [Object : AnyObject]? = [:])
  var name: String { get }
  var reason: String? { get }
  var userInfo: [Object : AnyObject]? { get }
  @available(OSX 10.5, *)
  var callStackReturnAddresses: [Number] { get }
  @available(OSX 10.6, *)
  var callStackSymbols: [String] { get }
  func raise()
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension Exception {
  class func raise(name: String, format: String, arguments argList: CVaListPointer)
}
typealias UncaughtExceptionHandler = (Exception) -> Void
func getUncaughtExceptionHandler() -> (@convention(c) (Exception) -> Void)?
func setUncaughtExceptionHandler(_: (@convention(c) (Exception) -> Void)?)
@available(OSX 10.6, *)
let assertionHandlerKey: String
class AssertionHandler : Object {
  class func current() -> AssertionHandler
  init()
}
enum ExpressionType : UInt {
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
class Expression : Object, SecureCoding, Copying {
  @available(OSX 10.6, *)
  /*not inherited*/ init(format expressionFormat: String, argumentArray arguments: [AnyObject])
  @available(OSX 10.6, *)
  /*not inherited*/ init(format expressionFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(forConstantValue obj: AnyObject?)
  class func forEvaluatedObject() -> Expression
  /*not inherited*/ init(forVariable string: String)
  /*not inherited*/ init(forKeyPath keyPath: String)
  /*not inherited*/ init(forFunction name: String, arguments parameters: [AnyObject])
  @available(OSX 10.5, *)
  /*not inherited*/ init(forAggregate subexpressions: [AnyObject])
  @available(OSX 10.5, *)
  /*not inherited*/ init(forUnionSet left: Expression, with right: Expression)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forIntersectSet left: Expression, with right: Expression)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forMinusSet left: Expression, with right: Expression)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forSubquery expression: Expression, usingIteratorVariable variable: String, predicate: AnyObject)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forFunction target: Expression, selectorName name: String, arguments parameters: [AnyObject]?)
  @available(OSX 10.9, *)
  class func forAnyKey() -> Expression
  @available(OSX 10.6, *)
  /*not inherited*/ init(forBlock block: (AnyObject?, [AnyObject], MutableDictionary?) -> AnyObject, arguments: [Expression]?)
  @available(OSX 10.11, *)
  /*not inherited*/ init(forConditional predicate: Predicate, trueExpression: Expression, falseExpression: Expression)
  init(expressionType type: ExpressionType)
  init?(coder: Coder)
  var expressionType: ExpressionType { get }
  var constantValue: AnyObject { get }
  var keyPath: String { get }
  var function: String { get }
  var variable: String { get }
  @NSCopying var operand: Expression { get }
  var arguments: [Expression]? { get }
  @available(OSX 10.5, *)
  var collection: AnyObject { get }
  @available(OSX 10.5, *)
  @NSCopying var predicate: Predicate { get }
  @available(OSX 10.5, *)
  @NSCopying var left: Expression { get }
  @available(OSX 10.5, *)
  @NSCopying var right: Expression { get }
  @available(OSX 10.11, *)
  @NSCopying var trueExpression: Expression { get }
  @available(OSX 10.11, *)
  @NSCopying var falseExpression: Expression { get }
  @available(OSX 10.6, *)
  var expressionBlock: (AnyObject?, [AnyObject], MutableDictionary?) -> AnyObject { get }
  func expressionValueWith(object: AnyObject?, context: MutableDictionary?) -> AnyObject
  @available(OSX 10.9, *)
  func allowEvaluation()
  convenience init()
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWith(aCoder: Coder)
  @available(OSX 10.4, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}

extension Expression {
  convenience init(format expressionFormat: String, _ args: CVarArgType...)
}
struct _expressionFlags {
  var _evaluationBlocked: UInt32
  var _reservedExpressionFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedExpressionFlags: UInt32)
}
@available(OSX 10.10, *)
class ExtensionContext : Object {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)? = nil)
  func cancelRequestWithError(error: Error)
  func open(URL: URL, completionHandler: ((Bool) -> Void)? = nil)
  init()
}
@available(OSX 10.10, *)
let extensionItemsAndErrorsKey: String
@available(OSX 10.10, *)
class ExtensionItem : Object, Copying, SecureCoding {
  @NSCopying var attributedTitle: AttributedString?
  @NSCopying var attributedContentText: AttributedString?
  var attachments: [AnyObject]?
  var userInfo: [Object : AnyObject]?
  init()
  @available(OSX 10.10, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.10, *)
let extensionItemAttributedTitleKey: String
@available(OSX 10.10, *)
let extensionItemAttributedContentTextKey: String
@available(OSX 10.10, *)
let extensionItemAttachmentsKey: String
protocol ExtensionRequestHandling : ObjectProtocol {
  @available(OSX 10.10, *)
  func beginRequestWith(context: ExtensionContext)
}
struct FileCoordinatorReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutChanges: FileCoordinatorReadingOptions { get }
  static var ResolvesSymbolicLink: FileCoordinatorReadingOptions { get }
  @available(OSX 10.10, *)
  static var ImmediatelyAvailableMetadataOnly: FileCoordinatorReadingOptions { get }
  @available(OSX 10.10, *)
  static var ForUploading: FileCoordinatorReadingOptions { get }
}
struct FileCoordinatorWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ForDeleting: FileCoordinatorWritingOptions { get }
  static var ForMoving: FileCoordinatorWritingOptions { get }
  static var ForMerging: FileCoordinatorWritingOptions { get }
  static var ForReplacing: FileCoordinatorWritingOptions { get }
  @available(OSX 10.10, *)
  static var ContentIndependentMetadataOnly: FileCoordinatorWritingOptions { get }
}
@available(OSX 10.10, *)
class FileAccessIntent : Object {
  class func readingIntentWith(url: URL, options: FileCoordinatorReadingOptions = []) -> Self
  class func writingIntentWith(url: URL, options: FileCoordinatorWritingOptions = []) -> Self
  @NSCopying var url: URL { get }
  init()
}
@available(OSX 10.7, *)
class FileCoordinator : Object {
  class func addFilePresenter(filePresenter: FilePresenter)
  class func removeFilePresenter(filePresenter: FilePresenter)
  class func filePresenters() -> [FilePresenter]
  init(filePresenter filePresenterOrNil: FilePresenter?)
  @available(OSX 10.7, *)
  var purposeIdentifier: String
  @available(OSX 10.10, *)
  func coordinateAccessWith(intents: [FileAccessIntent], queue: OperationQueue, byAccessor accessor: (Error?) -> Void)
  func coordinateReadingItemAt(url: URL, options: FileCoordinatorReadingOptions = [], error outError: ErrorPointer, byAccessor reader: (URL) -> Void)
  func coordinateWritingItemAt(url: URL, options: FileCoordinatorWritingOptions = [], error outError: ErrorPointer, byAccessor writer: (URL) -> Void)
  func coordinateReadingItemAt(readingURL: URL, options readingOptions: FileCoordinatorReadingOptions = [], writingItemAt writingURL: URL, options writingOptions: FileCoordinatorWritingOptions = [], error outError: ErrorPointer, byAccessor readerWriter: (URL, URL) -> Void)
  func coordinateWritingItemAt(url1: URL, options options1: FileCoordinatorWritingOptions = [], writingItemAt url2: URL, options options2: FileCoordinatorWritingOptions = [], error outError: ErrorPointer, byAccessor writer: (URL, URL) -> Void)
  func prepareForReadingItemsAtURLs(readingURLs: [URL], options readingOptions: FileCoordinatorReadingOptions = [], writingItemsAtURLs writingURLs: [URL], options writingOptions: FileCoordinatorWritingOptions = [], error outError: ErrorPointer, byAccessor batchAccessor: (() -> Void) -> Void)
  @available(OSX 10.8, *)
  func itemAt(oldURL: URL, willMoveTo newURL: URL)
  func itemAt(oldURL: URL, didMoveTo newURL: URL)
  func cancel()
  convenience init()
}
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
var NSFoundationVersionWithFileManagerResourceForkSupport: Int32 { get }
@available(OSX 10.6, *)
struct VolumeEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipHiddenVolumes: VolumeEnumerationOptions { get }
  static var ProduceFileReferenceURLs: VolumeEnumerationOptions { get }
}
@available(OSX 10.6, *)
struct DirectoryEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipsSubdirectoryDescendants: DirectoryEnumerationOptions { get }
  static var SkipsPackageDescendants: DirectoryEnumerationOptions { get }
  static var SkipsHiddenFiles: DirectoryEnumerationOptions { get }
}
@available(OSX 10.6, *)
struct FileManagerItemReplacementOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UsingNewMetadataOnly: FileManagerItemReplacementOptions { get }
  static var WithoutDeletingBackupItem: FileManagerItemReplacementOptions { get }
}
@available(OSX 10.10, *)
enum URLRelationship : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contains
  case Same
  case Other
}
@available(OSX 10.11, *)
struct FileManagerUnmountOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AllPartitionsAndEjectDisk: FileManagerUnmountOptions { get }
  static var WithoutUI: FileManagerUnmountOptions { get }
}
@available(OSX 10.11, *)
let fileManagerUnmountDissentingProcessIdentifierErrorKey: String
@available(OSX 10.8, *)
let ubiquityIdentityDidChangeNotification: String
class FileManager : Object {
  class func defaultManager() -> FileManager
  @available(OSX 10.6, *)
  func mountedVolumeURLsIncludingResourceValuesForKeys(propertyKeys: [String]?, options: VolumeEnumerationOptions = []) -> [URL]?
  @available(OSX 10.11, *)
  func unmountVolumeAt(url: URL, options mask: FileManagerUnmountOptions = [], completionHandler: (Error?) -> Void)
  @available(OSX 10.6, *)
  func contentsOfDirectoryAt(url: URL, includingPropertiesForKeys keys: [String]?, options mask: DirectoryEnumerationOptions = []) throws -> [URL]
  @available(OSX 10.6, *)
  func urLsFor(directory: SearchPathDirectory, inDomains domainMask: SearchPathDomainMask) -> [URL]
  @available(OSX 10.6, *)
  func urlFor(directory: SearchPathDirectory, inDomain domain: SearchPathDomainMask, appropriateFor url: URL?, create shouldCreate: Bool) throws -> URL
  @available(OSX 10.10, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<URLRelationship>, ofDirectoryAt directoryURL: URL, toItemAt otherURL: URL) throws
  @available(OSX 10.10, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<URLRelationship>, of directory: SearchPathDirectory, inDomain domainMask: SearchPathDomainMask, toItemAt url: URL) throws
  @available(OSX 10.7, *)
  func createDirectoryAt(url: URL, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  @available(OSX 10.7, *)
  func createSymbolicLinkAt(url: URL, withDestinationURL destURL: URL) throws
  @available(OSX 10.5, *)
  unowned(unsafe) var delegate: @sil_unmanaged FileManagerDelegate?
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
  func copyItemAt(srcURL: URL, to dstURL: URL) throws
  @available(OSX 10.6, *)
  func moveItemAt(srcURL: URL, to dstURL: URL) throws
  @available(OSX 10.6, *)
  func linkItemAt(srcURL: URL, to dstURL: URL) throws
  @available(OSX 10.6, *)
  func removeItemAt(URL: URL) throws
  @available(OSX 10.8, *)
  func trashItemAt(url: URL, resultingItemURL outResultingURL: AutoreleasingUnsafeMutablePointer<URL?>) throws
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
  func enumeratorAtPath(path: String) -> DirectoryEnumerator?
  @available(OSX 10.6, *)
  func enumeratorAt(url: URL, includingPropertiesForKeys keys: [String]?, options mask: DirectoryEnumerationOptions = [], errorHandler handler: ((URL, Error) -> Bool)? = nil) -> DirectoryEnumerator?
  func subpathsAtPath(path: String) -> [String]?
  func contentsAtPath(path: String) -> Data?
  func createFileAtPath(path: String, contents data: Data?, attributes attr: [String : AnyObject]? = [:]) -> Bool
  func fileSystemRepresentationWithPath(path: String) -> UnsafePointer<Int8>
  func stringWithFileSystemRepresentation(str: UnsafePointer<Int8>, length len: Int) -> String
  @available(OSX 10.6, *)
  func replaceItemAt(originalItemURL: URL, withItemAt newItemURL: URL, backupItemName: String?, options: FileManagerItemReplacementOptions = [], resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<URL?>) throws
  @available(OSX 10.7, *)
  func setUbiquitous(flag: Bool, itemAt url: URL, destinationURL: URL) throws
  @available(OSX 10.7, *)
  func isUbiquitousItemAt(url: URL) -> Bool
  @available(OSX 10.7, *)
  func startDownloadingUbiquitousItemAt(url: URL) throws
  @available(OSX 10.7, *)
  func evictUbiquitousItemAt(url: URL) throws
  @available(OSX 10.7, *)
  func urlForUbiquityContainerIdentifier(containerIdentifier: String?) -> URL?
  @available(OSX 10.7, *)
  func urlForPublishingUbiquitousItemAt(url: URL, expirationDate outDate: AutoreleasingUnsafeMutablePointer<Date?>) throws -> URL
  @available(OSX 10.8, *)
  @NSCopying var ubiquityIdentityToken: protocol<Coding, Copying, ObjectProtocol>? { get }
  @available(OSX 10.8, *)
  func containerURLForSecurityApplicationGroupIdentifier(groupIdentifier: String) -> URL?
  init()
}
extension Object {
}
protocol FileManagerDelegate : ObjectProtocol {
  optional func fileManager(fileManager: FileManager, shouldCopyItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldCopyItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, copyingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, copyingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldMoveItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldMoveItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, movingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, movingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldLinkItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldLinkItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, linkingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, linkingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldRemoveItemAtPath path: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldRemoveItemAt URL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, removingItemAtPath path: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, removingItemAt URL: URL) -> Bool
}
class DirectoryEnumerator : Enumerator {
  var fileAttributes: [String : AnyObject]? { get }
  var directoryAttributes: [String : AnyObject]? { get }
  func skipDescendents()
  @available(OSX 10.6, *)
  var level: Int { get }
  @available(OSX 10.6, *)
  func skipDescendants()
  init()
}
let fileType: String
let fileTypeDirectory: String
let fileTypeRegular: String
let fileTypeSymbolicLink: String
let fileTypeSocket: String
let fileTypeCharacterSpecial: String
let fileTypeBlockSpecial: String
let fileTypeUnknown: String
let fileSize: String
let fileModificationDate: String
let fileReferenceCount: String
let fileDeviceIdentifier: String
let fileOwnerAccountName: String
let fileGroupOwnerAccountName: String
let filePosixPermissions: String
let fileSystemNumber: String
let fileSystemFileNumber: String
let fileExtensionHidden: String
let fileHFSCreatorCode: String
let fileHFSTypeCode: String
let fileImmutable: String
let fileAppendOnly: String
let fileCreationDate: String
let fileOwnerAccountID: String
let fileGroupOwnerAccountID: String
let fileBusy: String
let fileSystemSize: String
let fileSystemFreeSize: String
let fileSystemNodes: String
let fileSystemFreeNodes: String
extension NSDictionary {
  func fileSize() -> UInt64
  func fileModificationDate() -> Date?
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
  func fileCreationDate() -> Date?
  func fileOwnerAccountID() -> Number?
  func fileGroupOwnerAccountID() -> Number?
}
protocol FilePresenter : ObjectProtocol {
  @NSCopying var presentedItemURL: URL? { get }
  @available(OSX 10.5, *)
  var presentedItemOperationQueue: OperationQueue { get }
  @available(OSX 10.8, *)
  @NSCopying optional var primaryPresentedItemURL: URL? { get }
  optional func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChangesWithCompletionHandler(completionHandler: (Error?) -> Void)
  optional func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (Error?) -> Void)
  optional func presentedItemDidMoveTo(newURL: URL)
  optional func presentedItemDidChange()
  @available(OSX 10.7, *)
  optional func presentedItemDidGainVersion(version: FileVersion)
  @available(OSX 10.7, *)
  optional func presentedItemDidLose(version: FileVersion)
  @available(OSX 10.7, *)
  optional func presentedItemDidResolveConflictVersion(version: FileVersion)
  optional func accommodatePresentedSubitemDeletionAt(url: URL, completionHandler: (Error?) -> Void)
  optional func presentedSubitemDidAppearAt(url: URL)
  optional func presentedSubitemAt(oldURL: URL, didMoveTo newURL: URL)
  optional func presentedSubitemDidChangeAt(url: URL)
  @available(OSX 10.7, *)
  optional func presentedSubitemAt(url: URL, didGainVersion version: FileVersion)
  @available(OSX 10.7, *)
  optional func presentedSubitemAt(url: URL, didLose version: FileVersion)
  @available(OSX 10.7, *)
  optional func presentedSubitemAt(url: URL, didResolveConflictVersion version: FileVersion)
}
struct FileVersionAddingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: FileVersionAddingOptions { get }
}
struct FileVersionReplacingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: FileVersionReplacingOptions { get }
}
@available(OSX 10.7, *)
class FileVersion : Object {
  class func currentVersionOfItemAt(url: URL) -> FileVersion?
  class func otherVersionsOfItemAt(url: URL) -> [FileVersion]?
  class func unresolvedConflictVersionsOfItemAt(url: URL) -> [FileVersion]?
  @available(OSX 10.10, *)
  class func getNonlocalVersionsOfItemAt(url: URL, completionHandler: ([FileVersion]?, Error?) -> Void)
  /*not inherited*/ init?(ofItemAt url: URL, forPersistentIdentifier persistentIdentifier: AnyObject)
  @available(OSX 10.7, *)
  class func addOfItemAt(url: URL, withContentsOf contentsURL: URL, options: FileVersionAddingOptions = []) throws -> FileVersion
  @available(OSX 10.7, *)
  class func temporaryDirectoryURLForNewVersionOfItemAt(url: URL) -> URL
  @NSCopying var url: URL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @NSCopying var modificationDate: Date? { get }
  var persistentIdentifier: Coding { get }
  var isConflict: Bool { get }
  var isResolved: Bool
  @available(OSX 10.7, *)
  var isDiscardable: Bool
  @available(OSX 10.10, *)
  var hasLocalContents: Bool { get }
  @available(OSX 10.10, *)
  var hasThumbnail: Bool { get }
  func replaceItemAt(url: URL, options: FileVersionReplacingOptions = []) throws -> URL
  func remove() throws
  class func removeOtherVersionsOfItemAt(url: URL) throws
  init()
}
@available(OSX 10.6, *)
struct FileWrapperReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immediate: FileWrapperReadingOptions { get }
  static var WithoutMapping: FileWrapperReadingOptions { get }
}
@available(OSX 10.6, *)
struct FileWrapperWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Atomic: FileWrapperWritingOptions { get }
  static var WithNameUpdating: FileWrapperWritingOptions { get }
}
@available(OSX 10.0, *)
class FileWrapper : Object, Coding {
  @available(OSX 10.6, *)
  init(url: URL, options: FileWrapperReadingOptions = []) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : FileWrapper])
  init(regularFileWithContents contents: Data)
  @available(OSX 10.6, *)
  init(symbolicLinkWithDestinationURL url: URL)
  init?(serializedRepresentation serializeRepresentation: Data)
  init?(coder inCoder: Coder)
  var isDirectory: Bool { get }
  var isRegularFile: Bool { get }
  var isSymbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  @available(OSX 10.6, *)
  func matchesContentsOf(url: URL) -> Bool
  @available(OSX 10.6, *)
  func readFrom(url: URL, options: FileWrapperReadingOptions = []) throws
  @available(OSX 10.6, *)
  func writeTo(url: URL, options: FileWrapperWritingOptions = [], originalContentsURL: URL?) throws
  @NSCopying var serializedRepresentation: Data? { get }
  func add(child: FileWrapper) -> String
  func addRegularFileWithContents(data: Data, preferredFilename fileName: String) -> String
  func remove(child: FileWrapper)
  var fileWrappers: [String : FileWrapper]? { get }
  func keyFor(child: FileWrapper) -> String?
  @NSCopying var regularFileContents: Data? { get }
  @available(OSX 10.6, *)
  @NSCopying var symbolicLinkDestinationURL: URL? { get }
  convenience init()
  @available(OSX 10.0, *)
  func encodeWith(aCoder: Coder)
}
extension FileWrapper {
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
enum FormattingContext : Int {
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
enum FormattingUnitStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Short
  case Medium
  case Long
}
class Formatter : Object, Copying, Coding {
  func stringForObjectValue(obj: AnyObject) -> String?
  func attributedStringForObjectValue(obj: AnyObject, withDefaultAttributes attrs: [String : AnyObject]? = [:]) -> AttributedString?
  func editingStringForObjectValue(obj: AnyObject) -> String?
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialString: String, newEditing newString: AutoreleasingUnsafeMutablePointer<NSString?>, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString?>, proposedSelectedRange proposedSelRangePtr: RangePointer, originalString origString: String, originalSelectedRange origSelRange: NSRange, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
typealias Point = CGPoint
typealias PointPointer = UnsafeMutablePointer<Point>
typealias PointArray = UnsafeMutablePointer<Point>
typealias Size = CGSize
typealias SizePointer = UnsafeMutablePointer<Size>
typealias SizeArray = UnsafeMutablePointer<Size>
typealias Rect = CGRect
typealias RectPointer = UnsafeMutablePointer<Rect>
typealias RectArray = UnsafeMutablePointer<Rect>
enum RectEdge : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MinX
  case MinY
  case MaxX
  case MaxY
}

extension RectEdge {
  init(rectEdge: CGRectEdge)
}
struct EdgeInsets {
  var top: CGFloat
  var left: CGFloat
  var bottom: CGFloat
  var right: CGFloat
  init()
  init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
}
struct AlignmentOptions : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var AlignMinXInward: AlignmentOptions { get }
  static var AlignMinYInward: AlignmentOptions { get }
  static var AlignMaxXInward: AlignmentOptions { get }
  static var AlignMaxYInward: AlignmentOptions { get }
  static var AlignWidthInward: AlignmentOptions { get }
  static var AlignHeightInward: AlignmentOptions { get }
  static var AlignMinXOutward: AlignmentOptions { get }
  static var AlignMinYOutward: AlignmentOptions { get }
  static var AlignMaxXOutward: AlignmentOptions { get }
  static var AlignMaxYOutward: AlignmentOptions { get }
  static var AlignWidthOutward: AlignmentOptions { get }
  static var AlignHeightOutward: AlignmentOptions { get }
  static var AlignMinXNearest: AlignmentOptions { get }
  static var AlignMinYNearest: AlignmentOptions { get }
  static var AlignMaxXNearest: AlignmentOptions { get }
  static var AlignMaxYNearest: AlignmentOptions { get }
  static var AlignWidthNearest: AlignmentOptions { get }
  static var AlignHeightNearest: AlignmentOptions { get }
  static var AlignRectFlipped: AlignmentOptions { get }
  static var AlignAllEdgesInward: AlignmentOptions { get }
  static var AlignAllEdgesOutward: AlignmentOptions { get }
  static var AlignAllEdgesNearest: AlignmentOptions { get }
}
let zeroPoint: Point
let zeroSize: Size
let zeroRect: Rect
@available(OSX 10.10, *)
let edgeInsetsZero: EdgeInsets
func makePoint(x: CGFloat, _ y: CGFloat) -> Point
func makeSize(w: CGFloat, _ h: CGFloat) -> Size
func makeRect(x: CGFloat, _ y: CGFloat, _ w: CGFloat, _ h: CGFloat) -> Rect
func maxX(aRect: Rect) -> CGFloat
func maxY(aRect: Rect) -> CGFloat
func midX(aRect: Rect) -> CGFloat
func midY(aRect: Rect) -> CGFloat
func minX(aRect: Rect) -> CGFloat
func minY(aRect: Rect) -> CGFloat
func width(aRect: Rect) -> CGFloat
func height(aRect: Rect) -> CGFloat
func rectFromCGRect(cgrect: CGRect) -> Rect
func rectToCGRect(nsrect: Rect) -> CGRect
func pointFromCGPoint(cgpoint: CGPoint) -> Point
func pointToCGPoint(nspoint: Point) -> CGPoint
func sizeFromCGSize(cgsize: CGSize) -> Size
func sizeToCGSize(nssize: Size) -> CGSize
func edgeInsetsMake(top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> EdgeInsets
func equalPoints(aPoint: Point, _ bPoint: Point) -> Bool
func equalSizes(aSize: Size, _ bSize: Size) -> Bool
func equalRects(aRect: Rect, _ bRect: Rect) -> Bool
func isEmptyRect(aRect: Rect) -> Bool
@available(OSX 10.10, *)
func edgeInsetsEqual(aInsets: EdgeInsets, _ bInsets: EdgeInsets) -> Bool
func insetRect(aRect: Rect, _ dX: CGFloat, _ dY: CGFloat) -> Rect
func integralRect(aRect: Rect) -> Rect
@available(OSX 10.7, *)
func integralRectWithOptions(aRect: Rect, _ opts: AlignmentOptions) -> Rect
func unionRect(aRect: Rect, _ bRect: Rect) -> Rect
func intersectionRect(aRect: Rect, _ bRect: Rect) -> Rect
func offsetRect(aRect: Rect, _ dX: CGFloat, _ dY: CGFloat) -> Rect
func divideRect(inRect: Rect, _ slice: UnsafeMutablePointer<Rect>, _ rem: UnsafeMutablePointer<Rect>, _ amount: CGFloat, _ edge: RectEdge)
func pointInRect(aPoint: Point, _ aRect: Rect) -> Bool
func mouseInRect(aPoint: Point, _ aRect: Rect, _ flipped: Bool) -> Bool
func containsRect(aRect: Rect, _ bRect: Rect) -> Bool
func intersectsRect(aRect: Rect, _ bRect: Rect) -> Bool
func stringFromPoint(aPoint: Point) -> String
func stringFromSize(aSize: Size) -> String
func stringFromRect(aRect: Rect) -> String
func pointFromString(aString: String) -> Point
func sizeFromString(aString: String) -> Size
func rectFromString(aString: String) -> Rect
extension Value {
  /*not inherited*/ init(point: Point)
  /*not inherited*/ init(size: Size)
  /*not inherited*/ init(rect: Rect)
  @available(OSX 10.10, *)
  /*not inherited*/ init(edgeInsets insets: EdgeInsets)
  var pointValue: Point { get }
  var sizeValue: Size { get }
  var rectValue: Rect { get }
  @available(OSX 10.10, *)
  var edgeInsetsValue: EdgeInsets { get }
}
extension Coder {
  func encode(point: Point)
  func decodePoint() -> Point
  func encode(size: Size)
  func decodeSize() -> Size
  func encode(rect: Rect)
  func decodeRect() -> Rect
}
extension Coder {
  func encode(point: Point, forKey key: String)
  func encode(size: Size, forKey key: String)
  func encode(rect: Rect, forKey key: String)
  func decodePointForKey(key: String) -> Point
  func decodeSizeForKey(key: String) -> Size
  func decodeRectForKey(key: String) -> Rect
}
func fileTypeForHFSTypeCode(hfsFileTypeCode: OSType) -> String!
func HFSTypeCodeFromFileType(fileTypeString: String!) -> OSType
func HFSTypeOfFile(fullFilePath: String!) -> String!

/*!
    @const NSHTTPCookieName
    @discussion Key for cookie name
*/
let HTTPCookieName: String

/*!
    @const NSHTTPCookieValue
    @discussion Key for cookie value
*/
let HTTPCookieValue: String

/*!
    @const NSHTTPCookieOriginURL
    @discussion Key for cookie origin URL
*/
let HTTPCookieOriginURL: String

/*!
    @const NSHTTPCookieVersion
    @discussion Key for cookie version
*/
let HTTPCookieVersion: String

/*!
    @const NSHTTPCookieDomain
    @discussion Key for cookie domain
*/
let HTTPCookieDomain: String

/*!
    @const NSHTTPCookiePath
    @discussion Key for cookie path
*/
let HTTPCookiePath: String

/*!
    @const NSHTTPCookieSecure
    @discussion Key for cookie secure flag
*/
let HTTPCookieSecure: String

/*!
    @const NSHTTPCookieExpires
    @discussion Key for cookie expiration date
*/
let HTTPCookieExpires: String

/*!
    @const NSHTTPCookieComment
    @discussion Key for cookie comment text
*/
let HTTPCookieComment: String

/*!
    @const NSHTTPCookieCommentURL
    @discussion Key for cookie comment URL
*/
let HTTPCookieCommentURL: String

/*!
    @const NSHTTPCookieDiscard
    @discussion Key for cookie discard (session-only) flag
*/
let HTTPCookieDiscard: String

/*!
    @const NSHTTPCookieMaximumAge
    @discussion Key for cookie maximum age (an alternate way of specifying the expiration)
*/
let HTTPCookieMaximumAge: String

/*!
    @const NSHTTPCookiePort
    @discussion Key for cookie ports
*/
let HTTPCookiePort: String

/*!
    @class NSHTTPCookie
    @abstract NSHTTPCookie represents an http cookie.
    @discussion A NSHTTPCookie instance represents a single http cookie. It is
    an immutable object initialized from a dictionary that contains
    the various cookie attributes. It has accessors to get the various
    attributes of a cookie.
*/
class HTTPCookie : Object {

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
  class func requestHeaderFieldsWith(cookies: [HTTPCookie]) -> [String : String]

  /*!
      @method cookiesWithResponseHeaderFields:forURL:
      @abstract Return an array of cookies parsed from the specified response header fields and URL.
      @param headerFields The response header fields to check for cookies.
      @param URL The URL that the cookies came from - relevant to how the cookies are interpeted.
      @result An NSArray of NSHTTPCookie objects
      @discussion This method will ignore irrelevant header fields so
      you can pass a dictionary containing data other than cookie data.
  */
  class func cookiesWithResponseHeaderFields(headerFields: [String : String], forURL URL: URL) -> [HTTPCookie]

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
  @NSCopying var expiresDate: Date? { get }

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
  @NSCopying var commentURL: URL? { get }

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
  var portList: [Number]? { get }
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
enum HTTPCookieAcceptPolicy : UInt {
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
class HTTPCookieStorage : Object {

  /*!
      @method sharedHTTPCookieStorage
      @abstract Get the shared cookie storage in the default location.
      @result The shared cookie storage
      @discussion Starting in OS X 10.11, each app has its own sharedHTTPCookieStorage singleton, 
      which will not be shared with other applications.
  */
  class func shared() -> HTTPCookieStorage

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
  class func sharedCookieStorageForGroupContainerIdentifier(identifier: String) -> HTTPCookieStorage

  /*!
      @method cookies
      @abstract Get all the cookies
      @result An NSArray of NSHTTPCookies
  */
  var cookies: [HTTPCookie]? { get }

  /*!
      @method setCookie:
      @abstract Set a cookie
      @discussion The cookie will override an existing cookie with the
      same name, domain and path, if any.
  */
  func setCookie(cookie: HTTPCookie)

  /*!
      @method deleteCookie:
      @abstract Delete the specified cookie
  */
  func deleteCookie(cookie: HTTPCookie)

  /*!
   @method removeCookiesSince:
   @abstract Delete all cookies from the cookie storage since the provided date.
   */
  @available(OSX 10.10, *)
  func removeCookiesSince(date: Date)

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
  func cookiesFor(URL: URL) -> [HTTPCookie]?

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
  func setCookies(cookies: [HTTPCookie], forURL URL: URL?, mainDocumentURL: URL?)

  /*!
      @method cookieAcceptPolicy
      @abstract The cookie accept policy preference of the
      receiver.
  */
  var cookieAcceptPolicy: HTTPCookieAcceptPolicy

  /*!
    @method sortedCookiesUsingDescriptors:
    @abstract Returns an array of all cookies in the store, sorted according to the key value and sorting direction of the NSSortDescriptors specified in the parameter.
    @param sortOrder an array of NSSortDescriptors which represent the preferred sort order of the resulting array.
    @discussion proper sorting of cookies may require extensive string conversion, which can be avoided by allowing the system to perform the sorting.  This API is to be preferred over the more generic -[NSHTTPCookieStorage cookies] API, if sorting is going to be performed.
  */
  @available(OSX 10.7, *)
  func sortedCookiesUsing(sortOrder: [SortDescriptor]) -> [HTTPCookie]
  init()
}
extension HTTPCookieStorage {
  @available(OSX 10.10, *)
  func storeCookies(cookies: [HTTPCookie], forTask task: URLSessionTask)
  @available(OSX 10.10, *)
  func getCookiesFor(task: URLSessionTask, completionHandler: ([HTTPCookie]?) -> Void)
}

/*!
    @const NSHTTPCookieManagerAcceptPolicyChangedNotification
    @discussion Name of notification that should be posted to the
    distributed notification center whenever the accept cookies
    preference is changed
*/
let HTTPCookieManagerAcceptPolicyChangedNotification: String

/*!
    @const NSHTTPCookieManagerCookiesChangedNotification
    @abstract Notification sent when the set of cookies changes
*/
let HTTPCookieManagerCookiesChangedNotification: String
var __FOUNDATION_NSHASHTABLE__: Int32 { get }
@available(OSX 10.5, *)
let hashTableStrongMemory: PointerFunctionsOptions
@available(OSX 10.5, *)
let hashTableCopyIn: PointerFunctionsOptions
@available(OSX 10.5, *)
let hashTableObjectPointerPersonality: PointerFunctionsOptions
@available(OSX 10.8, *)
let hashTableWeakMemory: PointerFunctionsOptions
typealias HashTableOptions = Int
@available(OSX 10.5, *)
class HashTable : Object, Copying, Coding, FastEnumeration {
  init(options: PointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(pointerFunctions functions: PointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(options: PointerFunctionsOptions = [])
  @available(OSX 10.8, *)
  class func weakObjects() -> HashTable
  @NSCopying var pointerFunctions: PointerFunctions { get }
  var count: Int { get }
  func member(object: AnyObject?) -> AnyObject?
  func objectEnumerator() -> Enumerator
  func add(object: AnyObject?)
  func remove(object: AnyObject?)
  func removeAllObjects()
  var allObjects: [AnyObject] { get }
  var anyObject: AnyObject? { get }
  func contains(anObject: AnyObject?) -> Bool
  func intersectsHashTable(other: HashTable) -> Bool
  func isEqualTo(other: HashTable) -> Bool
  func isSubsetOf(other: HashTable) -> Bool
  func intersectHashTable(other: HashTable)
  func unionHashTable(other: HashTable)
  func minusHashTable(other: HashTable)
  var setRepresentation: Set<Object> { get }
  convenience init()
  @available(OSX 10.5, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.5, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

/****************	(void *) Hash table operations	****************/
struct HashEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutablePointer<Void>
  init()
  init(_pi: Int, _si: Int, _bs: UnsafeMutablePointer<Void>)
}
func freeHashTable(table: HashTable)
func resetHashTable(table: HashTable)
func compareHashTables(table1: HashTable, _ table2: HashTable) -> Bool
func copyHashTableWithZone(table: HashTable, _ zone: Zone) -> HashTable
func hashGet(table: HashTable, _ pointer: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func hashInsert(table: HashTable, _ pointer: UnsafePointer<Void>)
func hashInsertKnownAbsent(table: HashTable, _ pointer: UnsafePointer<Void>)
func hashInsertIfAbsent(table: HashTable, _ pointer: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func hashRemove(table: HashTable, _ pointer: UnsafePointer<Void>)
func enumerateHashTable(table: HashTable) -> HashEnumerator
func nextHashEnumeratorItem(enumerator: UnsafeMutablePointer<HashEnumerator>) -> UnsafeMutablePointer<Void>
func endHashTableEnumeration(enumerator: UnsafeMutablePointer<HashEnumerator>)
func countHashTable(table: HashTable) -> Int
func stringFromHashTable(table: HashTable) -> String
func allHashTableObjects(table: HashTable) -> [AnyObject]

/****************	Legacy	****************/
struct HashTableCallBacks {
  var hash: (@convention(c) (HashTable, UnsafePointer<Void>) -> Int)?
  var isEqual: (@convention(c) (HashTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?
  var retain: (@convention(c) (HashTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (HashTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (HashTable, UnsafePointer<Void>) -> String?)?
  init()
  init(hash: (@convention(c) (HashTable, UnsafePointer<Void>) -> Int)?, isEqual: (@convention(c) (HashTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?, retain: (@convention(c) (HashTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (HashTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (HashTable, UnsafePointer<Void>) -> String?)?)
}
func createHashTableWithZone(callBacks: HashTableCallBacks, _ capacity: Int, _ zone: Zone) -> HashTable
func createHashTable(callBacks: HashTableCallBacks, _ capacity: Int) -> HashTable
@available(OSX 10.5, *)
let integerHashCallBacks: HashTableCallBacks
let nonOwnedPointerHashCallBacks: HashTableCallBacks
let nonRetainedObjectHashCallBacks: HashTableCallBacks
let objectHashCallBacks: HashTableCallBacks
let ownedObjectIdentityHashCallBacks: HashTableCallBacks
let ownedPointerHashCallBacks: HashTableCallBacks
let pointerToStructHashCallBacks: HashTableCallBacks
class Host : Object {
  class func current() -> Self
  convenience init(name: String?)
  convenience init(address: String)
  func isEqualTo(aHost: Host) -> Bool
  var name: String? { get }
  var names: [String] { get }
  var address: String? { get }
  var addresses: [String] { get }
  @available(OSX 10.6, *)
  var localizedName: String? { get }
  init()
}
class IndexPath : Object, Copying, SecureCoding {
  init(indexes: UnsafePointer<Int>, length: Int)
  convenience init(index: Int)
  func adding(index: Int) -> IndexPath
  func removingLastIndex() -> IndexPath
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
  func compare(otherObject: IndexPath) -> ComparisonResult
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension IndexPath {

  /// This method is unsafe because it could potentially cause buffer overruns. You should use -getIndexes:range: instead. 
  func getIndexes(indexes: UnsafeMutablePointer<Int>)
}
class IndexSet : Object, Copying, MutableCopying, SecureCoding {
  init(indexesIn range: NSRange)
  init(indexSet: IndexSet)
  convenience init(index value: Int)
  func isEqualTo(indexSet: IndexSet) -> Bool
  var count: Int { get }
  var firstIndex: Int { get }
  var lastIndex: Int { get }
  func indexGreaterThanIndex(value: Int) -> Int
  func indexLessThanIndex(value: Int) -> Int
  func indexGreaterThanOrEqualTo(value: Int) -> Int
  func indexLessThanOrEqualTo(value: Int) -> Int
  func getIndexes(indexBuffer: UnsafeMutablePointer<Int>, maxCount bufferSize: Int, inIndexRange range: RangePointer) -> Int
  @available(OSX 10.5, *)
  func countOfIndexesIn(range: NSRange) -> Int
  func contains(value: Int) -> Bool
  func containsIn(range: NSRange) -> Bool
  func contains(indexSet: IndexSet) -> Bool
  func intersectsIndexesIn(range: NSRange) -> Bool
  @available(OSX 10.6, *)
  func enumerateUsing(block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerate(options opts: EnumerationOptions = [], usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateIn(range: NSRange, options opts: EnumerationOptions = [], usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func indexPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func index(options opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func indexIn(range: NSRange, options opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func indexesPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(OSX 10.6, *)
  func indexes(options opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(OSX 10.6, *)
  func indexesIn(range: NSRange, options opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(OSX 10.7, *)
  func enumerateRangesUsing(block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.7, *)
  func enumerateRanges(options opts: EnumerationOptions = [], usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.7, *)
  func enumerateRangesIn(range: NSRange, options opts: EnumerationOptions = [], usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension IndexSet : SequenceType {
  func generate() -> NSIndexSetGenerator
  typealias Generator = NSIndexSetGenerator
  typealias SubSequence = AnySequence<Element>
}
class MutableIndexSet : IndexSet {
  func add(indexSet: IndexSet)
  func remove(indexSet: IndexSet)
  func removeAllIndexes()
  func add(value: Int)
  func remove(value: Int)
  func addIn(range: NSRange)
  func removeIn(range: NSRange)
  func shiftIndexesStartingAt(index: Int, by delta: Int)
  init(indexesIn range: NSRange)
  init(indexSet: IndexSet)
  convenience init(index value: Int)
  convenience init()
  init?(coder aDecoder: Coder)
}
typealias ItemProviderCompletionHandler = (SecureCoding?, Error!) -> Void
typealias ItemProviderLoadHandler = (ItemProviderCompletionHandler!, AnyClass!, [Object : AnyObject]!) -> Void
@available(OSX 10.10, *)
class ItemProvider : Object, Copying {
  init(item: SecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOf fileURL: URL!)
  func registerItemForTypeIdentifier(typeIdentifier: String, loadHandler: ItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConformingToTypeIdentifier(typeIdentifier: String) -> Bool
  func loadItemForTypeIdentifier(typeIdentifier: String, options: [Object : AnyObject]? = [:], completionHandler: ItemProviderCompletionHandler? = nil)
  convenience init()
  @available(OSX 10.10, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.10, *)
let itemProviderPreferredImageSizeKey: String
extension ItemProvider {
  @available(OSX 10.10, *)
  var previewImageHandler: ItemProviderLoadHandler?
  @available(OSX 10.10, *)
  func loadPreviewImage(options options: [Object : AnyObject]! = [:], completionHandler: ItemProviderCompletionHandler!)
}
@available(OSX 10.10, *)
let extensionJavaScriptPreprocessingResultsKey: String
@available(OSX 10.10, *)
let itemProviderErrorDomain: String
@available(OSX 10.10, *)
enum ItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case ItemUnavailableError
  case UnexpectedValueClassError
  @available(OSX 10.11, *)
  case UnavailableCoercionError
}
@available(OSX 10.7, *)
struct JSONReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MutableContainers: JSONReadingOptions { get }
  static var MutableLeaves: JSONReadingOptions { get }
  static var AllowFragments: JSONReadingOptions { get }
}
@available(OSX 10.7, *)
struct JSONWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PrettyPrinted: JSONWritingOptions { get }
}
@available(OSX 10.7, *)
class JSONSerialization : Object {
  class func isValidJSONObject(obj: AnyObject) -> Bool
  class func dataWithJSONObject(obj: AnyObject, options opt: JSONWritingOptions = []) throws -> Data
  class func jsonObjectWith(data: Data, options opt: JSONReadingOptions = []) throws -> AnyObject
  class func writeJSONObject(obj: AnyObject, to stream: OutputStream, options opt: JSONWritingOptions = [], error: ErrorPointer) -> Int
  class func jsonObjectWith(stream: InputStream, options opt: JSONReadingOptions = []) throws -> AnyObject
  init()
}
let undefinedKeyException: String
let averageKeyValueOperator: String
let countKeyValueOperator: String
let distinctUnionOfArraysKeyValueOperator: String
let distinctUnionOfObjectsKeyValueOperator: String
let distinctUnionOfSetsKeyValueOperator: String
let maximumKeyValueOperator: String
let minimumKeyValueOperator: String
let sumKeyValueOperator: String
let unionOfArraysKeyValueOperator: String
let unionOfObjectsKeyValueOperator: String
let unionOfSetsKeyValueOperator: String
extension Object {
  class func accessInstanceVariablesDirectly() -> Bool
  class func valueForKey(key: String) -> AnyObject?
  func valueForKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKey key: String)
  func setValue(value: AnyObject?, forKey key: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  class func mutableArrayValueForKey(key: String) -> MutableArray
  func mutableArrayValueForKey(key: String) -> MutableArray
  @available(OSX 10.7, *)
  class func mutableOrderedSetValueForKey(key: String) -> MutableOrderedSet
  @available(OSX 10.7, *)
  func mutableOrderedSetValueForKey(key: String) -> MutableOrderedSet
  class func mutableSetValueForKey(key: String) -> MutableSet
  func mutableSetValueForKey(key: String) -> MutableSet
  class func valueForKeyPath(keyPath: String) -> AnyObject?
  func valueForKeyPath(keyPath: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKeyPath keyPath: String)
  func setValue(value: AnyObject?, forKeyPath keyPath: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  class func mutableArrayValueForKeyPath(keyPath: String) -> MutableArray
  func mutableArrayValueForKeyPath(keyPath: String) -> MutableArray
  @available(OSX 10.7, *)
  class func mutableOrderedSetValueForKeyPath(keyPath: String) -> MutableOrderedSet
  @available(OSX 10.7, *)
  func mutableOrderedSetValueForKeyPath(keyPath: String) -> MutableOrderedSet
  class func mutableSetValueForKeyPath(keyPath: String) -> MutableSet
  func mutableSetValueForKeyPath(keyPath: String) -> MutableSet
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
extension MutableDictionary {
  func setValue(value: AnyObject?, forKey key: String)
}
extension OrderedSet {
  @available(OSX 10.7, *)
  func valueForKey(key: String) -> AnyObject
  @available(OSX 10.7, *)
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSSet {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension Object {
}
struct KeyValueObservingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var New: KeyValueObservingOptions { get }
  static var Old: KeyValueObservingOptions { get }
  @available(OSX 10.5, *)
  static var Initial: KeyValueObservingOptions { get }
  @available(OSX 10.5, *)
  static var Prior: KeyValueObservingOptions { get }
}
enum KeyValueChange : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Setting
  case Insertion
  case Removal
  case Replacement
}
enum KeyValueSetMutationKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UnionSetMutation
  case MinusSetMutation
  case IntersectSetMutation
  case SetSetMutation
}
let keyValueChangeKindKey: String
let keyValueChangeNewKey: String
let keyValueChangeOldKey: String
let keyValueChangeIndexesKey: String
@available(OSX 10.5, *)
let keyValueChangeNotificationIsPriorKey: String
extension Object {
  class func observeValueForKeyPath(keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
  func observeValueForKeyPath(keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
}
extension Object {
  class func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  class func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  class func removeObserver(observer: Object, forKeyPath keyPath: String)
  func removeObserver(observer: Object, forKeyPath keyPath: String)
}
extension NSArray {
  func addObserver(observer: Object, toObjectsAt indexes: IndexSet, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func removeObserver(observer: Object, fromObjectsAt indexes: IndexSet, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, fromObjectsAt indexes: IndexSet, forKeyPath keyPath: String)
  func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String)
}
extension OrderedSet {
  func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String)
}
extension NSSet {
  func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String)
}
extension Object {
  class func willChangeValueForKey(key: String)
  func willChangeValueForKey(key: String)
  class func didChangeValueForKey(key: String)
  func didChangeValueForKey(key: String)
  class func willChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  func willChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  class func didChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  func didChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  class func willChangeValueForKey(key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
  func willChangeValueForKey(key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
  class func didChangeValueForKey(key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
  func didChangeValueForKey(key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
}
extension Object {
  @available(OSX 10.5, *)
  class func keyPathsForValuesAffectingValueForKey(key: String) -> Set<String>
  class func automaticallyNotifiesObserversForKey(key: String) -> Bool
  var observationInfo: UnsafeMutablePointer<Void>
  class func observationInfo() -> UnsafeMutablePointer<Void>
  class func setObservationInfo(observationInfo: UnsafeMutablePointer<Void>)
}
extension Object {
}
let invalidArchiveOperationException: String
let invalidUnarchiveOperationException: String
@available(OSX 10.9, *)
let keyedArchiveRootObjectKey: String
class KeyedArchiver : Coder {
  class func archivedDataWithRootObject(rootObject: AnyObject) -> Data
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  init(forWritingWith data: MutableData)
  unowned(unsafe) var delegate: @sil_unmanaged KeyedArchiverDelegate?
  var outputFormat: PropertyListFormat
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
class KeyedUnarchiver : Coder {
  class func unarchiveObjectWith(data: Data) -> AnyObject?
  class func unarchiveObjectWithFile(path: String) -> AnyObject?
  init(forReadingWith data: Data)
  unowned(unsafe) var delegate: @sil_unmanaged KeyedUnarchiverDelegate?
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

extension KeyedUnarchiver {
  @warn_unused_result
  class func unarchiveTopLevelObjectWithData(data: Data) throws -> AnyObject?
}
protocol KeyedArchiverDelegate : ObjectProtocol {
  optional func archiver(archiver: KeyedArchiver, willEncode object: AnyObject) -> AnyObject?
  optional func archiver(archiver: KeyedArchiver, didEncode object: AnyObject?)
  optional func archiver(archiver: KeyedArchiver, willReplace object: AnyObject?, withObject newObject: AnyObject?)
  optional func archiverWillFinish(archiver: KeyedArchiver)
  optional func archiverDidFinish(archiver: KeyedArchiver)
}
protocol KeyedUnarchiverDelegate : ObjectProtocol {
  optional func unarchiver(unarchiver: KeyedUnarchiver, cannotDecodeObjectOfClassName name: String, originalClasses classNames: [String]) -> AnyClass?
  optional func unarchiver(unarchiver: KeyedUnarchiver, didDecode object: AnyObject?) -> AnyObject?
  optional func unarchiver(unarchiver: KeyedUnarchiver, willReplace object: AnyObject, withObject newObject: AnyObject)
  optional func unarchiverWillFinish(unarchiver: KeyedUnarchiver)
  optional func unarchiverDidFinish(unarchiver: KeyedUnarchiver)
}
extension Object {
  var classForKeyedArchiver: AnyClass? { get }
  class func replacementObjectFor(archiver: KeyedArchiver) -> AnyObject?
  func replacementObjectFor(archiver: KeyedArchiver) -> AnyObject?
  class func classFallbacksForKeyedArchiver() -> [String]
  class func classForKeyedArchiver() -> AnyClass?
}
extension Object {
  class func classForKeyedUnarchiver() -> AnyClass
}
@available(OSX 10.10, *)
enum LengthFormatterUnit : Int {
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
class LengthFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: FormattingUnitStyle
  var isForPersonHeightUse: Bool
  func stringFromValue(value: Double, unit: LengthFormatterUnit) -> String
  func stringFromMeters(numberInMeters: Double) -> String
  func unitStringFromValue(value: Double, unit: LengthFormatterUnit) -> String
  func unitStringFromMeters(numberInMeters: Double, usedUnit unitp: UnsafeMutablePointer<LengthFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.7, *)
let linguisticTagSchemeTokenType: String
@available(OSX 10.7, *)
let linguisticTagSchemeLexicalClass: String
@available(OSX 10.7, *)
let linguisticTagSchemeNameType: String
@available(OSX 10.7, *)
let linguisticTagSchemeNameTypeOrLexicalClass: String
@available(OSX 10.7, *)
let linguisticTagSchemeLemma: String
@available(OSX 10.7, *)
let linguisticTagSchemeLanguage: String
@available(OSX 10.7, *)
let linguisticTagSchemeScript: String
@available(OSX 10.7, *)
let linguisticTagWord: String
@available(OSX 10.7, *)
let linguisticTagPunctuation: String
@available(OSX 10.7, *)
let linguisticTagWhitespace: String
@available(OSX 10.7, *)
let linguisticTagOther: String
@available(OSX 10.7, *)
let linguisticTagNoun: String
@available(OSX 10.7, *)
let linguisticTagVerb: String
@available(OSX 10.7, *)
let linguisticTagAdjective: String
@available(OSX 10.7, *)
let linguisticTagAdverb: String
@available(OSX 10.7, *)
let linguisticTagPronoun: String
@available(OSX 10.7, *)
let linguisticTagDeterminer: String
@available(OSX 10.7, *)
let linguisticTagParticle: String
@available(OSX 10.7, *)
let linguisticTagPreposition: String
@available(OSX 10.7, *)
let linguisticTagNumber: String
@available(OSX 10.7, *)
let linguisticTagConjunction: String
@available(OSX 10.7, *)
let linguisticTagInterjection: String
@available(OSX 10.7, *)
let linguisticTagClassifier: String
@available(OSX 10.7, *)
let linguisticTagIdiom: String
@available(OSX 10.7, *)
let linguisticTagOtherWord: String
@available(OSX 10.7, *)
let linguisticTagSentenceTerminator: String
@available(OSX 10.7, *)
let linguisticTagOpenQuote: String
@available(OSX 10.7, *)
let linguisticTagCloseQuote: String
@available(OSX 10.7, *)
let linguisticTagOpenParenthesis: String
@available(OSX 10.7, *)
let linguisticTagCloseParenthesis: String
@available(OSX 10.7, *)
let linguisticTagWordJoiner: String
@available(OSX 10.7, *)
let linguisticTagDash: String
@available(OSX 10.7, *)
let linguisticTagOtherPunctuation: String
@available(OSX 10.7, *)
let linguisticTagParagraphBreak: String
@available(OSX 10.7, *)
let linguisticTagOtherWhitespace: String
@available(OSX 10.7, *)
let linguisticTagPersonalName: String
@available(OSX 10.7, *)
let linguisticTagPlaceName: String
@available(OSX 10.7, *)
let linguisticTagOrganizationName: String
struct LinguisticTaggerOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var OmitWords: LinguisticTaggerOptions { get }
  static var OmitPunctuation: LinguisticTaggerOptions { get }
  static var OmitWhitespace: LinguisticTaggerOptions { get }
  static var OmitOther: LinguisticTaggerOptions { get }
  static var JoinNames: LinguisticTaggerOptions { get }
}
@available(OSX 10.7, *)
class LinguisticTagger : Object {
  @available(OSX 10.7, *)
  init(tagSchemes: [String], options opts: Int)
  @available(OSX 10.7, *)
  var tagSchemes: [String] { get }
  @available(OSX 10.7, *)
  var string: String?
  @available(OSX 10.7, *)
  class func availableTagSchemesForLanguage(language: String) -> [String]
  @available(OSX 10.7, *)
  func setOrthography(orthography: Orthography?, range: NSRange)
  @available(OSX 10.7, *)
  func orthographyAt(charIndex: Int, effectiveRange: RangePointer) -> Orthography?
  @available(OSX 10.7, *)
  func stringEditedIn(newRange: NSRange, changeInLength delta: Int)
  @available(OSX 10.7, *)
  func enumerateTagsIn(range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.7, *)
  func sentenceRangeFor(range: NSRange) -> NSRange
  @available(OSX 10.7, *)
  func tagAt(charIndex: Int, scheme tagScheme: String, tokenRange: RangePointer, sentenceRange: RangePointer) -> String?
  @available(OSX 10.7, *)
  func tagsIn(range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(OSX 10.7, *)
  func possibleTagsAt(charIndex: Int, scheme tagScheme: String, tokenRange: RangePointer, sentenceRange: RangePointer, scores: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]?
  convenience init()
}
extension NSString {
  @available(OSX 10.7, *)
  func linguisticTagsIn(range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], orthography: Orthography?, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(OSX 10.7, *)
  func enumerateLinguisticTagsIn(range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], orthography: Orthography?, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
class Locale : Object, Copying, SecureCoding {
  func objectForKey(key: AnyObject) -> AnyObject?
  func displayNameForKey(key: AnyObject, value: AnyObject) -> String?
  init(localeIdentifier string: String)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
extension Locale {
  var localeIdentifier: String { get }
}
extension Locale {
  @available(OSX 10.5, *)
  class func autoupdatingCurrent() -> Locale
  class func current() -> Locale
  class func system() -> Locale
}
extension Locale {
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
  class func characterDirectionForLanguage(isoLangCode: String) -> LocaleLanguageDirection
  @available(OSX 10.6, *)
  class func lineDirectionForLanguage(isoLangCode: String) -> LocaleLanguageDirection
}
enum LocaleLanguageDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case LeftToRight
  case RightToLeft
  case TopToBottom
  case BottomToTop
}
@available(OSX 10.5, *)
let currentLocaleDidChangeNotification: String
let localeIdentifier: String
let localeLanguageCode: String
let localeCountryCode: String
let localeScriptCode: String
let localeVariantCode: String
let localeExemplarCharacterSet: String
let localeCalendar: String
let localeCollationIdentifier: String
let localeUsesMetricSystem: String
let localeMeasurementSystem: String
let localeDecimalSeparator: String
let localeGroupingSeparator: String
let localeCurrencySymbol: String
let localeCurrencyCode: String
@available(OSX 10.6, *)
let localeCollatorIdentifier: String
@available(OSX 10.6, *)
let localeQuotationBeginDelimiterKey: String
@available(OSX 10.6, *)
let localeQuotationEndDelimiterKey: String
@available(OSX 10.6, *)
let localeAlternateQuotationBeginDelimiterKey: String
@available(OSX 10.6, *)
let localeAlternateQuotationEndDelimiterKey: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierGregorian instead")
let gregorianCalendar: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierBuddhist instead")
let buddhistCalendar: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierChinese instead")
let chineseCalendar: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierHebrew instead")
let hebrewCalendar: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierIslamic instead")
let islamicCalendar: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierIslamicCivil instead")
let islamicCivilCalendar: String
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarIdentifierJapanese instead")
let japaneseCalendar: String
@available(OSX, introduced=10.6, deprecated=10.10, message="Use NSCalendarIdentifierRepublicOfChina instead")
let republicOfChinaCalendar: String
@available(OSX, introduced=10.6, deprecated=10.10, message="Use NSCalendarIdentifierPersian instead")
let persianCalendar: String
@available(OSX, introduced=10.6, deprecated=10.10, message="Use NSCalendarIdentifierIndian instead")
let indianCalendar: String
@available(OSX, introduced=10.6, deprecated=10.10, message="Use NSCalendarIdentifierISO8601 instead")
let ISO8601Calendar: String
protocol Locking {
  func lock()
  func unlock()
}
class Lock : Object, Locking {
  func tryLock() -> Bool
  func lockBefore(limit: Date) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
class ConditionLock : Object, Locking {
  init(condition: Int)
  var condition: Int { get }
  func lockWhenCondition(condition: Int)
  func tryLock() -> Bool
  func tryWhenCondition(condition: Int) -> Bool
  func unlockWithCondition(condition: Int)
  func lockBefore(limit: Date) -> Bool
  func lockWhenCondition(condition: Int, before limit: Date) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  convenience init()
  func lock()
  func unlock()
}
class RecursiveLock : Object, Locking {
  func tryLock() -> Bool
  func lockBefore(limit: Date) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
@available(OSX 10.5, *)
class Condition : Object, Locking {
  func wait()
  func waitUntil(limit: Date) -> Bool
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
let mapTableStrongMemory: PointerFunctionsOptions
@available(OSX 10.5, *)
let mapTableCopyIn: PointerFunctionsOptions
@available(OSX 10.5, *)
let mapTableObjectPointerPersonality: PointerFunctionsOptions
@available(OSX 10.8, *)
let mapTableWeakMemory: PointerFunctionsOptions
typealias MapTableOptions = Int
@available(OSX 10.5, *)
class MapTable : Object, Copying, Coding, FastEnumeration {
  init(keyOptions: PointerFunctionsOptions = [], valueOptions: PointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: PointerFunctions, valuePointerFunctions valueFunctions: PointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions: PointerFunctionsOptions = [], valueOptions: PointerFunctionsOptions = [])
  @available(OSX 10.8, *)
  class func strongToStrongObjects() -> MapTable
  @available(OSX 10.8, *)
  class func weakToStrongObjects() -> MapTable
  @available(OSX 10.8, *)
  class func strongToWeakObjects() -> MapTable
  @available(OSX 10.8, *)
  class func weakToWeakObjects() -> MapTable
  @NSCopying var keyPointerFunctions: PointerFunctions { get }
  @NSCopying var valuePointerFunctions: PointerFunctions { get }
  func objectFor(aKey: AnyObject?) -> AnyObject?
  func removeObjectFor(aKey: AnyObject?)
  func setObject(anObject: AnyObject?, forKey aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> Enumerator
  func objectEnumerator() -> Enumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [Object : AnyObject]
  convenience init()
  @available(OSX 10.5, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.5, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

/****************	void * Map table operations	****************/
struct MapEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutablePointer<Void>
  init()
  init(_pi: Int, _si: Int, _bs: UnsafeMutablePointer<Void>)
}
func freeMapTable(table: MapTable)
func resetMapTable(table: MapTable)
func compareMapTables(table1: MapTable, _ table2: MapTable) -> Bool
func copyMapTableWithZone(table: MapTable, _ zone: Zone) -> MapTable
func mapMember(table: MapTable, _ key: UnsafePointer<Void>, _ originalKey: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func mapGet(table: MapTable, _ key: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func mapInsert(table: MapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func mapInsertKnownAbsent(table: MapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func mapInsertIfAbsent(table: MapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func mapRemove(table: MapTable, _ key: UnsafePointer<Void>)
func enumerateMapTable(table: MapTable) -> MapEnumerator
func nextMapEnumeratorPair(enumerator: UnsafeMutablePointer<MapEnumerator>, _ key: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func endMapTableEnumeration(enumerator: UnsafeMutablePointer<MapEnumerator>)
func countMapTable(table: MapTable) -> Int
func stringFromMapTable(table: MapTable) -> String
func allMapTableKeys(table: MapTable) -> [AnyObject]
func allMapTableValues(table: MapTable) -> [AnyObject]

/****************     Legacy     ***************************************/
struct MapTableKeyCallBacks {
  var hash: (@convention(c) (MapTable, UnsafePointer<Void>) -> Int)?
  var isEqual: (@convention(c) (MapTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?
  var retain: (@convention(c) (MapTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (MapTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (MapTable, UnsafePointer<Void>) -> String?)?
  var notAKeyMarker: UnsafePointer<Void>
  init()
  init(hash: (@convention(c) (MapTable, UnsafePointer<Void>) -> Int)?, isEqual: (@convention(c) (MapTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?, retain: (@convention(c) (MapTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (MapTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (MapTable, UnsafePointer<Void>) -> String?)?, notAKeyMarker: UnsafePointer<Void>)
}
struct MapTableValueCallBacks {
  var retain: (@convention(c) (MapTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (MapTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (MapTable, UnsafePointer<Void>) -> String?)?
  init()
  init(retain: (@convention(c) (MapTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (MapTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (MapTable, UnsafePointer<Void>) -> String?)?)
}
func createMapTableWithZone(keyCallBacks: MapTableKeyCallBacks, _ valueCallBacks: MapTableValueCallBacks, _ capacity: Int, _ zone: Zone) -> MapTable
func createMapTable(keyCallBacks: MapTableKeyCallBacks, _ valueCallBacks: MapTableValueCallBacks, _ capacity: Int) -> MapTable

/****************	Common map table key callbacks	****************/
@available(OSX 10.5, *)
let integerMapKeyCallBacks: MapTableKeyCallBacks
let nonOwnedPointerMapKeyCallBacks: MapTableKeyCallBacks
let nonOwnedPointerOrNullMapKeyCallBacks: MapTableKeyCallBacks
let nonRetainedObjectMapKeyCallBacks: MapTableKeyCallBacks
let objectMapKeyCallBacks: MapTableKeyCallBacks
let ownedPointerMapKeyCallBacks: MapTableKeyCallBacks

/****************	Common map table value callbacks	****************/
@available(OSX 10.5, *)
let integerMapValueCallBacks: MapTableValueCallBacks
let nonOwnedPointerMapValueCallBacks: MapTableValueCallBacks
let objectMapValueCallBacks: MapTableValueCallBacks
let nonRetainedObjectMapValueCallBacks: MapTableValueCallBacks
let ownedPointerMapValueCallBacks: MapTableValueCallBacks
@available(OSX 10.10, *)
enum MassFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Gram
  case Kilogram
  case Ounce
  case Pound
  case Stone
}
@available(OSX 10.10, *)
class MassFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: FormattingUnitStyle
  var isForPersonMassUse: Bool
  func stringFromValue(value: Double, unit: MassFormatterUnit) -> String
  func stringFromKilograms(numberInKilograms: Double) -> String
  func unitStringFromValue(value: Double, unit: MassFormatterUnit) -> String
  func unitStringFromKilograms(numberInKilograms: Double, usedUnit unitp: UnsafeMutablePointer<MassFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.4, *)
class MetadataQuery : Object {
  unowned(unsafe) var delegate: @sil_unmanaged MetadataQueryDelegate?
  @NSCopying var predicate: Predicate?
  var sortDescriptors: [SortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: TimeInterval
  var searchScopes: [AnyObject]
  @available(OSX 10.9, *)
  var searchItems: [AnyObject]?
  @available(OSX 10.9, *)
  var operationQueue: OperationQueue?
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
  func enumerateResults(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [AnyObject] { get }
  func indexOfResult(result: AnyObject) -> Int
  var valueLists: [String : [MetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [MetadataQueryResultGroup] { get }
  func valueOfAttribute(attrName: String, forResultAt idx: Int) -> AnyObject?
  init()
}
protocol MetadataQueryDelegate : ObjectProtocol {
  @available(OSX 10.4, *)
  optional func metadataQuery(query: MetadataQuery, replacementObjectForResultObject result: MetadataItem) -> AnyObject
  @available(OSX 10.4, *)
  optional func metadataQuery(query: MetadataQuery, replacementValueForAttribute attrName: String, value attrValue: AnyObject) -> AnyObject
}
@available(OSX 10.4, *)
let metadataQueryDidStartGatheringNotification: String
@available(OSX 10.4, *)
let metadataQueryGatheringProgressNotification: String
@available(OSX 10.4, *)
let metadataQueryDidFinishGatheringNotification: String
@available(OSX 10.4, *)
let metadataQueryDidUpdateNotification: String
@available(OSX 10.9, *)
let metadataQueryUpdateAddedItemsKey: String
@available(OSX 10.9, *)
let metadataQueryUpdateChangedItemsKey: String
@available(OSX 10.9, *)
let metadataQueryUpdateRemovedItemsKey: String
@available(OSX 10.4, *)
let metadataQueryResultContentRelevanceAttribute: String
@available(OSX 10.4, *)
let metadataQueryUserHomeScope: String
@available(OSX 10.4, *)
let metadataQueryLocalComputerScope: String
@available(OSX 10.4, *)
let metadataQueryNetworkScope: String
@available(OSX 10.9, *)
let metadataQueryIndexedLocalComputerScope: String
@available(OSX 10.9, *)
let metadataQueryIndexedNetworkScope: String
@available(OSX 10.7, *)
let metadataQueryUbiquitousDocumentsScope: String
@available(OSX 10.7, *)
let metadataQueryUbiquitousDataScope: String
@available(OSX 10.10, *)
let metadataQueryAccessibleUbiquitousExternalDocumentsScope: String
@available(OSX 10.4, *)
class MetadataItem : Object {
  @available(OSX 10.9, *)
  init?(url: URL)
  func valueForAttribute(key: String) -> AnyObject?
  func valuesForAttributes(keys: [String]) -> [String : AnyObject]?
  var attributes: [String] { get }
  convenience init()
}
@available(OSX 10.4, *)
class MetadataQueryAttributeValueTuple : Object {
  var attribute: String { get }
  var value: AnyObject? { get }
  var count: Int { get }
  init()
}
@available(OSX 10.4, *)
class MetadataQueryResultGroup : Object {
  var attribute: String { get }
  var value: AnyObject { get }
  var subgroups: [MetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func resultAt(idx: Int) -> AnyObject
  var results: [AnyObject] { get }
  init()
}
@available(OSX 10.7, *)
let metadataItemFSNameKey: String
@available(OSX 10.7, *)
let metadataItemDisplayNameKey: String
@available(OSX 10.7, *)
let metadataItemURLKey: String
@available(OSX 10.7, *)
let metadataItemPathKey: String
@available(OSX 10.7, *)
let metadataItemFSSizeKey: String
@available(OSX 10.7, *)
let metadataItemFSCreationDateKey: String
@available(OSX 10.7, *)
let metadataItemFSContentChangeDateKey: String
@available(OSX 10.9, *)
let metadataItemContentTypeKey: String
@available(OSX 10.9, *)
let metadataItemContentTypeTreeKey: String
@available(OSX 10.7, *)
let metadataItemIsUbiquitousKey: String
@available(OSX 10.7, *)
let metadataUbiquitousItemHasUnresolvedConflictsKey: String
@available(OSX 10.9, *)
let metadataUbiquitousItemDownloadingStatusKey: String
@available(OSX 10.9, *)
let metadataUbiquitousItemDownloadingStatusNotDownloaded: String
@available(OSX 10.9, *)
let metadataUbiquitousItemDownloadingStatusDownloaded: String
@available(OSX 10.9, *)
let metadataUbiquitousItemDownloadingStatusCurrent: String
@available(OSX 10.7, *)
let metadataUbiquitousItemIsDownloadingKey: String
@available(OSX 10.7, *)
let metadataUbiquitousItemIsUploadedKey: String
@available(OSX 10.7, *)
let metadataUbiquitousItemIsUploadingKey: String
@available(OSX 10.7, *)
let metadataUbiquitousItemPercentDownloadedKey: String
@available(OSX 10.7, *)
let metadataUbiquitousItemPercentUploadedKey: String
@available(OSX 10.9, *)
let metadataUbiquitousItemDownloadingErrorKey: String
@available(OSX 10.9, *)
let metadataUbiquitousItemUploadingErrorKey: String
@available(OSX 10.10, *)
let metadataUbiquitousItemDownloadRequestedKey: String
@available(OSX 10.10, *)
let metadataUbiquitousItemIsExternalDocumentKey: String
@available(OSX 10.10, *)
let metadataUbiquitousItemContainerDisplayNameKey: String
@available(OSX 10.10, *)
let metadataUbiquitousItemURLInLocalContainerKey: String
@available(OSX 10.9, *)
let metadataItemAttributeChangeDateKey: String
@available(OSX 10.9, *)
let metadataItemKeywordsKey: String
@available(OSX 10.9, *)
let metadataItemTitleKey: String
@available(OSX 10.9, *)
let metadataItemAuthorsKey: String
@available(OSX 10.9, *)
let metadataItemEditorsKey: String
@available(OSX 10.9, *)
let metadataItemParticipantsKey: String
@available(OSX 10.9, *)
let metadataItemProjectsKey: String
@available(OSX 10.9, *)
let metadataItemDownloadedDateKey: String
@available(OSX 10.9, *)
let metadataItemWhereFromsKey: String
@available(OSX 10.9, *)
let metadataItemCommentKey: String
@available(OSX 10.9, *)
let metadataItemCopyrightKey: String
@available(OSX 10.9, *)
let metadataItemLastUsedDateKey: String
@available(OSX 10.9, *)
let metadataItemContentCreationDateKey: String
@available(OSX 10.9, *)
let metadataItemContentModificationDateKey: String
@available(OSX 10.9, *)
let metadataItemDateAddedKey: String
@available(OSX 10.9, *)
let metadataItemDurationSecondsKey: String
@available(OSX 10.9, *)
let metadataItemContactKeywordsKey: String
@available(OSX 10.9, *)
let metadataItemVersionKey: String
@available(OSX 10.9, *)
let metadataItemPixelHeightKey: String
@available(OSX 10.9, *)
let metadataItemPixelWidthKey: String
@available(OSX 10.9, *)
let metadataItemPixelCountKey: String
@available(OSX 10.9, *)
let metadataItemColorSpaceKey: String
@available(OSX 10.9, *)
let metadataItemBitsPerSampleKey: String
@available(OSX 10.9, *)
let metadataItemFlashOnOffKey: String
@available(OSX 10.9, *)
let metadataItemFocalLengthKey: String
@available(OSX 10.9, *)
let metadataItemAcquisitionMakeKey: String
@available(OSX 10.9, *)
let metadataItemAcquisitionModelKey: String
@available(OSX 10.9, *)
let metadataItemISOSpeedKey: String
@available(OSX 10.9, *)
let metadataItemOrientationKey: String
@available(OSX 10.9, *)
let metadataItemLayerNamesKey: String
@available(OSX 10.9, *)
let metadataItemWhiteBalanceKey: String
@available(OSX 10.9, *)
let metadataItemApertureKey: String
@available(OSX 10.9, *)
let metadataItemProfileNameKey: String
@available(OSX 10.9, *)
let metadataItemResolutionWidthDPIKey: String
@available(OSX 10.9, *)
let metadataItemResolutionHeightDPIKey: String
@available(OSX 10.9, *)
let metadataItemExposureModeKey: String
@available(OSX 10.9, *)
let metadataItemExposureTimeSecondsKey: String
@available(OSX 10.9, *)
let metadataItemEXIFVersionKey: String
@available(OSX 10.9, *)
let metadataItemCameraOwnerKey: String
@available(OSX 10.9, *)
let metadataItemFocalLength35mmKey: String
@available(OSX 10.9, *)
let metadataItemLensModelKey: String
@available(OSX 10.9, *)
let metadataItemEXIFGPSVersionKey: String
@available(OSX 10.9, *)
let metadataItemAltitudeKey: String
@available(OSX 10.9, *)
let metadataItemLatitudeKey: String
@available(OSX 10.9, *)
let metadataItemLongitudeKey: String
@available(OSX 10.9, *)
let metadataItemSpeedKey: String
@available(OSX 10.9, *)
let metadataItemTimestampKey: String
@available(OSX 10.9, *)
let metadataItemGPSTrackKey: String
@available(OSX 10.9, *)
let metadataItemImageDirectionKey: String
@available(OSX 10.9, *)
let metadataItemNamedLocationKey: String
@available(OSX 10.9, *)
let metadataItemGPSStatusKey: String
@available(OSX 10.9, *)
let metadataItemGPSMeasureModeKey: String
@available(OSX 10.9, *)
let metadataItemGPSDOPKey: String
@available(OSX 10.9, *)
let metadataItemGPSMapDatumKey: String
@available(OSX 10.9, *)
let metadataItemGPSDestLatitudeKey: String
@available(OSX 10.9, *)
let metadataItemGPSDestLongitudeKey: String
@available(OSX 10.9, *)
let metadataItemGPSDestBearingKey: String
@available(OSX 10.9, *)
let metadataItemGPSDestDistanceKey: String
@available(OSX 10.9, *)
let metadataItemGPSProcessingMethodKey: String
@available(OSX 10.9, *)
let metadataItemGPSAreaInformationKey: String
@available(OSX 10.9, *)
let metadataItemGPSDateStampKey: String
@available(OSX 10.9, *)
let metadataItemGPSDifferentalKey: String
@available(OSX 10.9, *)
let metadataItemCodecsKey: String
@available(OSX 10.9, *)
let metadataItemMediaTypesKey: String
@available(OSX 10.9, *)
let metadataItemStreamableKey: String
@available(OSX 10.9, *)
let metadataItemTotalBitRateKey: String
@available(OSX 10.9, *)
let metadataItemVideoBitRateKey: String
@available(OSX 10.9, *)
let metadataItemAudioBitRateKey: String
@available(OSX 10.9, *)
let metadataItemDeliveryTypeKey: String
@available(OSX 10.9, *)
let metadataItemAlbumKey: String
@available(OSX 10.9, *)
let metadataItemHasAlphaChannelKey: String
@available(OSX 10.9, *)
let metadataItemRedEyeOnOffKey: String
@available(OSX 10.9, *)
let metadataItemMeteringModeKey: String
@available(OSX 10.9, *)
let metadataItemMaxApertureKey: String
@available(OSX 10.9, *)
let metadataItemFNumberKey: String
@available(OSX 10.9, *)
let metadataItemExposureProgramKey: String
@available(OSX 10.9, *)
let metadataItemExposureTimeStringKey: String
@available(OSX 10.9, *)
let metadataItemHeadlineKey: String
@available(OSX 10.9, *)
let metadataItemInstructionsKey: String
@available(OSX 10.9, *)
let metadataItemCityKey: String
@available(OSX 10.9, *)
let metadataItemStateOrProvinceKey: String
@available(OSX 10.9, *)
let metadataItemCountryKey: String
@available(OSX 10.9, *)
let metadataItemTextContentKey: String
@available(OSX 10.9, *)
let metadataItemAudioSampleRateKey: String
@available(OSX 10.9, *)
let metadataItemAudioChannelCountKey: String
@available(OSX 10.9, *)
let metadataItemTempoKey: String
@available(OSX 10.9, *)
let metadataItemKeySignatureKey: String
@available(OSX 10.9, *)
let metadataItemTimeSignatureKey: String
@available(OSX 10.9, *)
let metadataItemAudioEncodingApplicationKey: String
@available(OSX 10.9, *)
let metadataItemComposerKey: String
@available(OSX 10.9, *)
let metadataItemLyricistKey: String
@available(OSX 10.9, *)
let metadataItemAudioTrackNumberKey: String
@available(OSX 10.9, *)
let metadataItemRecordingDateKey: String
@available(OSX 10.9, *)
let metadataItemMusicalGenreKey: String
@available(OSX 10.9, *)
let metadataItemIsGeneralMIDISequenceKey: String
@available(OSX 10.9, *)
let metadataItemRecordingYearKey: String
@available(OSX 10.9, *)
let metadataItemOrganizationsKey: String
@available(OSX 10.9, *)
let metadataItemLanguagesKey: String
@available(OSX 10.9, *)
let metadataItemRightsKey: String
@available(OSX 10.9, *)
let metadataItemPublishersKey: String
@available(OSX 10.9, *)
let metadataItemContributorsKey: String
@available(OSX 10.9, *)
let metadataItemCoverageKey: String
@available(OSX 10.9, *)
let metadataItemSubjectKey: String
@available(OSX 10.9, *)
let metadataItemThemeKey: String
@available(OSX 10.9, *)
let metadataItemDescriptionKey: String
@available(OSX 10.9, *)
let metadataItemIdentifierKey: String
@available(OSX 10.9, *)
let metadataItemAudiencesKey: String
@available(OSX 10.9, *)
let metadataItemNumberOfPagesKey: String
@available(OSX 10.9, *)
let metadataItemPageWidthKey: String
@available(OSX 10.9, *)
let metadataItemPageHeightKey: String
@available(OSX 10.9, *)
let metadataItemSecurityMethodKey: String
@available(OSX 10.9, *)
let metadataItemCreatorKey: String
@available(OSX 10.9, *)
let metadataItemEncodingApplicationsKey: String
@available(OSX 10.9, *)
let metadataItemDueDateKey: String
@available(OSX 10.9, *)
let metadataItemStarRatingKey: String
@available(OSX 10.9, *)
let metadataItemPhoneNumbersKey: String
@available(OSX 10.9, *)
let metadataItemEmailAddressesKey: String
@available(OSX 10.9, *)
let metadataItemInstantMessageAddressesKey: String
@available(OSX 10.9, *)
let metadataItemKindKey: String
@available(OSX 10.9, *)
let metadataItemRecipientsKey: String
@available(OSX 10.9, *)
let metadataItemFinderCommentKey: String
@available(OSX 10.9, *)
let metadataItemFontsKey: String
@available(OSX 10.9, *)
let metadataItemAppleLoopsRootKeyKey: String
@available(OSX 10.9, *)
let metadataItemAppleLoopsKeyFilterTypeKey: String
@available(OSX 10.9, *)
let metadataItemAppleLoopsLoopModeKey: String
@available(OSX 10.9, *)
let metadataItemAppleLoopDescriptorsKey: String
@available(OSX 10.9, *)
let metadataItemMusicalInstrumentCategoryKey: String
@available(OSX 10.9, *)
let metadataItemMusicalInstrumentNameKey: String
@available(OSX 10.9, *)
let metadataItemCFBundleIdentifierKey: String
@available(OSX 10.9, *)
let metadataItemInformationKey: String
@available(OSX 10.9, *)
let metadataItemDirectorKey: String
@available(OSX 10.9, *)
let metadataItemProducerKey: String
@available(OSX 10.9, *)
let metadataItemGenreKey: String
@available(OSX 10.9, *)
let metadataItemPerformersKey: String
@available(OSX 10.9, *)
let metadataItemOriginalFormatKey: String
@available(OSX 10.9, *)
let metadataItemOriginalSourceKey: String
@available(OSX 10.9, *)
let metadataItemAuthorEmailAddressesKey: String
@available(OSX 10.9, *)
let metadataItemRecipientEmailAddressesKey: String
@available(OSX 10.9, *)
let metadataItemAuthorAddressesKey: String
@available(OSX 10.9, *)
let metadataItemRecipientAddressesKey: String
@available(OSX 10.9, *)
let metadataItemIsLikelyJunkKey: String
@available(OSX 10.9, *)
let metadataItemExecutableArchitecturesKey: String
@available(OSX 10.9, *)
let metadataItemExecutablePlatformKey: String
@available(OSX 10.9, *)
let metadataItemApplicationCategoriesKey: String
@available(OSX 10.9, *)
let metadataItemIsApplicationManagedKey: String
let netServicesErrorCode: String
let netServicesErrorDomain: String
enum NetServicesError : Int {
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
struct NetServiceOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoAutoRename: NetServiceOptions { get }
  @available(OSX 10.9, *)
  static var ListenForConnections: NetServiceOptions { get }
}
class NetService : Object {
  init(domain: String, type: String, name: String, port: Int32)
  convenience init(domain: String, type: String, name: String)
  func scheduleIn(aRunLoop: RunLoop, forMode mode: String)
  func removeFrom(aRunLoop: RunLoop, forMode mode: String)
  unowned(unsafe) var delegate: @sil_unmanaged NetServiceDelegate?
  @available(OSX 10.10, *)
  var includesPeerToPeer: Bool
  var name: String { get }
  var type: String { get }
  var domain: String { get }
  var hostName: String? { get }
  var addresses: [Data]? { get }
  @available(OSX 10.5, *)
  var port: Int { get }
  func publish()
  @available(OSX 10.5, *)
  func publish(options options: NetServiceOptions = [])
  func stop()
  class func dictionaryFromTXTRecord(txtData: Data) -> [String : Data]
  class func dataFromTXTRecord(txtDictionary: [String : Data]) -> Data
  func resolveWithTimeout(timeout: TimeInterval)
  func getInputStream(inputStream: UnsafeMutablePointer<InputStream?>, outputStream: UnsafeMutablePointer<OutputStream?>) -> Bool
  func setTXTRecord(recordData: Data?) -> Bool
  func txtRecordData() -> Data?
  func startMonitoring()
  func stopMonitoring()
  convenience init()
}
class NetServiceBrowser : Object {
  init()
  unowned(unsafe) var delegate: @sil_unmanaged NetServiceBrowserDelegate?
  @available(OSX 10.10, *)
  var includesPeerToPeer: Bool
  func scheduleIn(aRunLoop: RunLoop, forMode mode: String)
  func removeFrom(aRunLoop: RunLoop, forMode mode: String)
  func searchForBrowsableDomains()
  func searchForRegistrationDomains()
  func searchForServicesOfType(type: String, inDomain domainString: String)
  func stop()
}
protocol NetServiceDelegate : ObjectProtocol {
  optional func netServiceWillPublish(sender: NetService)
  optional func netServiceDidPublish(sender: NetService)
  optional func netService(sender: NetService, didNotPublish errorDict: [String : Number])
  optional func netServiceWillResolve(sender: NetService)
  optional func netServiceDidResolveAddress(sender: NetService)
  optional func netService(sender: NetService, didNotResolve errorDict: [String : Number])
  optional func netServiceDidStop(sender: NetService)
  optional func netService(sender: NetService, didUpdateTXTRecord data: Data)
  @available(OSX 10.9, *)
  optional func netService(sender: NetService, didAcceptConnectionWith inputStream: InputStream, outputStream: OutputStream)
}
protocol NetServiceBrowserDelegate : ObjectProtocol {
  optional func netServiceBrowserWillSearch(browser: NetServiceBrowser)
  optional func netServiceBrowserDidStopSearch(browser: NetServiceBrowser)
  optional func netServiceBrowser(browser: NetServiceBrowser, didNotSearch errorDict: [String : Number])
  optional func netServiceBrowser(browser: NetServiceBrowser, didFindDomain domainString: String, moreComing: Bool)
  optional func netServiceBrowser(browser: NetServiceBrowser, didFind service: NetService, moreComing: Bool)
  optional func netServiceBrowser(browser: NetServiceBrowser, didRemoveDomain domainString: String, moreComing: Bool)
  optional func netServiceBrowser(browser: NetServiceBrowser, didRemove service: NetService, moreComing: Bool)
}

/****************	Notifications	****************/
class Notification : Object, Copying, Coding {
  var name: String { get }
  var object: AnyObject? { get }
  var userInfo: [Object : AnyObject]? { get }
  @available(OSX 10.6, *)
  init(name: String, object: AnyObject?, userInfo: [Object : AnyObject]? = [:])
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
}
extension Notification {
  convenience init(name aName: String, object anObject: AnyObject?)
  convenience init()
}

/****************	Notification Center	****************/
class NotificationCenter : Object {
  class func defaultCenter() -> NotificationCenter
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: AnyObject?)
  func post(notification: Notification)
  func postNotificationName(aName: String, object anObject: AnyObject?)
  func postNotificationName(aName: String, object anObject: AnyObject?, userInfo aUserInfo: [Object : AnyObject]? = [:])
  func removeObserver(observer: AnyObject)
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: AnyObject?)
  @available(OSX 10.6, *)
  func addObserverForName(name: String?, object obj: AnyObject?, queue: OperationQueue?, usingBlock block: (Notification) -> Void) -> ObjectProtocol
  init()
}
enum PostingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PostWhenIdle
  case PostASAP
  case PostNow
}
struct NotificationCoalescing : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoCoalescing: NotificationCoalescing { get }
  static var CoalescingOnName: NotificationCoalescing { get }
  static var CoalescingOnSender: NotificationCoalescing { get }
}
class NotificationQueue : Object {
  class func defaultQueue() -> NotificationQueue
  init(notificationCenter: NotificationCenter)
  func enqueueNotification(notification: Notification, postingStyle: PostingStyle)
  func enqueueNotification(notification: Notification, postingStyle: PostingStyle, coalesceMask: NotificationCoalescing, forModes modes: [String]?)
  func dequeueNotificationsMatching(notification: Notification, coalesceMask: Int)
  convenience init()
}
class Null : Object, Copying, SecureCoding {
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
enum NumberFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_0
  case Behavior10_4
}
class NumberFormatter : Formatter {
  @available(OSX 10.10, *)
  var formattingContext: FormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFrom(number: Number) -> String?
  func numberFrom(string: String) -> Number?
  @available(OSX 10.6, *)
  class func localizedStringFrom(num: Number, number nstyle: NumberFormatterStyle) -> String
  class func defaultFormatterBehavior() -> NumberFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: NumberFormatterBehavior)
  var numberStyle: NumberFormatterStyle
  @NSCopying var locale: Locale!
  var generatesDecimalNumbers: Bool
  var formatterBehavior: NumberFormatterBehavior
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
  @NSCopying var multiplier: Number?
  var formatWidth: Int
  var paddingCharacter: String!
  var paddingPosition: NumberFormatterPadPosition
  var roundingMode: NumberFormatterRoundingMode
  @NSCopying var roundingIncrement: Number!
  var minimumIntegerDigits: Int
  var maximumIntegerDigits: Int
  var minimumFractionDigits: Int
  var maximumFractionDigits: Int
  @NSCopying var minimum: Number?
  @NSCopying var maximum: Number?
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
  init?(coder aDecoder: Coder)
}
enum NumberFormatterStyle : UInt {
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
enum NumberFormatterPadPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BeforePrefix
  case AfterPrefix
  case BeforeSuffix
  case AfterSuffix
}
enum NumberFormatterRoundingMode : UInt {
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
extension NumberFormatter {
  var hasThousandSeparators: Bool
  var thousandSeparator: String!
  var localizesFormat: Bool
  var format: String
  @NSCopying var attributedStringForZero: AttributedString
  @NSCopying var attributedStringForNil: AttributedString
  @NSCopying var attributedStringForNotANumber: AttributedString
  @NSCopying var roundingBehavior: DecimalNumberHandler
}
var foundationVersionNumber: Double
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
func stringFromSelector(aSelector: Selector) -> String
func selectorFromString(aSelectorName: String) -> Selector
func stringFromClass(aClass: AnyClass) -> String
func classFromString(aClassName: String) -> AnyClass?
@available(OSX 10.5, *)
func stringFromProtocol(proto: Protocol) -> String
@available(OSX 10.5, *)
func protocolFromString(namestr: String) -> Protocol?
func getSizeAndAlignment(typePtr: UnsafePointer<Int8>, _ sizep: UnsafeMutablePointer<Int>, _ alignp: UnsafeMutablePointer<Int>) -> UnsafePointer<Int8>
func logv(format: String, _ args: CVaListPointer)
enum ComparisonResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OrderedAscending
  case OrderedSame
  case OrderedDescending
}
typealias Comparator = (AnyObject, AnyObject) -> ComparisonResult
struct EnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: EnumerationOptions { get }
  static var Reverse: EnumerationOptions { get }
}
struct SortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: SortOptions { get }
  static var Stable: SortOptions { get }
}
@available(OSX 10.10, *)
enum QualityOfService : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UserInteractive
  case UserInitiated
  case Utility
  case Background
  case Default
}
let notFound: Int

/***************	Basic protocols		***************/
protocol Copying {
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol MutableCopying {
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
protocol Coding {
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol SecureCoding : Coding {
  static func supportsSecureCoding() -> Bool
}

/***********	Base class		***********/
extension Object {
  class func version() -> Int
  class func setVersion(aVersion: Int)
  var classForCoder: AnyClass { get }
  class func replacementObjectFor(aCoder: Coder) -> AnyObject?
  func replacementObjectFor(aCoder: Coder) -> AnyObject?
  class func awakeAfterUsing(aDecoder: Coder) -> AnyObject?
  func awakeAfterUsing(aDecoder: Coder) -> AnyObject?
  class func classForCoder() -> AnyClass
}
extension Object {
}

/***********	Discardable Content		***********/
protocol DiscardableContent {
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension Object {
  @available(OSX 10.6, *)
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(X: AnyObject?) -> AnyObject?
extension Object {
  @available(OSX 10.5, *)
  class func scriptingValueFor(objectSpecifier: ScriptObjectSpecifier) -> AnyObject?
  @available(OSX 10.5, *)
  func scriptingValueFor(objectSpecifier: ScriptObjectSpecifier) -> AnyObject?
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
class Operation : Object {
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
  func addDependency(op: Operation)
  func removeDependency(op: Operation)
  var dependencies: [Operation] { get }
  var queuePriority: OperationQueuePriority
  @available(OSX 10.6, *)
  var completionBlock: (() -> Void)?
  @available(OSX 10.6, *)
  func waitUntilFinished()
  @available(OSX, introduced=10.6, deprecated=10.10)
  var threadPriority: Double
  @available(OSX 10.10, *)
  var qualityOfService: QualityOfService
  @available(OSX 10.10, *)
  var name: String?
  init()
}
enum OperationQueuePriority : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case VeryLow
  case Low
  case Normal
  case High
  case VeryHigh
}
@available(OSX 10.6, *)
class BlockOperation : Operation {
  convenience init(block: () -> Void)
  func addExecutionBlock(block: () -> Void)
  var executionBlocks: [() -> Void] { get }
  init()
}
@available(OSX 10.5, *)
let invocationOperationVoidResultException: String
@available(OSX 10.5, *)
let invocationOperationCancelledException: String
let operationQueueDefaultMaxConcurrentOperationCount: Int
@available(OSX 10.5, *)
class OperationQueue : Object {
  func addOperation(op: Operation)
  @available(OSX 10.6, *)
  func addOperations(ops: [Operation], waitUntilFinished wait: Bool)
  @available(OSX 10.6, *)
  func addOperationWith(block: () -> Void)
  var operations: [Operation] { get }
  @available(OSX 10.6, *)
  var operationCount: Int { get }
  var maxConcurrentOperationCount: Int
  var isSuspended: Bool
  @available(OSX 10.6, *)
  var name: String?
  @available(OSX 10.10, *)
  var qualityOfService: QualityOfService
  @available(OSX 10.10, *)
  unowned(unsafe) var underlyingQueue: @sil_unmanaged dispatch_queue_t?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  @available(OSX 10.6, *)
  class func current() -> OperationQueue?
  @available(OSX 10.6, *)
  class func main() -> OperationQueue
  init()
}

/****************       Immutable Ordered Set   ****************/
@available(OSX 10.7, *)
class OrderedSet : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func objectAt(idx: Int) -> AnyObject
  func indexOf(object: AnyObject) -> Int
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  @available(OSX 10.7, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encodeWith(aCoder: Coder)
  @available(OSX 10.7, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension OrderedSet : SequenceType {
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}

extension OrderedSet {
  convenience init(objects elements: AnyObject...)
}

extension OrderedSet : ArrayLiteralConvertible {
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}
extension OrderedSet {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func objectsAt(indexes: IndexSet) -> [AnyObject]
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func isEqualTo(other: OrderedSet) -> Bool
  func contains(object: AnyObject) -> Bool
  func intersectsOrderedSet(other: OrderedSet) -> Bool
  func intersectsSet(set: Set<Object>) -> Bool
  func isSubsetOf(other: OrderedSet) -> Bool
  func isSubsetOf(set: Set<Object>) -> Bool
  @available(OSX 10.8, *)
  subscript (idx: Int) -> AnyObject { get }
  func objectEnumerator() -> Enumerator
  func reverseObjectEnumerator() -> Enumerator
  @NSCopying var reversed: OrderedSet { get }
  var array: [AnyObject] { get }
  var set: Set<Object> { get }
  func enumerateObjectsUsing(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObject(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectAt(s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexesOfObjects(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexesOfObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexOf(object: AnyObject, inSortedRange range: NSRange, options opts: BinarySearchingOptions = [], usingComparator cmp: Comparator) -> Int
  func sortedArrayUsingComparator(cmptr: Comparator) -> [AnyObject]
  func sortedArray(options opts: SortOptions = [], usingComparator cmptr: Comparator) -> [AnyObject]
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
}
extension OrderedSet {
  convenience init(object: AnyObject)
  convenience init(orderedSet set: OrderedSet)
  convenience init(orderedSet set: OrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: OrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
}

/****************       Mutable Ordered Set     ****************/
@available(OSX 10.7, *)
class MutableOrderedSet : OrderedSet {
  func insert(object: AnyObject, at idx: Int)
  func removeObjectAt(idx: Int)
  func replaceObjectAt(idx: Int, withObject object: AnyObject)
  init?(coder aDecoder: Coder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(orderedSet set: OrderedSet)
  convenience init(orderedSet set: OrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: OrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
}
extension MutableOrderedSet {
  func add(object: AnyObject)
  func addObjects(objects: UnsafePointer<AnyObject?>, count: Int)
  func addObjectsFrom(array: [AnyObject])
  func exchangeObjectAt(idx1: Int, withObjectAt idx2: Int)
  func moveObjectsAt(indexes: IndexSet, to idx: Int)
  func insert(objects: [AnyObject], at indexes: IndexSet)
  func setObject(obj: AnyObject, at idx: Int)
  @available(OSX 10.8, *)
  subscript (idx: Int) -> AnyObject
  func replaceObjectsIn(range: NSRange, withObjects objects: UnsafePointer<AnyObject?>, count: Int)
  func replaceObjectsAt(indexes: IndexSet, withObjects objects: [AnyObject])
  func removeObjectsIn(range: NSRange)
  func removeObjectsAt(indexes: IndexSet)
  func removeAllObjects()
  func remove(object: AnyObject)
  func removeObjectsIn(array: [AnyObject])
  func intersectOrderedSet(other: OrderedSet)
  func minusOrderedSet(other: OrderedSet)
  func unionOrderedSet(other: OrderedSet)
  func intersectSet(other: Set<Object>)
  func minusSet(other: Set<Object>)
  func unionSet(other: Set<Object>)
  func sortUsingComparator(cmptr: Comparator)
  func sort(options opts: SortOptions = [], usingComparator cmptr: Comparator)
  func sortRange(range: NSRange, options opts: SortOptions = [], usingComparator cmptr: Comparator)
}
extension MutableOrderedSet {
}
@available(OSX 10.6, *)
class Orthography : Object, Copying, Coding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  @available(OSX 10.6, *)
  init(dominantScript script: String, languageMap map: [String : [String]])
  init?(coder aDecoder: Coder)
  convenience init()
  @available(OSX 10.6, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.6, *)
  func encodeWith(aCoder: Coder)
}
extension Orthography {
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
extension Orthography {
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
func userName() -> String
func fullUserName() -> String
func homeDirectory() -> String
func homeDirectoryForUser(userName: String?) -> String?
func temporaryDirectory() -> String
func openStepRootDirectory() -> String
enum SearchPathDirectory : UInt {
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
struct SearchPathDomainMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UserDomainMask: SearchPathDomainMask { get }
  static var LocalDomainMask: SearchPathDomainMask { get }
  static var NetworkDomainMask: SearchPathDomainMask { get }
  static var SystemDomainMask: SearchPathDomainMask { get }
  static var AllDomainsMask: SearchPathDomainMask { get }
}
func searchPathForDirectoriesInDomains(directory: SearchPathDirectory, _ domainMask: SearchPathDomainMask, _ expandTilde: Bool) -> [String]
@available(OSX 10.11, *)
class PersonNameComponents : Object, Copying, SecureCoding {
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  @NSCopying var phoneticRepresentation: PersonNameComponents?
  init()
  @available(OSX 10.11, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.11, *)
enum PersonNameComponentsFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Short
  case Medium
  case Long
  case Abbreviated
}
@available(OSX 10.11, *)
struct PersonNameComponentsFormatterOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Phonetic: PersonNameComponentsFormatterOptions { get }
}
@available(OSX 10.11, *)
class PersonNameComponentsFormatter : Formatter {
  var style: PersonNameComponentsFormatterStyle
  var isPhonetic: Bool
  class func localizedStringFrom(components: PersonNameComponents, style nameFormatStyle: PersonNameComponentsFormatterStyle, options nameOptions: PersonNameComponentsFormatterOptions = []) -> String
  func stringFrom(components: PersonNameComponents) -> String
  func annotatedStringFrom(components: PersonNameComponents) -> AttributedString
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.11, *)
let personNameComponentKey: String
@available(OSX 10.11, *)
let personNameComponentGivenName: String
@available(OSX 10.11, *)
let personNameComponentFamilyName: String
@available(OSX 10.11, *)
let personNameComponentMiddleName: String
@available(OSX 10.11, *)
let personNameComponentPrefix: String
@available(OSX 10.11, *)
let personNameComponentSuffix: String
@available(OSX 10.11, *)
let personNameComponentNickname: String
@available(OSX 10.11, *)
let personNameComponentDelimiter: String
@available(OSX 10.5, *)
class PointerArray : Object, FastEnumeration, Copying, Coding {
  init(options: PointerFunctionsOptions = [])
  init(pointerFunctions functions: PointerFunctions)
  @NSCopying var pointerFunctions: PointerFunctions { get }
  func pointerAt(index: Int) -> UnsafeMutablePointer<Void>
  func addPointer(pointer: UnsafeMutablePointer<Void>)
  func removePointerAt(index: Int)
  func insertPointer(item: UnsafeMutablePointer<Void>, at index: Int)
  func replacePointerAt(index: Int, withPointer item: UnsafeMutablePointer<Void>)
  func compact()
  var count: Int
  convenience init()
  @available(OSX 10.5, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
  @available(OSX 10.5, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension PointerArray {
  @available(OSX 10.8, *)
  class func strongObjects() -> PointerArray
  @available(OSX 10.8, *)
  class func weakObjects() -> PointerArray
  var allObjects: [AnyObject] { get }
}
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
struct PointerFunctionsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(OSX 10.5, *)
  static var StrongMemory: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var OpaqueMemory: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var MallocMemory: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var MachVirtualMemory: PointerFunctionsOptions { get }
  @available(OSX 10.8, *)
  static var WeakMemory: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var ObjectPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var OpaquePersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var ObjectPointerPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var CStringPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var StructPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var IntegerPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var CopyIn: PointerFunctionsOptions { get }
}
@available(OSX 10.5, *)
class PointerFunctions : Object, Copying {
  init(options: PointerFunctionsOptions = [])
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
  func copy(zone zone: Zone = nil) -> AnyObject
}
typealias SocketNativeHandle = Int32
let portDidBecomeInvalidNotification: String
class Port : Object, Copying, Coding {
  func invalidate()
  var isValid: Bool { get }
  func setDelegate(anObject: PortDelegate?)
  func delegate() -> PortDelegate?
  func scheduleIn(runLoop: RunLoop, forMode mode: String)
  func removeFrom(runLoop: RunLoop, forMode mode: String)
  var reservedSpaceLength: Int { get }
  func sendBefore(limitDate: Date, components: MutableArray?, from receivePort: Port?, reserved headerSpaceReserved: Int) -> Bool
  func sendBefore(limitDate: Date, msgid msgID: Int, components: MutableArray?, from receivePort: Port?, reserved headerSpaceReserved: Int) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol PortDelegate : ObjectProtocol {
  optional func handle(message: PortMessage)
}
class MachPort : Port {
  class func portWithMachPort(machPort: UInt32) -> Port
  init(machPort: UInt32)
  func setDelegate(anObject: MachPortDelegate?)
  func delegate() -> MachPortDelegate?
  @available(OSX 10.5, *)
  class func portWithMachPort(machPort: UInt32, options f: MachPortOptions = []) -> Port
  @available(OSX 10.5, *)
  init(machPort: UInt32, options f: MachPortOptions = [])
  var machPort: UInt32 { get }
  func scheduleIn(runLoop: RunLoop, forMode mode: String)
  func removeFrom(runLoop: RunLoop, forMode mode: String)
  convenience init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.5, *)
struct MachPortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DeallocateNone: MachPortOptions { get }
  static var DeallocateSendRight: MachPortOptions { get }
  static var DeallocateReceiveRight: MachPortOptions { get }
}
protocol MachPortDelegate : PortDelegate {
  optional func handleMachMessage(msg: UnsafeMutablePointer<Void>)
}
class MessagePort : Port {
  init()
  init?(coder aDecoder: Coder)
}
class SocketPort : Port {
  convenience init()
  convenience init?(tcpPort port: UInt16)
  init?(protocolFamily family: Int32, socketType type: Int32, protocol: Int32, address: Data)
  init?(protocolFamily family: Int32, socketType type: Int32, protocol: Int32, socket sock: SocketNativeHandle)
  convenience init?(remoteWithTCPPort port: UInt16, host hostName: String?)
  init(remoteWithProtocolFamily family: Int32, socketType type: Int32, protocol: Int32, address: Data)
  var protocolFamily: Int32 { get }
  var socketType: Int32 { get }
  var `protocol`: Int32 { get }
  @NSCopying var address: Data { get }
  var socket: SocketNativeHandle { get }
  init?(coder aDecoder: Coder)
}
extension Object {
  class func classForPortCoder() -> AnyClass
}
class PortMessage : Object {
  init(send sendPort: Port?, receive replyPort: Port?, components: [AnyObject]?)
  var components: [AnyObject]? { get }
  var receivePort: Port? { get }
  var sendPort: Port? { get }
  func sendBefore(date: Date) -> Bool
  var msgid: UInt32
  convenience init()
}
@available(OSX 10.4, *)
class Predicate : Object, SecureCoding, Copying {
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
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.4, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}

extension Predicate {
  convenience init(format predicateFormat: String, _ args: CVarArgType...)
}
struct _predicateFlags {
  var _evaluationBlocked: UInt32
  var _reservedPredicateFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedPredicateFlags: UInt32)
}
extension NSArray {
  func filteredArrayUsing(predicate: Predicate) -> [AnyObject]
}
extension MutableArray {
  func filterUsing(predicate: Predicate)
}
extension NSSet {
  @available(OSX 10.5, *)
  func filteredSetUsing(predicate: Predicate) -> Set<Object>
}
extension MutableSet {
  @available(OSX 10.5, *)
  func filterUsing(predicate: Predicate)
}
extension OrderedSet {
  @available(OSX 10.7, *)
  func filteredOrderedSetUsing(p: Predicate) -> OrderedSet
}
extension MutableOrderedSet {
  @available(OSX 10.7, *)
  func filterUsing(p: Predicate)
}
var windowsNTOperatingSystem: Int { get }
var windows95OperatingSystem: Int { get }
var solarisOperatingSystem: Int { get }
var HPUXOperatingSystem: Int { get }
var MACHOperatingSystem: Int { get }
var sunOSOperatingSystem: Int { get }
var OSF1OperatingSystem: Int { get }
struct OperatingSystemVersion {
  var majorVersion: Int
  var minorVersion: Int
  var patchVersion: Int
  init()
  init(majorVersion: Int, minorVersion: Int, patchVersion: Int)
}
class ProcessInfo : Object {
  class func processInfo() -> ProcessInfo
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
  var operatingSystemVersion: OperatingSystemVersion { get }
  @available(OSX 10.5, *)
  var processorCount: Int { get }
  @available(OSX 10.5, *)
  var activeProcessorCount: Int { get }
  @available(OSX 10.5, *)
  var physicalMemory: UInt64 { get }
  @available(OSX 10.10, *)
  func isOperatingSystemAtLeastVersion(version: OperatingSystemVersion) -> Bool
  @available(OSX 10.6, *)
  var systemUptime: TimeInterval { get }
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
struct ActivityOptions : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var IdleDisplaySleepDisabled: ActivityOptions { get }
  static var IdleSystemSleepDisabled: ActivityOptions { get }
  static var SuddenTerminationDisabled: ActivityOptions { get }
  static var AutomaticTerminationDisabled: ActivityOptions { get }
  static var UserInitiated: ActivityOptions { get }
  static var UserInitiatedAllowingIdleSystemSleep: ActivityOptions { get }
  static var Background: ActivityOptions { get }
  static var LatencyCritical: ActivityOptions { get }
}
extension ProcessInfo {
  @available(OSX 10.9, *)
  func beginActivity(options options: ActivityOptions = [], reason: String) -> ObjectProtocol
  @available(OSX 10.9, *)
  func endActivity(activity: ObjectProtocol)
  @available(OSX 10.9, *)
  func performActivity(options options: ActivityOptions = [], reason: String, usingBlock block: () -> Void)
}
@available(OSX 10.10.3, *)
enum ProcessInfoThermalState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Nominal
  case Fair
  case Serious
  case Critical
}
extension ProcessInfo {
  @available(OSX 10.10.3, *)
  var thermalState: ProcessInfoThermalState { get }
}
extension ProcessInfo {
}
@available(OSX 10.10.3, *)
let processInfoThermalStateDidChangeNotification: String
@available(OSX 10.9, *)
class Progress : Object {
  class func current() -> Progress?
  /*not inherited*/ init(totalUnitCount unitCount: Int64)
  @available(OSX 10.11, *)
  class func discreteProgressWithTotalUnitCount(unitCount: Int64) -> Progress
  @available(OSX 10.11, *)
  /*not inherited*/ init(totalUnitCount unitCount: Int64, parent: Progress, pendingUnitCount portionOfParentTotalUnitCount: Int64)
  init(parent parentProgressOrNil: Progress?, userInfo userInfoOrNil: [Object : AnyObject]? = [:])
  func becomeCurrentWithPendingUnitCount(unitCount: Int64)
  func resignCurrent()
  @available(OSX 10.11, *)
  func addChild(child: Progress, withPendingUnitCount inUnitCount: Int64)
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
  var userInfo: [Object : AnyObject] { get }
  var kind: String?
  @available(OSX 10.9, *)
  func publish()
  @available(OSX 10.9, *)
  func unpublish()
  @available(OSX 10.9, *)
  class func addSubscriberForFileURL(url: URL, withPublishingHandler publishingHandler: ProgressPublishingHandler) -> AnyObject
  @available(OSX 10.9, *)
  class func removeSubscriber(subscriber: AnyObject)
  @available(OSX 10.9, *)
  var isOld: Bool { get }
  convenience init()
}
typealias ProgressUnpublishingHandler = () -> Void
typealias ProgressPublishingHandler = (Progress) -> ProgressUnpublishingHandler?
protocol ProgressReporting : ObjectProtocol {
  @available(OSX 10.9, *)
  var progress: Progress { get }
}
@available(OSX 10.9, *)
let progressEstimatedTimeRemainingKey: String
@available(OSX 10.9, *)
let progressThroughputKey: String
@available(OSX 10.9, *)
let progressKindFile: String
@available(OSX 10.9, *)
let progressFileOperationKindKey: String
@available(OSX 10.9, *)
let progressFileOperationKindDownloading: String
@available(OSX 10.9, *)
let progressFileOperationKindDecompressingAfterDownloading: String
@available(OSX 10.9, *)
let progressFileOperationKindReceiving: String
@available(OSX 10.9, *)
let progressFileOperationKindCopying: String
@available(OSX 10.9, *)
let progressFileURLKey: String
@available(OSX 10.9, *)
let progressFileTotalCountKey: String
@available(OSX 10.9, *)
let progressFileCompletedCountKey: String
@available(OSX 10.9, *)
let progressFileAnimationImageKey: String
@available(OSX 10.9, *)
let progressFileAnimationImageOriginalRectKey: String
@available(OSX 10.9, *)
let progressFileIconKey: String
struct PropertyListMutabilityOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immutable: PropertyListMutabilityOptions { get }
  static var MutableContainers: PropertyListMutabilityOptions { get }
  static var MutableContainersAndLeaves: PropertyListMutabilityOptions { get }
}
enum PropertyListFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OpenStepFormat
  case XMLFormat_v1_0
  case BinaryFormat_v1_0
}
typealias PropertyListReadOptions = PropertyListMutabilityOptions
typealias PropertyListWriteOptions = Int
class PropertyListSerialization : Object {
  class func propertyList(plist: AnyObject, isValidFor format: PropertyListFormat) -> Bool
  @available(OSX 10.6, *)
  class func dataWithPropertyList(plist: AnyObject, format: PropertyListFormat, options opt: PropertyListWriteOptions) throws -> Data
  @available(OSX 10.6, *)
  class func writePropertyList(plist: AnyObject, to stream: OutputStream, format: PropertyListFormat, options opt: PropertyListWriteOptions, error: ErrorPointer) -> Int
  @available(OSX 10.6, *)
  class func propertyListWith(data: Data, options opt: PropertyListReadOptions = [], format: UnsafeMutablePointer<PropertyListFormat>) throws -> AnyObject
  @available(OSX 10.6, *)
  class func propertyListWith(stream: InputStream, options opt: PropertyListReadOptions = [], format: UnsafeMutablePointer<PropertyListFormat>) throws -> AnyObject
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use dataWithPropertyList:format:options:error: instead.")
  class func dataFromPropertyList(plist: AnyObject, format: PropertyListFormat, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> Data?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use propertyListWithData:options:format:error: instead.")
  class func propertyListFrom(data: Data, mutabilityOption opt: PropertyListMutabilityOptions = [], format: UnsafeMutablePointer<PropertyListFormat>, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> AnyObject?
  init()
}
class ProtocolChecker : Proxy {
  var `protocol`: Protocol { get }
  var target: Object? { get }
}
extension ProtocolChecker {
  init(target anObject: Object, protocol aProtocol: Protocol)
}
class Proxy : ObjectProtocol {
  class func alloc() -> Self
  class func `class`() -> AnyClass
  class func forwardInvocation(invocation: Invocation)
  func forwardInvocation(invocation: Invocation)
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
  func _bridgeToObjectiveC() -> Value
  static func _forceBridgeFromObjectiveC(x: Value, inout result: NSRange?)
  static func _conditionallyBridgeFromObjectiveC(x: Value, inout result: NSRange?) -> Bool
  typealias _ObjectiveCType = Value
}
typealias NSRange = _NSRange
typealias RangePointer = UnsafeMutablePointer<NSRange>
func makeRange(loc: Int, _ len: Int) -> NSRange
func maxRange(range: NSRange) -> Int
func locationInRange(loc: Int, _ range: NSRange) -> Bool
func equalRanges(range1: NSRange, _ range2: NSRange) -> Bool
func unionRange(range1: NSRange, _ range2: NSRange) -> NSRange
func intersectionRange(range1: NSRange, _ range2: NSRange) -> NSRange
func stringFromRange(range: NSRange) -> String
func rangeFromString(aString: String) -> NSRange
extension Value {
  /*not inherited*/ init(range: NSRange)
  var rangeValue: NSRange { get }
}
struct RegularExpressionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitive: RegularExpressionOptions { get }
  static var AllowCommentsAndWhitespace: RegularExpressionOptions { get }
  static var IgnoreMetacharacters: RegularExpressionOptions { get }
  static var DotMatchesLineSeparators: RegularExpressionOptions { get }
  static var AnchorsMatchLines: RegularExpressionOptions { get }
  static var UseUnixLineSeparators: RegularExpressionOptions { get }
  static var UseUnicodeWordBoundaries: RegularExpressionOptions { get }
}
@available(OSX 10.7, *)
class RegularExpression : Object, Copying, Coding {
  init(pattern: String, options: RegularExpressionOptions = []) throws
  var pattern: String { get }
  var options: RegularExpressionOptions { get }
  var numberOfCaptureGroups: Int { get }
  class func escapedPatternFor(string: String) -> String
  convenience init()
  @available(OSX 10.7, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct MatchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ReportProgress: MatchingOptions { get }
  static var ReportCompletion: MatchingOptions { get }
  static var Anchored: MatchingOptions { get }
  static var WithTransparentBounds: MatchingOptions { get }
  static var WithoutAnchoringBounds: MatchingOptions { get }
}
struct MatchingFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Progress: MatchingFlags { get }
  static var Completed: MatchingFlags { get }
  static var HitEnd: MatchingFlags { get }
  static var RequiredEnd: MatchingFlags { get }
  static var InternalError: MatchingFlags { get }
}
extension RegularExpression {
  func enumerateMatchesIn(string: String, options: MatchingOptions = [], range: NSRange, usingBlock block: (TextCheckingResult?, MatchingFlags, UnsafeMutablePointer<ObjCBool>) -> Void)
  func matchesIn(string: String, options: MatchingOptions = [], range: NSRange) -> [TextCheckingResult]
  func numberOfMatchesIn(string: String, options: MatchingOptions = [], range: NSRange) -> Int
  func firstMatchIn(string: String, options: MatchingOptions = [], range: NSRange) -> TextCheckingResult?
  func rangeOfFirstMatchIn(string: String, options: MatchingOptions = [], range: NSRange) -> NSRange
}
extension RegularExpression {
  func stringByReplacingMatchesIn(string: String, options: MatchingOptions = [], range: NSRange, withTemplate templ: String) -> String
  func replaceMatchesIn(string: MutableString, options: MatchingOptions = [], range: NSRange, withTemplate templ: String) -> Int
  func replacementStringFor(result: TextCheckingResult, in string: String, offset: Int, template templ: String) -> String
  class func escapedTemplateFor(string: String) -> String
}
@available(OSX 10.7, *)
class DataDetector : RegularExpression {
  init(types checkingTypes: TextCheckingTypes) throws
  var checkingTypes: TextCheckingTypes { get }
  convenience init(pattern: String, options: RegularExpressionOptions = []) throws
  convenience init()
  init?(coder aDecoder: Coder)
}
let defaultRunLoopMode: String
@available(OSX 10.5, *)
let runLoopCommonModes: String
class RunLoop : Object {
  class func current() -> RunLoop
  @available(OSX 10.5, *)
  class func main() -> RunLoop
  var currentMode: String? { get }
  func getCFRunLoop() -> CFRunLoop
  func add(timer: Timer, forMode mode: String)
  func add(aPort: Port, forMode mode: String)
  func remove(aPort: Port, forMode mode: String)
  func limitDateForMode(mode: String) -> Date?
  func acceptInputForMode(mode: String, before limitDate: Date)
  init()
}
extension RunLoop {
  func run()
  func runUntil(limitDate: Date)
  func runMode(mode: String, before limitDate: Date) -> Bool
}

/**************** 	Delayed perform	 ******************/
extension Object {
  class func perform(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: TimeInterval, inModes modes: [String])
  func perform(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: TimeInterval, inModes modes: [String])
  class func perform(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: TimeInterval)
  func perform(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: TimeInterval)
  class func cancelPreviousPerformRequestsWithTarget(aTarget: AnyObject, selector aSelector: Selector, object anArgument: AnyObject?)
  class func cancelPreviousPerformRequestsWithTarget(aTarget: AnyObject)
}
extension RunLoop {
  func perform(aSelector: Selector, target: AnyObject, argument arg: AnyObject?, order: Int, modes: [String])
  func cancelPerform(aSelector: Selector, target: AnyObject, argument arg: AnyObject?)
  func cancelPerformSelectorsWithTarget(target: AnyObject)
}
class Scanner : Object, Copying {
  var string: String { get }
  var scanLocation: Int
  @NSCopying var charactersToBeSkipped: CharacterSet?
  var caseSensitive: Bool
  var locale: AnyObject?
  init(string: String)
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension Scanner {
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
  func scanCharactersFrom(set: CharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpTo(string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToCharactersFrom(set: CharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  var isAtEnd: Bool { get }
  class func localizedScannerWith(string: String) -> AnyObject
}
class ScriptClassDescription : ClassDescription {
  /*not inherited*/ init?(forClass aClass: AnyClass)
  init?(suiteName: String, className: String, dictionary classDeclaration: [Object : AnyObject]?)
  var suiteName: String? { get }
  var className: String? { get }
  var implementationClassName: String? { get }
  var superclass: ScriptClassDescription? { get }
  var appleEventCode: FourCharCode { get }
  func matchesAppleEventCode(appleEventCode: FourCharCode) -> Bool
  func supportsCommand(commandDescription: ScriptCommandDescription) -> Bool
  func selectorForCommand(commandDescription: ScriptCommandDescription) -> Selector
  func typeForKey(key: String) -> String?
  func forKey(key: String) -> ScriptClassDescription?
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
extension ScriptClassDescription {
}
extension Object {
  var classCode: FourCharCode { get }
  var className: String { get }
  class func classCode() -> FourCharCode
  class func className() -> String
}
class ScriptCoercionHandler : Object {
  class func shared() -> ScriptCoercionHandler
  func coerceValue(value: AnyObject, to toClass: AnyClass) -> AnyObject?
  func registerCoercer(coercer: AnyObject, selector: Selector, toConvertFrom fromClass: AnyClass, to toClass: AnyClass)
  init()
}
var noScriptError: Int { get }
var receiverEvaluationScriptError: Int { get }
var keySpecifierEvaluationScriptError: Int { get }
var argumentEvaluationScriptError: Int { get }
var receiversCantHandleCommandScriptError: Int { get }
var requiredArgumentsMissingScriptError: Int { get }
var argumentsWrongScriptError: Int { get }
var unknownKeyScriptError: Int { get }
var internalScriptError: Int { get }
var operationNotSupportedForKeyScriptError: Int { get }
var cannotCreateScriptCommandError: Int { get }
class ScriptCommand : Object, Coding {
  init(commandDescription commandDef: ScriptCommandDescription)
  convenience init?(coder inCoder: Coder)
  var commandDescription: ScriptCommandDescription { get }
  var directParameter: AnyObject?
  var receiversSpecifier: ScriptObjectSpecifier?
  var evaluatedReceivers: AnyObject? { get }
  var arguments: [String : AnyObject]?
  var evaluatedArguments: [String : AnyObject]? { get }
  var isWellFormed: Bool { get }
  func performDefaultImplementation() -> AnyObject?
  func execute() -> AnyObject?
  var scriptErrorNumber: Int
  @available(OSX 10.5, *)
  var scriptErrorOffendingObjectDescriptor: AppleEventDescriptor?
  @available(OSX 10.5, *)
  var scriptErrorExpectedTypeDescriptor: AppleEventDescriptor?
  var scriptErrorString: String?
  class func current() -> ScriptCommand?
  @NSCopying var appleEvent: AppleEventDescriptor? { get }
  func suspendExecution()
  func resumeExecutionWithResult(result: AnyObject?)
  convenience init()
  func encodeWith(aCoder: Coder)
}
class ScriptCommandDescription : Object, Coding {
  init?(suiteName: String, commandName: String, dictionary commandDeclaration: [Object : AnyObject]?)
  init?(coder inCoder: Coder)
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
  func createCommandInstance() -> ScriptCommand
  func createCommandInstance(zone zone: Zone = nil) -> ScriptCommand
  func encodeWith(aCoder: Coder)
}
class ScriptExecutionContext : Object {
  class func shared() -> ScriptExecutionContext
  var topLevelObject: AnyObject?
  var objectBeingTested: AnyObject?
  var rangeContainerObject: AnyObject?
  init()
}
let operationNotSupportedForKeyException: String
extension Object {
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
var noSpecifierError: Int { get }
var noTopLevelContainersSpecifierError: Int { get }
var containerSpecifierError: Int { get }
var unknownKeySpecifierError: Int { get }
var invalidIndexSpecifierError: Int { get }
var internalSpecifierError: Int { get }
var operationNotSupportedForKeySpecifierError: Int { get }
enum InsertionPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PositionAfter
  case PositionBefore
  case PositionBeginning
  case PositionEnd
  case PositionReplace
}
enum RelativePosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case After
  case Before
}
enum WhoseSubelementIdentifier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case IndexSubelement
  case EverySubelement
  case MiddleSubelement
  case RandomSubelement
  case NoSubelement
}
class ScriptObjectSpecifier : Object, Coding {
  @available(OSX 10.5, *)
  /*not inherited*/ init?(descriptor: AppleEventDescriptor)
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: Coder)
  unowned(unsafe) var child: @sil_unmanaged ScriptObjectSpecifier?
  var container: ScriptObjectSpecifier?
  var containerIsObjectBeingTested: Bool
  var containerIsRangeContainerObject: Bool
  var key: String
  var containerClassDescription: ScriptClassDescription?
  var keyClassDescription: ScriptClassDescription? { get }
  func indicesOfObjectsByEvaluatingWithContainer(container: AnyObject, count: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Int>
  func objectsByEvaluatingWithContainers(containers: AnyObject) -> AnyObject?
  var objectsByEvaluatingSpecifier: AnyObject? { get }
  var evaluationErrorNumber: Int
  var evaluationError: ScriptObjectSpecifier? { get }
  @available(OSX 10.5, *)
  @NSCopying var descriptor: AppleEventDescriptor? { get }
  convenience init()
  func encodeWith(aCoder: Coder)
}
extension Object {
  var objectSpecifier: ScriptObjectSpecifier? { get }
  class func indicesOfObjectsByEvaluatingObjectSpecifier(specifier: ScriptObjectSpecifier) -> [Number]?
  func indicesOfObjectsByEvaluatingObjectSpecifier(specifier: ScriptObjectSpecifier) -> [Number]?
  class func objectSpecifier() -> ScriptObjectSpecifier?
}
class IndexSpecifier : ScriptObjectSpecifier {
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String, index: Int)
  var index: Int
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: Coder)
  convenience init()
}
class MiddleSpecifier : ScriptObjectSpecifier {
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: Coder)
  convenience init()
}
class NameSpecifier : ScriptObjectSpecifier {
  init?(coder inCoder: Coder)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String, name: String)
  var name: String
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  convenience init()
}
class PositionalSpecifier : Object {
  init(position: InsertionPosition, objectSpecifier specifier: ScriptObjectSpecifier)
  @available(OSX 10.5, *)
  var position: InsertionPosition { get }
  @available(OSX 10.5, *)
  var objectSpecifier: ScriptObjectSpecifier { get }
  func setInsertionClassDescription(classDescription: ScriptClassDescription)
  func evaluate()
  var insertionContainer: AnyObject? { get }
  var insertionKey: String? { get }
  var insertionIndex: Int { get }
  var insertionReplaces: Bool { get }
  convenience init()
}
class PropertySpecifier : ScriptObjectSpecifier {
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: Coder)
  convenience init()
}
class RandomSpecifier : ScriptObjectSpecifier {
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: Coder)
  convenience init()
}
class RangeSpecifier : ScriptObjectSpecifier {
  init?(coder inCoder: Coder)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String, start startSpec: ScriptObjectSpecifier?, end endSpec: ScriptObjectSpecifier?)
  var startSpecifier: ScriptObjectSpecifier?
  var endSpecifier: ScriptObjectSpecifier?
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  convenience init()
}
class RelativeSpecifier : ScriptObjectSpecifier {
  init?(coder inCoder: Coder)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String, relativePosition relPos: RelativePosition, baseSpecifier: ScriptObjectSpecifier?)
  var relativePosition: RelativePosition
  var baseSpecifier: ScriptObjectSpecifier?
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  convenience init()
}
class UniqueIDSpecifier : ScriptObjectSpecifier {
  init?(coder inCoder: Coder)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String, uniqueID: AnyObject)
  @NSCopying var uniqueID: AnyObject
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  convenience init()
}
class WhoseSpecifier : ScriptObjectSpecifier {
  init?(coder inCoder: Coder)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String, test: ScriptWhoseTest)
  var test: ScriptWhoseTest
  var startSubelementIdentifier: WhoseSubelementIdentifier
  var startSubelementIndex: Int
  var endSubelementIdentifier: WhoseSubelementIdentifier
  var endSubelementIndex: Int
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  convenience init()
}
enum SaveOptions : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Yes
  case No
  case Ask
}
class CloneCommand : ScriptCommand {
  func setReceiversSpecifier(receiversRef: ScriptObjectSpecifier?)
  var keySpecifier: ScriptObjectSpecifier { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class CloseCommand : ScriptCommand {
  var saveOptions: SaveOptions { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class CountCommand : ScriptCommand {
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class CreateCommand : ScriptCommand {
  var createClassDescription: ScriptClassDescription { get }
  var resolvedKeyDictionary: [String : AnyObject] { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class DeleteCommand : ScriptCommand {
  func setReceiversSpecifier(receiversRef: ScriptObjectSpecifier?)
  var keySpecifier: ScriptObjectSpecifier { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class ExistsCommand : ScriptCommand {
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class GetCommand : ScriptCommand {
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class MoveCommand : ScriptCommand {
  func setReceiversSpecifier(receiversRef: ScriptObjectSpecifier?)
  var keySpecifier: ScriptObjectSpecifier { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class QuitCommand : ScriptCommand {
  var saveOptions: SaveOptions { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class SetCommand : ScriptCommand {
  func setReceiversSpecifier(receiversRef: ScriptObjectSpecifier?)
  var keySpecifier: ScriptObjectSpecifier { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class ScriptSuiteRegistry : Object {
  class func shared() -> ScriptSuiteRegistry
  class func setSharedScriptSuiteRegistry(registry: ScriptSuiteRegistry)
  func loadSuitesFrom(bundle: Bundle)
  func loadSuiteWith(suiteDeclaration: [Object : AnyObject], from bundle: Bundle)
  func register(classDescription: ScriptClassDescription)
  func register(commandDescription: ScriptCommandDescription)
  var suiteNames: [String] { get }
  func appleEventCodeForSuite(suiteName: String) -> FourCharCode
  func bundleForSuite(suiteName: String) -> Bundle?
  func classDescriptionsInSuite(suiteName: String) -> [String : ScriptClassDescription]?
  func commandDescriptionsInSuite(suiteName: String) -> [String : ScriptCommandDescription]?
  func suiteForAppleEventCode(appleEventCode: FourCharCode) -> String?
  func classDescriptionWithAppleEventCode(appleEventCode: FourCharCode) -> ScriptClassDescription?
  func commandDescriptionWithAppleEventClass(appleEventClassCode: FourCharCode, andAppleEventCode appleEventIDCode: FourCharCode) -> ScriptCommandDescription?
  func aeteResource(languageName: String) -> Data?
  init()
}
enum TestComparisonOperation : UInt {
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
class ScriptWhoseTest : Object, Coding {
  func isTrue() -> Bool
  init()
  init?(coder inCoder: Coder)
  func encodeWith(aCoder: Coder)
}
class LogicalTest : ScriptWhoseTest {
  init(andTestWith subTests: [SpecifierTest])
  init(orTestWith subTests: [SpecifierTest])
  init(notTestWith subTest: ScriptWhoseTest)
  convenience init()
  init?(coder inCoder: Coder)
}
class SpecifierTest : ScriptWhoseTest {
  init?(coder inCoder: Coder)
  init(objectSpecifier obj1: ScriptObjectSpecifier?, comparisonOperator compOp: TestComparisonOperation, test obj2: AnyObject?)
}
extension Object {
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
extension Object {
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
class NSSet : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func member(object: AnyObject) -> AnyObject?
  func objectEnumerator() -> Enumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func intersectsSet(otherSet: Set<Object>) -> Bool
  func isEqualTo(otherSet: Set<Object>) -> Bool
  func isSubsetOf(otherSet: Set<Object>) -> Bool
  @available(OSX 10.5, *)
  func adding(anObject: AnyObject) -> Set<Object>
  @available(OSX 10.5, *)
  func addingObjectsFrom(other: Set<Object>) -> Set<Object>
  @available(OSX 10.5, *)
  func addingObjectsFrom(other: [AnyObject]) -> Set<Object>
  @available(OSX 10.6, *)
  func enumerateObjectsUsing(block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateObjects(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func objectsPassingTest(predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
  @available(OSX 10.6, *)
  func objects(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
}
extension NSSet {
  convenience init(object: AnyObject)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}

/****************	Mutable Set	****************/
class MutableSet : NSSet {
  func add(object: AnyObject)
  func remove(object: AnyObject)
  init?(coder aDecoder: Coder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
extension MutableSet {
  func addObjectsFrom(array: [AnyObject])
  func intersectSet(otherSet: Set<Object>)
  func minusSet(otherSet: Set<Object>)
  func removeAllObjects()
  func unionSet(otherSet: Set<Object>)
  func setSet(otherSet: Set<Object>)
}
extension MutableSet {
}

/****************	Counted Set	****************/
class CountedSet : MutableSet {
  init(capacity numItems: Int)
  convenience init(array: [AnyObject])
  convenience init(set: Set<Object>)
  func countFor(object: AnyObject) -> Int
  func objectEnumerator() -> Enumerator
  func add(object: AnyObject)
  func remove(object: AnyObject)
  init?(coder aDecoder: Coder)
  convenience init()
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<Object>, copyItems flag: Bool)
}
class SortDescriptor : Object, SecureCoding, Copying {
  init(key: String?, ascending: Bool)
  init(key: String?, ascending: Bool, selector: Selector)
  init?(coder: Coder)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector { get }
  @available(OSX 10.9, *)
  func allowEvaluation()
  @available(OSX 10.6, *)
  init(key: String?, ascending: Bool, comparator cmptr: Comparator)
  @available(OSX 10.6, *)
  var comparator: Comparator { get }
  func compare(object1: AnyObject, to object2: AnyObject) -> ComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension NSSet {
  @available(OSX 10.6, *)
  func sortedArrayUsing(sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArrayUsing(sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension MutableArray {
  func sortUsing(sortDescriptors: [SortDescriptor])
}
extension OrderedSet {
  @available(OSX 10.7, *)
  func sortedArrayUsing(sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension MutableOrderedSet {
  @available(OSX 10.7, *)
  func sortUsing(sortDescriptors: [SortDescriptor])
}
class SpellServer : Object {
  unowned(unsafe) var delegate: @sil_unmanaged SpellServerDelegate?
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
protocol SpellServerDelegate : ObjectProtocol {
  optional func spellServer(sender: SpellServer, findMisspelledWordIn stringToCheck: String, language: String, wordCount: UnsafeMutablePointer<Int>, countOnly: Bool) -> NSRange
  optional func spellServer(sender: SpellServer, suggestGuessesForWord word: String, inLanguage language: String) -> [String]?
  optional func spellServer(sender: SpellServer, didLearnWord word: String, inLanguage language: String)
  optional func spellServer(sender: SpellServer, didForgetWord word: String, inLanguage language: String)
  optional func spellServer(sender: SpellServer, suggestCompletionsForPartialWordRange range: NSRange, in string: String, language: String) -> [String]?
  @available(OSX 10.5, *)
  optional func spellServer(sender: SpellServer, checkGrammarIn stringToCheck: String, language: String?, details: AutoreleasingUnsafeMutablePointer<NSArray?>) -> NSRange
  @available(OSX 10.6, *)
  optional func spellServer(sender: SpellServer, check stringToCheck: String, offset: Int, types checkingTypes: TextCheckingTypes, options: [String : AnyObject]? = [:], orthography: Orthography?, wordCount: UnsafeMutablePointer<Int>) -> [TextCheckingResult]?
  @available(OSX 10.7, *)
  optional func spellServer(sender: SpellServer, recordResponse response: Int, toCorrection correction: String, forWord word: String, language: String)
}
@available(OSX 10.5, *)
let grammarRange: String
@available(OSX 10.5, *)
let grammarUserDescription: String
@available(OSX 10.5, *)
let grammarCorrections: String
enum StreamStatus : UInt {
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
struct StreamEvent : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: StreamEvent { get }
  static var OpenCompleted: StreamEvent { get }
  static var HasBytesAvailable: StreamEvent { get }
  static var HasSpaceAvailable: StreamEvent { get }
  static var ErrorOccurred: StreamEvent { get }
  static var EndEncountered: StreamEvent { get }
}
class Stream : Object {
  func open()
  func close()
  unowned(unsafe) var delegate: @sil_unmanaged StreamDelegate?
  func propertyForKey(key: String) -> AnyObject?
  func setProperty(property: AnyObject?, forKey key: String) -> Bool
  func scheduleIn(aRunLoop: RunLoop, forMode mode: String)
  func removeFrom(aRunLoop: RunLoop, forMode mode: String)
  var streamStatus: StreamStatus { get }
  @NSCopying var streamError: Error? { get }
  init()
}
class InputStream : Stream {
  func read(buffer: UnsafeMutablePointer<UInt8>, maxLength len: Int) -> Int
  func getBuffer(buffer: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, length len: UnsafeMutablePointer<Int>) -> Bool
  var hasBytesAvailable: Bool { get }
  init(data: Data)
  @available(OSX 10.6, *)
  init?(url: URL)
  convenience init()
}
class OutputStream : Stream {
  func write(buffer: UnsafePointer<UInt8>, maxLength len: Int) -> Int
  var hasSpaceAvailable: Bool { get }
  init(toMemory: ())
  init(toBuffer buffer: UnsafeMutablePointer<UInt8>, capacity: Int)
  @available(OSX 10.6, *)
  init?(url: URL, append shouldAppend: Bool)
  convenience init()
}
extension Stream {
  @available(OSX 10.10, *)
  class func getStreamsToHostWithName(hostname: String, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>)
  @available(OSX, introduced=10.3, deprecated=10.10, message="Please use getStreamsToHostWithName:port:inputStream:outputStream: instead")
  class func getStreamsTo(host: Host, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>)
}
extension Stream {
  @available(OSX 10.10, *)
  class func getBoundStreamsWithBufferSize(bufferSize: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>)
}
extension InputStream {
  convenience init?(fileAtPath path: String)
}
extension OutputStream {
  convenience init?(toFileAtPath path: String, append shouldAppend: Bool)
  class func toMemory() -> Self
}
protocol StreamDelegate : ObjectProtocol {
  optional func stream(aStream: Stream, handle eventCode: StreamEvent)
}
@available(OSX 10.3, *)
let streamSocketSecurityLevelKey: String
@available(OSX 10.3, *)
let streamSocketSecurityLevelNone: String
@available(OSX 10.3, *)
let streamSocketSecurityLevelSSLv2: String
@available(OSX 10.3, *)
let streamSocketSecurityLevelSSLv3: String
@available(OSX 10.3, *)
let streamSocketSecurityLevelTLSv1: String
@available(OSX 10.3, *)
let streamSocketSecurityLevelNegotiatedSSL: String
@available(OSX 10.3, *)
let streamSOCKSProxyConfigurationKey: String
@available(OSX 10.3, *)
let streamSOCKSProxyHostKey: String
@available(OSX 10.3, *)
let streamSOCKSProxyPortKey: String
@available(OSX 10.3, *)
let streamSOCKSProxyVersionKey: String
@available(OSX 10.3, *)
let streamSOCKSProxyUserKey: String
@available(OSX 10.3, *)
let streamSOCKSProxyPasswordKey: String
@available(OSX 10.3, *)
let streamSOCKSProxyVersion4: String
@available(OSX 10.3, *)
let streamSOCKSProxyVersion5: String
@available(OSX 10.3, *)
let streamDataWrittenToMemoryStreamKey: String
@available(OSX 10.3, *)
let streamFileCurrentOffsetKey: String
@available(OSX 10.3, *)
let streamSocketSSLErrorDomain: String
@available(OSX 10.3, *)
let streamSOCKSErrorDomain: String
@available(OSX 10.7, *)
let streamNetworkServiceType: String
@available(OSX 10.7, *)
let streamNetworkServiceTypeVoIP: String
@available(OSX 10.7, *)
let streamNetworkServiceTypeVideo: String
@available(OSX 10.7, *)
let streamNetworkServiceTypeBackground: String
@available(OSX 10.7, *)
let streamNetworkServiceTypeVoice: String
typealias unichar = UInt16
struct StringCompareOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitiveSearch: StringCompareOptions { get }
  static var LiteralSearch: StringCompareOptions { get }
  static var BackwardsSearch: StringCompareOptions { get }
  static var AnchoredSearch: StringCompareOptions { get }
  static var NumericSearch: StringCompareOptions { get }
  @available(OSX 10.5, *)
  static var DiacriticInsensitiveSearch: StringCompareOptions { get }
  @available(OSX 10.5, *)
  static var WidthInsensitiveSearch: StringCompareOptions { get }
  @available(OSX 10.5, *)
  static var ForcedOrderingSearch: StringCompareOptions { get }
  @available(OSX 10.7, *)
  static var RegularExpressionSearch: StringCompareOptions { get }
}
var ASCIIStringEncoding: UInt { get }
var NEXTSTEPStringEncoding: UInt { get }
var japaneseEUCStringEncoding: UInt { get }
var UTF8StringEncoding: UInt { get }
var ISOLatin1StringEncoding: UInt { get }
var symbolStringEncoding: UInt { get }
var nonLossyASCIIStringEncoding: UInt { get }
var shiftJISStringEncoding: UInt { get }
var ISOLatin2StringEncoding: UInt { get }
var unicodeStringEncoding: UInt { get }
var windowsCP1251StringEncoding: UInt { get }
var windowsCP1252StringEncoding: UInt { get }
var windowsCP1253StringEncoding: UInt { get }
var windowsCP1254StringEncoding: UInt { get }
var windowsCP1250StringEncoding: UInt { get }
var ISO2022JPStringEncoding: UInt { get }
var macOSRomanStringEncoding: UInt { get }
var UTF16StringEncoding: UInt { get }
var UTF16BigEndianStringEncoding: UInt { get }
var UTF16LittleEndianStringEncoding: UInt { get }
var UTF32StringEncoding: UInt { get }
var UTF32BigEndianStringEncoding: UInt { get }
var UTF32LittleEndianStringEncoding: UInt { get }
struct StringEncodingConversionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AllowLossy: StringEncodingConversionOptions { get }
  static var ExternalRepresentation: StringEncodingConversionOptions { get }
}
class NSString : Object, Copying, MutableCopying, SecureCoding {
  var length: Int { get }
  func characterAt(index: Int) -> unichar
  init()
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
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
  convenience init(format: NSString, locale: Locale?, _ args: CVarArgType...)
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
  func compare(string: String) -> ComparisonResult
  func compare(string: String, options mask: StringCompareOptions = []) -> ComparisonResult
  func compare(string: String, options mask: StringCompareOptions = [], range compareRange: NSRange) -> ComparisonResult
  func compare(string: String, options mask: StringCompareOptions = [], range compareRange: NSRange, locale: AnyObject?) -> ComparisonResult
  func caseInsensitiveCompare(string: String) -> ComparisonResult
  func localizedCompare(string: String) -> ComparisonResult
  func localizedCaseInsensitiveCompare(string: String) -> ComparisonResult
  @available(OSX 10.6, *)
  func localizedStandardCompare(string: String) -> ComparisonResult
  func isEqualTo(aString: String) -> Bool
  func hasPrefix(str: String) -> Bool
  func hasSuffix(str: String) -> Bool
  func commonPrefixWith(str: String, options mask: StringCompareOptions = []) -> String
  @available(OSX 10.10, *)
  func contains(str: String) -> Bool
  @available(OSX 10.10, *)
  func localizedCaseInsensitiveContains(str: String) -> Bool
  @available(OSX 10.11, *)
  func localizedStandardContains(str: String) -> Bool
  @available(OSX 10.11, *)
  func localizedStandardRangeOf(str: String) -> NSRange
  func rangeOf(searchString: String) -> NSRange
  func rangeOf(searchString: String, options mask: StringCompareOptions = []) -> NSRange
  func rangeOf(searchString: String, options mask: StringCompareOptions = [], range searchRange: NSRange) -> NSRange
  @available(OSX 10.5, *)
  func rangeOf(searchString: String, options mask: StringCompareOptions = [], range searchRange: NSRange, locale: Locale?) -> NSRange
  func rangeOfCharacterFrom(searchSet: CharacterSet) -> NSRange
  func rangeOfCharacterFrom(searchSet: CharacterSet, options mask: StringCompareOptions = []) -> NSRange
  func rangeOfCharacterFrom(searchSet: CharacterSet, options mask: StringCompareOptions = [], range searchRange: NSRange) -> NSRange
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
  func uppercaseStringWith(locale: Locale?) -> String
  @available(OSX 10.8, *)
  func lowercaseStringWith(locale: Locale?) -> String
  @available(OSX 10.8, *)
  func capitalizedStringWith(locale: Locale?) -> String
  func getLineStart(startPtr: UnsafeMutablePointer<Int>, end lineEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func lineRangeFor(range: NSRange) -> NSRange
  func getParagraphStart(startPtr: UnsafeMutablePointer<Int>, end parEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func paragraphRangeFor(range: NSRange) -> NSRange
  @available(OSX 10.6, *)
  func enumerateSubstringsIn(range: NSRange, options opts: StringEnumerationOptions = [], usingBlock block: (String?, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateLinesUsing(block: (String, UnsafeMutablePointer<ObjCBool>) -> Void)
  var utf8String: UnsafePointer<Int8> { get }
  var fastestEncoding: UInt { get }
  var smallestEncoding: UInt { get }
  func dataUsingEncoding(encoding: UInt, allowLossyConversion lossy: Bool) -> Data?
  func dataUsingEncoding(encoding: UInt) -> Data?
  func canBeConvertedToEncoding(encoding: UInt) -> Bool
  func cStringUsingEncoding(encoding: UInt) -> UnsafePointer<Int8>
  func getCString(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferCount: Int, encoding: UInt) -> Bool
  func getBytes(buffer: UnsafeMutablePointer<Void>, maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>, encoding: UInt, options: StringEncodingConversionOptions = [], range: NSRange, remaining leftover: RangePointer) -> Bool
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
  func componentsSeparatedByCharactersIn(separator: CharacterSet) -> [String]
  func byTrimmingCharactersIn(set: CharacterSet) -> String
  func byPaddingToLength(newLength: Int, withString padString: String, startingAt padIndex: Int) -> String
  @available(OSX 10.5, *)
  func folding(options options: StringCompareOptions = [], locale: Locale?) -> String
  @available(OSX 10.5, *)
  func replacingOccurrencesOf(target: String, withString replacement: String, options: StringCompareOptions = [], range searchRange: NSRange) -> String
  @available(OSX 10.5, *)
  func replacingOccurrencesOf(target: String, withString replacement: String) -> String
  @available(OSX 10.5, *)
  func replacingCharactersIn(range: NSRange, withString replacement: String) -> String
  @available(OSX 10.11, *)
  func applyingTransform(transform: String, reverse: Bool) -> String?
  func writeTo(url: URL, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  var description: String { get }
  var hash: Int { get }
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: Data, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: URL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: URL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
struct StringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByLines: StringEnumerationOptions { get }
  static var ByParagraphs: StringEnumerationOptions { get }
  static var ByComposedCharacterSequences: StringEnumerationOptions { get }
  static var ByWords: StringEnumerationOptions { get }
  static var BySentences: StringEnumerationOptions { get }
  static var Reverse: StringEnumerationOptions { get }
  static var SubstringNotRequired: StringEnumerationOptions { get }
  static var Localized: StringEnumerationOptions { get }
}
@available(OSX 10.11, *)
let stringTransformLatinToKatakana: String
@available(OSX 10.11, *)
let stringTransformLatinToHiragana: String
@available(OSX 10.11, *)
let stringTransformLatinToHangul: String
@available(OSX 10.11, *)
let stringTransformLatinToArabic: String
@available(OSX 10.11, *)
let stringTransformLatinToHebrew: String
@available(OSX 10.11, *)
let stringTransformLatinToThai: String
@available(OSX 10.11, *)
let stringTransformLatinToCyrillic: String
@available(OSX 10.11, *)
let stringTransformLatinToGreek: String
@available(OSX 10.11, *)
let stringTransformToLatin: String
@available(OSX 10.11, *)
let stringTransformMandarinToLatin: String
@available(OSX 10.11, *)
let stringTransformHiraganaToKatakana: String
@available(OSX 10.11, *)
let stringTransformFullwidthToHalfwidth: String
@available(OSX 10.11, *)
let stringTransformToXMLHex: String
@available(OSX 10.11, *)
let stringTransformToUnicodeName: String
@available(OSX 10.11, *)
let stringTransformStripCombiningMarks: String
@available(OSX 10.11, *)
let stringTransformStripDiacritics: String
extension NSString {
  @available(OSX 10.10, *)
  class func stringEncodingFor(data: Data, encodingOptions opts: [String : AnyObject]? = [:], convertedString string: AutoreleasingUnsafeMutablePointer<NSString?>, usedLossyConversion: UnsafeMutablePointer<ObjCBool>) -> UInt
}
@available(OSX 10.10, *)
let stringEncodingDetectionSuggestedEncodingsKey: String
@available(OSX 10.10, *)
let stringEncodingDetectionDisallowedEncodingsKey: String
@available(OSX 10.10, *)
let stringEncodingDetectionUseOnlySuggestedEncodingsKey: String
@available(OSX 10.10, *)
let stringEncodingDetectionAllowLossyKey: String
@available(OSX 10.10, *)
let stringEncodingDetectionFromWindowsKey: String
@available(OSX 10.10, *)
let stringEncodingDetectionLossySubstitutionKey: String
@available(OSX 10.10, *)
let stringEncodingDetectionLikelyLanguageKey: String
class MutableString : NSString {
  func replaceCharactersIn(range: NSRange, withString aString: String)
  init()
  init?(coder aDecoder: Coder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: Data, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: URL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: URL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}

extension MutableString {
  func appendFormat(format: NSString, _ args: CVarArgType...)
}
extension MutableString {
  func insert(aString: String, at loc: Int)
  func deleteCharactersIn(range: NSRange)
  func append(aString: String)
  func setString(aString: String)
  func replaceOccurrencesOf(target: String, withString replacement: String, options: StringCompareOptions = [], range searchRange: NSRange) -> Int
  @available(OSX 10.11, *)
  func applyTransform(transform: String, reverse: Bool, range: NSRange, updatedRange resultingRange: RangePointer) -> Bool
  init(capacity: Int)
}
let characterConversionException: String
let parseErrorException: String
extension NSString {
  func propertyList() -> AnyObject
  func propertyListFromStringsFileFormat() -> [Object : AnyObject]?
}
extension NSString {
  func getCharacters(buffer: UnsafeMutablePointer<unichar>)
}
var proprietaryStringEncoding: UInt { get }
class SimpleCString : NSString {
  init()
  init?(coder aDecoder: Coder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: Data, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: URL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: URL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
class ConstantString : SimpleCString {
  init()
  init?(coder aDecoder: Coder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: Data, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: URL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: URL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
@available(OSX 10.6, *)
enum TaskTerminationReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Exit
  case UncaughtSignal
}
class Task : Object {
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
  var terminationReason: TaskTerminationReason { get }
  @available(OSX 10.7, *)
  var terminationHandler: ((Task) -> Void)?
  @available(OSX 10.10, *)
  var qualityOfService: QualityOfService
}
extension Task {
  class func launchedTaskWithLaunchPath(path: String, arguments: [String]) -> Task
  func waitUntilExit()
}
let taskDidTerminateNotification: String
struct TextCheckingType : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var Orthography: TextCheckingType { get }
  static var Spelling: TextCheckingType { get }
  static var Grammar: TextCheckingType { get }
  static var Date: TextCheckingType { get }
  static var Address: TextCheckingType { get }
  static var Link: TextCheckingType { get }
  static var Quote: TextCheckingType { get }
  static var Dash: TextCheckingType { get }
  static var Replacement: TextCheckingType { get }
  static var Correction: TextCheckingType { get }
  @available(OSX 10.7, *)
  static var RegularExpression: TextCheckingType { get }
  @available(OSX 10.7, *)
  static var PhoneNumber: TextCheckingType { get }
  @available(OSX 10.7, *)
  static var TransitInformation: TextCheckingType { get }
}
typealias TextCheckingTypes = UInt64
var textCheckingAllSystemTypes: TextCheckingTypes { get }
var textCheckingAllCustomTypes: TextCheckingTypes { get }
var textCheckingAllTypes: TextCheckingTypes { get }
@available(OSX 10.6, *)
class TextCheckingResult : Object, Copying, Coding {
  var resultType: TextCheckingType { get }
  var range: NSRange { get }
  init()
  @available(OSX 10.6, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.6, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension TextCheckingResult {
  @NSCopying var orthography: Orthography? { get }
  var grammarDetails: [String]? { get }
  @NSCopying var date: Date? { get }
  @NSCopying var timeZone: TimeZone? { get }
  var duration: TimeInterval { get }
  @available(OSX 10.7, *)
  var components: [String : String]? { get }
  @NSCopying var url: URL? { get }
  var replacementString: String? { get }
  @available(OSX 10.9, *)
  var alternativeStrings: [String]? { get }
  @available(OSX 10.7, *)
  @NSCopying var regularExpression: RegularExpression? { get }
  @available(OSX 10.7, *)
  var phoneNumber: String? { get }
  var addressComponents: [String : String]? { get }
  @available(OSX 10.7, *)
  var numberOfRanges: Int { get }
  @available(OSX 10.7, *)
  func rangeAt(idx: Int) -> NSRange
  @available(OSX 10.7, *)
  func adjustingRangesWithOffset(offset: Int) -> TextCheckingResult
}
@available(OSX 10.6, *)
let textCheckingNameKey: String
@available(OSX 10.6, *)
let textCheckingJobTitleKey: String
@available(OSX 10.6, *)
let textCheckingOrganizationKey: String
@available(OSX 10.6, *)
let textCheckingStreetKey: String
@available(OSX 10.6, *)
let textCheckingCityKey: String
@available(OSX 10.6, *)
let textCheckingStateKey: String
@available(OSX 10.6, *)
let textCheckingZIPKey: String
@available(OSX 10.6, *)
let textCheckingCountryKey: String
@available(OSX 10.6, *)
let textCheckingPhoneKey: String
@available(OSX 10.7, *)
let textCheckingAirlineKey: String
@available(OSX 10.7, *)
let textCheckingFlightKey: String
extension TextCheckingResult {
  class func orthographyCheckingResultWith(range: NSRange, orthography: Orthography) -> TextCheckingResult
  class func spellWith(range: NSRange) -> TextCheckingResult
  class func grammarCheckingResultWith(range: NSRange, details: [String]) -> TextCheckingResult
  class func dateCheckingResultWith(range: NSRange, date: Date) -> TextCheckingResult
  class func dateCheckingResultWith(range: NSRange, date: Date, timeZone: TimeZone, duration: TimeInterval) -> TextCheckingResult
  class func addressCheckingResultWith(range: NSRange, components: [String : String]) -> TextCheckingResult
  class func linkCheckingResultWith(range: NSRange, url: URL) -> TextCheckingResult
  class func quoteCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func dashCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func replacementCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func correctionCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  @available(OSX 10.9, *)
  class func correctionCheckingResultWith(range: NSRange, replacementString: String, alternativeStrings: [String]) -> TextCheckingResult
  @available(OSX 10.7, *)
  class func regularExpressionCheckingResultWithRanges(ranges: RangePointer, count: Int, regularExpression: RegularExpression) -> TextCheckingResult
  @available(OSX 10.7, *)
  class func phoneNumberWith(range: NSRange, phoneNumber: String) -> TextCheckingResult
  @available(OSX 10.7, *)
  class func transitInformationCheckingResultWith(range: NSRange, components: [String : String]) -> TextCheckingResult
}
class Thread : Object {
  class func current() -> Thread
  class func detachNewThreadSelector(selector: Selector, toTarget target: AnyObject, withObject argument: AnyObject?)
  class func isMultiThreaded() -> Bool
  var threadDictionary: MutableDictionary { get }
  class func sleepUntil(date: Date)
  class func sleepForTimeInterval(ti: TimeInterval)
  class func exit()
  class func threadPriority() -> Double
  class func setThreadPriority(p: Double) -> Bool
  @available(OSX 10.6, *)
  var threadPriority: Double
  @available(OSX 10.10, *)
  var qualityOfService: QualityOfService
  @available(OSX 10.5, *)
  class func callStackReturnAddresses() -> [Number]
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
  class func main() -> Thread
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
let willBecomeMultiThreadedNotification: String
let didBecomeSingleThreadedNotification: String
let threadWillExitNotification: String
extension Object {
  class func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  class func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(OSX 10.5, *)
  class func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(OSX 10.5, *)
  func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(OSX 10.5, *)
  class func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(OSX 10.5, *)
  func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(OSX 10.5, *)
  class func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
  @available(OSX 10.5, *)
  func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
}
class TimeZone : Object, Copying, SecureCoding {
  var name: String { get }
  @NSCopying var data: Data { get }
  func secondsFromGMTFor(aDate: Date) -> Int
  func abbreviationFor(aDate: Date) -> String?
  func isDaylightSavingTimeFor(aDate: Date) -> Bool
  @available(OSX 10.5, *)
  func daylightSavingTimeOffsetFor(aDate: Date) -> TimeInterval
  @available(OSX 10.5, *)
  func nextDaylightSavingTimeTransitionAfter(aDate: Date) -> Date?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension TimeZone {
  class func system() -> TimeZone
  class func resetSystemTimeZone()
  class func defaultTimeZone() -> TimeZone
  class func setDefaultTimeZone(aTimeZone: TimeZone)
  class func local() -> TimeZone
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
  var daylightSavingTimeOffset: TimeInterval { get }
  @available(OSX 10.5, *)
  @NSCopying var nextDaylightSavingTimeTransition: Date? { get }
  var description: String { get }
  func isEqualTo(aTimeZone: TimeZone) -> Bool
  @available(OSX 10.5, *)
  func localizedName(style: TimeZoneNameStyle, locale: Locale?) -> String?
}
enum TimeZoneNameStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Standard
  case ShortStandard
  case DaylightSaving
  case ShortDaylightSaving
  case Generic
  case ShortGeneric
}
extension TimeZone {
  init?(name tzName: String)
  init?(name tzName: String, data aData: Data?)
  convenience init(forSecondsFromGMT seconds: Int)
  convenience init?(abbreviation: String)
}
@available(OSX 10.5, *)
let systemTimeZoneDidChangeNotification: String
class Timer : Object {
  /*not inherited*/ init(timeInterval ti: TimeInterval, invocation: Invocation, repeats yesOrNo: Bool)
  class func scheduledTimerWithTimeInterval(ti: TimeInterval, invocation: Invocation, repeats yesOrNo: Bool) -> Timer
  /*not inherited*/ init(timeInterval ti: TimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo: AnyObject?, repeats yesOrNo: Bool)
  class func scheduledTimerWithTimeInterval(ti: TimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo: AnyObject?, repeats yesOrNo: Bool) -> Timer
  init(fire date: Date, interval ti: TimeInterval, target t: AnyObject, selector s: Selector, userInfo ui: AnyObject?, repeats rep: Bool)
  func fire()
  @NSCopying var fireDate: Date
  var timeInterval: TimeInterval { get }
  @available(OSX 10.9, *)
  var tolerance: TimeInterval
  func invalidate()
  var isValid: Bool { get }
  var userInfo: AnyObject? { get }
  convenience init()
}
class URL : Object, SecureCoding, Copying, URLHandleClient {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme: String, host: String?, path: String)
  @available(OSX 10.11, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(OSX 10.11, *)
  init(fileURLWithPath path: String, relativeTo baseURL: URL?)
  @available(OSX 10.5, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(OSX 10.11, *)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  @available(OSX 10.11, *)
  class func fileURLWithPath(path: String, relativeTo baseURL: URL?) -> URL
  @available(OSX 10.5, *)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool) -> URL
  class func fileURLWithPath(path: String) -> URL
  @available(OSX 10.9, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(OSX 10.9, *)
  class func fileURLWithFileSystemRepresentation(path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeTo baseURL: URL?)
  @available(OSX 10.11, *)
  init(dataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(OSX 10.11, *)
  init(absoluteURLWithDataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(OSX 10.11, *)
  class func absoluteURLWithDataRepresentation(data: Data, relativeTo baseURL: URL?) -> URL
  @available(OSX 10.11, *)
  @NSCopying var dataRepresentation: Data { get }
  var absoluteString: String { get }
  var relativeString: String? { get }
  @NSCopying var base: URL? { get }
  @NSCopying var absolute: URL { get }
  var scheme: String { get }
  var resourceSpecifier: String { get }
  var host: String? { get }
  @NSCopying var port: Number? { get }
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
  @NSCopying var standardized: URL? { get }
  @available(OSX 10.6, *)
  func checkResourceIsReachableAndReturnError(error: ErrorPointer) -> Bool
  @available(OSX 10.6, *)
  func isFileReferenceURL() -> Bool
  @available(OSX 10.6, *)
  func fileReference() -> URL?
  @available(OSX 10.6, *)
  @NSCopying var filePath: URL? { get }
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
  func bookmarkData(options options: URLBookmarkCreationOptions = [], includingResourceValuesForKeys keys: [String]?, relativeTo relativeURL: URL?) throws -> Data
  @available(OSX 10.6, *)
  convenience init(byResolvingBookmarkData bookmarkData: Data, options: URLBookmarkResolutionOptions = [], relativeTo relativeURL: URL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>) throws
  @available(OSX 10.6, *)
  class func resourceValuesForKeys(keys: [String], fromBookmarkData bookmarkData: Data) -> [String : AnyObject]?
  @available(OSX 10.6, *)
  class func writeBookmarkData(bookmarkData: Data, to bookmarkFileURL: URL, options: URLBookmarkFileCreationOptions) throws
  @available(OSX 10.6, *)
  class func bookmarkDataWithContentsOf(bookmarkFileURL: URL) throws -> Data
  @available(OSX 10.10, *)
  convenience init(byResolvingAliasFileAt url: URL, options: URLBookmarkResolutionOptions = []) throws
  @available(OSX 10.7, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(OSX 10.7, *)
  func stopAccessingSecurityScopedResource()
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}

extension URL : _FileReferenceLiteralConvertible {
  convenience init(failableFileReferenceLiteral path: String)
  required convenience init(fileReferenceLiteral path: String)
}

extension URL : _Reflectable {
  func _getMirror() -> _MirrorType
}
let URLFileScheme: String
@available(OSX 10.7, *)
let URLKeysOfUnsetValuesKey: String
@available(OSX 10.6, *)
let URLNameKey: String
@available(OSX 10.6, *)
let URLLocalizedNameKey: String
@available(OSX 10.6, *)
let URLIsRegularFileKey: String
@available(OSX 10.6, *)
let URLIsDirectoryKey: String
@available(OSX 10.6, *)
let URLIsSymbolicLinkKey: String
@available(OSX 10.6, *)
let URLIsVolumeKey: String
@available(OSX 10.6, *)
let URLIsPackageKey: String
@available(OSX 10.11, *)
let URLIsApplicationKey: String
@available(OSX 10.11, *)
let URLApplicationIsScriptableKey: String
@available(OSX 10.6, *)
let URLIsSystemImmutableKey: String
@available(OSX 10.6, *)
let URLIsUserImmutableKey: String
@available(OSX 10.6, *)
let URLIsHiddenKey: String
@available(OSX 10.6, *)
let URLHasHiddenExtensionKey: String
@available(OSX 10.6, *)
let URLCreationDateKey: String
@available(OSX 10.6, *)
let URLContentAccessDateKey: String
@available(OSX 10.6, *)
let URLContentModificationDateKey: String
@available(OSX 10.6, *)
let URLAttributeModificationDateKey: String
@available(OSX 10.6, *)
let URLLinkCountKey: String
@available(OSX 10.6, *)
let URLParentDirectoryURLKey: String
@available(OSX 10.6, *)
let URLVolumeURLKey: String
@available(OSX 10.6, *)
let URLTypeIdentifierKey: String
@available(OSX 10.6, *)
let URLLocalizedTypeDescriptionKey: String
@available(OSX 10.6, *)
let URLLabelNumberKey: String
@available(OSX 10.6, *)
let URLLabelColorKey: String
@available(OSX 10.6, *)
let URLLocalizedLabelKey: String
@available(OSX 10.6, *)
let URLEffectiveIconKey: String
@available(OSX 10.6, *)
let URLCustomIconKey: String
@available(OSX 10.7, *)
let URLFileResourceIdentifierKey: String
@available(OSX 10.7, *)
let URLVolumeIdentifierKey: String
@available(OSX 10.7, *)
let URLPreferredIOBlockSizeKey: String
@available(OSX 10.7, *)
let URLIsReadableKey: String
@available(OSX 10.7, *)
let URLIsWritableKey: String
@available(OSX 10.7, *)
let URLIsExecutableKey: String
@available(OSX 10.7, *)
let URLFileSecurityKey: String
@available(OSX 10.8, *)
let URLIsExcludedFromBackupKey: String
@available(OSX 10.9, *)
let URLTagNamesKey: String
@available(OSX 10.8, *)
let URLPathKey: String
@available(OSX 10.7, *)
let URLIsMountTriggerKey: String
@available(OSX 10.10, *)
let URLGenerationIdentifierKey: String
@available(OSX 10.10, *)
let URLDocumentIdentifierKey: String
@available(OSX 10.10, *)
let URLAddedToDirectoryDateKey: String
@available(OSX 10.10, *)
let URLQuarantinePropertiesKey: String
@available(OSX 10.7, *)
let URLFileResourceTypeKey: String
@available(OSX 10.7, *)
let URLFileResourceTypeNamedPipe: String
@available(OSX 10.7, *)
let URLFileResourceTypeCharacterSpecial: String
@available(OSX 10.7, *)
let URLFileResourceTypeDirectory: String
@available(OSX 10.7, *)
let URLFileResourceTypeBlockSpecial: String
@available(OSX 10.7, *)
let URLFileResourceTypeRegular: String
@available(OSX 10.7, *)
let URLFileResourceTypeSymbolicLink: String
@available(OSX 10.7, *)
let URLFileResourceTypeSocket: String
@available(OSX 10.7, *)
let URLFileResourceTypeUnknown: String
@available(OSX 10.10, *)
let URLThumbnailDictionaryKey: String
@available(OSX 10.10, *)
let URLThumbnailKey: String
@available(OSX 10.10, *)
let thumbnail1024x1024SizeKey: String
@available(OSX 10.6, *)
let URLFileSizeKey: String
@available(OSX 10.6, *)
let URLFileAllocatedSizeKey: String
@available(OSX 10.7, *)
let URLTotalFileSizeKey: String
@available(OSX 10.7, *)
let URLTotalFileAllocatedSizeKey: String
@available(OSX 10.6, *)
let URLIsAliasFileKey: String
@available(OSX 10.6, *)
let URLVolumeLocalizedFormatDescriptionKey: String
@available(OSX 10.6, *)
let URLVolumeTotalCapacityKey: String
@available(OSX 10.6, *)
let URLVolumeAvailableCapacityKey: String
@available(OSX 10.6, *)
let URLVolumeResourceCountKey: String
@available(OSX 10.6, *)
let URLVolumeSupportsPersistentIDsKey: String
@available(OSX 10.6, *)
let URLVolumeSupportsSymbolicLinksKey: String
@available(OSX 10.6, *)
let URLVolumeSupportsHardLinksKey: String
@available(OSX 10.6, *)
let URLVolumeSupportsJournalingKey: String
@available(OSX 10.6, *)
let URLVolumeIsJournalingKey: String
@available(OSX 10.6, *)
let URLVolumeSupportsSparseFilesKey: String
@available(OSX 10.6, *)
let URLVolumeSupportsZeroRunsKey: String
@available(OSX 10.6, *)
let URLVolumeSupportsCaseSensitiveNamesKey: String
@available(OSX 10.6, *)
let URLVolumeSupportsCasePreservedNamesKey: String
@available(OSX 10.7, *)
let URLVolumeSupportsRootDirectoryDatesKey: String
@available(OSX 10.7, *)
let URLVolumeSupportsVolumeSizesKey: String
@available(OSX 10.7, *)
let URLVolumeSupportsRenamingKey: String
@available(OSX 10.7, *)
let URLVolumeSupportsAdvisoryFileLockingKey: String
@available(OSX 10.7, *)
let URLVolumeSupportsExtendedSecurityKey: String
@available(OSX 10.7, *)
let URLVolumeIsBrowsableKey: String
@available(OSX 10.7, *)
let URLVolumeMaximumFileSizeKey: String
@available(OSX 10.7, *)
let URLVolumeIsEjectableKey: String
@available(OSX 10.7, *)
let URLVolumeIsRemovableKey: String
@available(OSX 10.7, *)
let URLVolumeIsInternalKey: String
@available(OSX 10.7, *)
let URLVolumeIsAutomountedKey: String
@available(OSX 10.7, *)
let URLVolumeIsLocalKey: String
@available(OSX 10.7, *)
let URLVolumeIsReadOnlyKey: String
@available(OSX 10.7, *)
let URLVolumeCreationDateKey: String
@available(OSX 10.7, *)
let URLVolumeURLForRemountingKey: String
@available(OSX 10.7, *)
let URLVolumeUUIDStringKey: String
@available(OSX 10.7, *)
let URLVolumeNameKey: String
@available(OSX 10.7, *)
let URLVolumeLocalizedNameKey: String
@available(OSX 10.7, *)
let URLIsUbiquitousItemKey: String
@available(OSX 10.7, *)
let URLUbiquitousItemHasUnresolvedConflictsKey: String
@available(OSX 10.7, *)
let URLUbiquitousItemIsDownloadingKey: String
@available(OSX 10.7, *)
let URLUbiquitousItemIsUploadedKey: String
@available(OSX 10.7, *)
let URLUbiquitousItemIsUploadingKey: String
@available(OSX 10.9, *)
let URLUbiquitousItemDownloadingStatusKey: String
@available(OSX 10.9, *)
let URLUbiquitousItemDownloadingErrorKey: String
@available(OSX 10.9, *)
let URLUbiquitousItemUploadingErrorKey: String
@available(OSX 10.10, *)
let URLUbiquitousItemDownloadRequestedKey: String
@available(OSX 10.10, *)
let URLUbiquitousItemContainerDisplayNameKey: String
@available(OSX 10.9, *)
let URLUbiquitousItemDownloadingStatusNotDownloaded: String
@available(OSX 10.9, *)
let URLUbiquitousItemDownloadingStatusDownloaded: String
@available(OSX 10.9, *)
let URLUbiquitousItemDownloadingStatusCurrent: String
@available(OSX 10.6, *)
struct URLBookmarkCreationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MinimalBookmark: URLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: URLBookmarkCreationOptions { get }
  @available(OSX 10.7, *)
  static var WithSecurityScope: URLBookmarkCreationOptions { get }
  @available(OSX 10.7, *)
  static var SecurityScopeAllowOnlyReadAccess: URLBookmarkCreationOptions { get }
}
@available(OSX 10.6, *)
struct URLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutUI: URLBookmarkResolutionOptions { get }
  static var WithoutMounting: URLBookmarkResolutionOptions { get }
  @available(OSX 10.7, *)
  static var WithSecurityScope: URLBookmarkResolutionOptions { get }
}
typealias URLBookmarkFileCreationOptions = Int
extension URL {
  @available(OSX 10.10, *)
  func getPromisedItemResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(OSX 10.10, *)
  func promisedItemResourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  @available(OSX 10.10, *)
  func checkPromisedItemIsReachableAndReturnError(error: ErrorPointer) -> Bool
}
@available(OSX 10.10, *)
class URLQueryItem : Object, SecureCoding, Copying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
  convenience init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.10, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.9, *)
class URLComponents : Object, Copying {
  init()
  init?(url: URL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  @NSCopying var url: URL? { get }
  func urlRelativeTo(baseURL: URL?) -> URL?
  @available(OSX 10.10, *)
  var string: String? { get }
  var scheme: String?
  var user: String?
  var password: String?
  var host: String?
  @NSCopying var port: Number?
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
  var queryItems: [URLQueryItem]?
  @available(OSX 10.9, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension CharacterSet {
  @available(OSX 10.9, *)
  class func urlUserAllowed() -> CharacterSet
  @available(OSX 10.9, *)
  class func urlPasswordAllowed() -> CharacterSet
  @available(OSX 10.9, *)
  class func urlHostAllowed() -> CharacterSet
  @available(OSX 10.9, *)
  class func urlPathAllowed() -> CharacterSet
  @available(OSX 10.9, *)
  class func urlQueryAllowed() -> CharacterSet
  @available(OSX 10.9, *)
  class func urlFragmentAllowed() -> CharacterSet
}
extension NSString {
  @available(OSX 10.9, *)
  func addingPercentEncodingWithAllowedCharacters(allowedCharacters: CharacterSet) -> String?
  @available(OSX 10.9, *)
  var removingPercentEncoding: String? { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func addingPercentEscapesUsingEncoding(enc: UInt) -> String?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func replacingPercentEscapesUsingEncoding(enc: UInt) -> String?
}
extension URL {
  @available(OSX 10.6, *)
  class func fileURLWithPathComponents(components: [String]) -> URL?
  @available(OSX 10.6, *)
  var pathComponents: [String]? { get }
  @available(OSX 10.6, *)
  var lastPathComponent: String? { get }
  @available(OSX 10.6, *)
  var pathExtension: String? { get }
  @available(OSX 10.6, *)
  func appendingPathComponent(pathComponent: String) -> URL
  @available(OSX 10.7, *)
  func appendingPathComponent(pathComponent: String, isDirectory: Bool) -> URL
  @available(OSX 10.6, *)
  @NSCopying var deletingLastPathComponent: URL? { get }
  @available(OSX 10.6, *)
  func appendingPathExtension(pathExtension: String) -> URL
  @available(OSX 10.6, *)
  @NSCopying var deletingPathExtension: URL? { get }
  @available(OSX 10.6, *)
  @NSCopying var standardizingPath: URL? { get }
  @available(OSX 10.6, *)
  @NSCopying var resolvingSymlinksInPath: URL? { get }
}
@available(OSX 10.7, *)
class FileSecurity : Object, Copying, Coding {
  init?(coder aDecoder: Coder)
  convenience init()
  @available(OSX 10.7, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func encodeWith(aCoder: Coder)
}
extension Object {
}
extension URL {
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
protocol URLAuthenticationChallengeSender : ObjectProtocol {

  /*!
      @method useCredential:forAuthenticationChallenge:
  */
  func use(credential: URLCredential, forAuthenticationChallenge challenge: URLAuthenticationChallenge)

  /*!
      @method continueWithoutCredentialForAuthenticationChallenge:
  */
  func continueWithoutCredentialFor(challenge: URLAuthenticationChallenge)

  /*!
      @method cancelAuthenticationChallenge:
  */
  func cancel(challenge: URLAuthenticationChallenge)

  /*!
   @method performDefaultHandlingForAuthenticationChallenge:
   */
  optional func performDefaultHandlingFor(challenge: URLAuthenticationChallenge)

  /*!
   @method rejectProtectionSpaceAndContinueWithChallenge:
   */
  optional func rejectProtectionSpaceAndContinueWith(challenge: URLAuthenticationChallenge)
}

/*!
    @class NSURLAuthenticationChallenge
    @discussion This class represents an authentication challenge. It
    provides all the information about the challenge, and has a method
    to indicate when it's done.
*/
class URLAuthenticationChallenge : Object, SecureCoding {

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
  init(protectionSpace space: URLProtectionSpace, proposedCredential credential: URLCredential?, previousFailureCount: Int, failureResponse response: URLResponse?, error: Error?, sender: URLAuthenticationChallengeSender)

  /*!
      @method initWithAuthenticationChallenge:
      @abstract Initialize an authentication challenge copying all parameters from another one.
      @param challenge
      @result A new challenge initialized with the parameters from the passed in challenge
      @discussion This initializer may be useful to subclassers that want to proxy
      one type of authentication challenge to look like another type.
  */
  init(authenticationChallenge challenge: URLAuthenticationChallenge, sender: URLAuthenticationChallengeSender)

  /*!
      @method protectionSpace
      @abstract Get a description of the protection space that requires authentication
      @result The protection space that needs authentication
  */
  @NSCopying var protectionSpace: URLProtectionSpace { get }

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
  @NSCopying var proposedCredential: URLCredential? { get }

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
  @NSCopying var failureResponse: URLResponse? { get }

  /*!
      @method error
      @abstract Get the error representing authentication failure.
      @discussion If there was a previous authentication failure, and
      this protocol uses errors to indicate authentication failure,
      then this method will return the error. Otherwise it will
      return nil.
  */
  @NSCopying var error: Error? { get }

  /*!
      @method sender
      @abstract Get the sender of this challenge
      @result The sender of the challenge
      @discussion The sender is the object you should reply to when done processing the challenge.
  */
  var sender: URLAuthenticationChallengeSender? { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
enum URLCacheStoragePolicy : UInt {
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
class CachedURLResponse : Object, SecureCoding, Copying {

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
  init(response: URLResponse, data: Data)

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
  init(response: URLResponse, data: Data, userInfo: [Object : AnyObject]? = [:], storagePolicy: URLCacheStoragePolicy)

  /*! 
      @method response
      @abstract Returns the response wrapped by this instance. 
      @result The response wrapped by this instance. 
  */
  @NSCopying var response: URLResponse { get }

  /*! 
      @method data
      @abstract Returns the data of the receiver. 
      @result The data of the receiver. 
  */
  @NSCopying var data: Data { get }

  /*! 
      @method userInfo
      @abstract Returns the userInfo dictionary of the receiver. 
      @result The userInfo dictionary of the receiver. 
  */
  var userInfo: [Object : AnyObject]? { get }

  /*! 
      @method storagePolicy
      @abstract Returns the NSURLCacheStoragePolicy constant of the receiver. 
      @result The NSURLCacheStoragePolicy constant of the receiver. 
  */
  var storagePolicy: URLCacheStoragePolicy { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class URLCache : Object {

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
  class func shared() -> URLCache

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
  class func setSharedURLCache(cache: URLCache)

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
  func cachedResponseFor(request: URLRequest) -> CachedURLResponse?

  /*! 
      @method storeCachedResponse:forRequest:
      @abstract Stores the given NSCachedURLResponse in the cache using
      the given request.
      @param cachedResponse The cached response to store.
      @param request the NSURLRequest to use as a key for the storage.
  */
  func storeCachedResponse(cachedResponse: CachedURLResponse, forRequest request: URLRequest)

  /*! 
      @method removeCachedResponseForRequest:
      @abstract Removes the NSCachedURLResponse from the cache that is
      stored using the given request. 
      @discussion No action is taken if there is no NSCachedURLResponse
      stored with the given request.
      @param request the NSURLRequest to use as a key for the lookup.
  */
  func removeCachedResponseFor(request: URLRequest)

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
  func removeCachedResponsesSince(date: Date)

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
extension URLCache {
  @available(OSX 10.10, *)
  func storeCachedResponse(cachedResponse: CachedURLResponse, forDataTask dataTask: URLSessionDataTask)
  @available(OSX 10.10, *)
  func getCachedResponseFor(dataTask: URLSessionDataTask, completionHandler: (CachedURLResponse?) -> Void)
  @available(OSX 10.10, *)
  func removeCachedResponseFor(dataTask: URLSessionDataTask)
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
class URLConnection : Object {
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: URLRequest, delegate: AnyObject?, startImmediately: Bool)
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: URLRequest, delegate: AnyObject?)
  @available(OSX 10.8, *)
  @NSCopying var originalRequest: URLRequest { get }
  @available(OSX 10.8, *)
  @NSCopying var currentRequest: URLRequest { get }
  @available(OSX 10.5, *)
  func start()
  func cancel()
  @available(OSX 10.5, *)
  func scheduleIn(aRunLoop: RunLoop, forMode mode: String)
  @available(OSX 10.5, *)
  func unscheduleFrom(aRunLoop: RunLoop, forMode mode: String)
  @available(OSX 10.7, *)
  func setDelegateQueue(queue: OperationQueue?)

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
  class func canHandle(request: URLRequest) -> Bool
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
protocol URLConnectionDelegate : ObjectProtocol {
  optional func connection(connection: URLConnection, didFailWithError error: Error)
  optional func connectionShouldUseCredentialStorage(connection: URLConnection) -> Bool
  optional func connection(connection: URLConnection, willSendRequestFor challenge: URLAuthenticationChallenge)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: URLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: URLProtectionSpace) -> Bool
  @available(OSX, introduced=10.2, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: URLConnection, didReceive challenge: URLAuthenticationChallenge)
  @available(OSX, introduced=10.2, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: URLConnection, didCancel challenge: URLAuthenticationChallenge)
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
protocol URLConnectionDataDelegate : URLConnectionDelegate {
  optional func connection(connection: URLConnection, willSend request: URLRequest, redirectResponse response: URLResponse?) -> URLRequest?
  optional func connection(connection: URLConnection, didReceive response: URLResponse)
  optional func connection(connection: URLConnection, didReceive data: Data)
  optional func connection(connection: URLConnection, needNewBodyStream request: URLRequest) -> InputStream?
  optional func connection(connection: URLConnection, didSendBodyData bytesWritten: Int, totalBytesWritten: Int, totalBytesExpectedToWrite: Int)
  optional func connection(connection: URLConnection, willCacheResponse cachedResponse: CachedURLResponse) -> CachedURLResponse?
  optional func connectionDidFinishLoading(connection: URLConnection)
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
protocol URLConnectionDownloadDelegate : URLConnectionDelegate {
  optional func connection(connection: URLConnection, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  optional func connectionDidResumeDownloading(connection: URLConnection, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  func connectionDidFinishDownloading(connection: URLConnection, destinationURL: URL)
}

/*!
    @category    NSURLConnection(NSURLConnectionSynchronousLoading)

    @abstract
                 The NSURLConnectionSynchronousLoading category on
                 NSURLConnection provides the interface to perform
                 synchronous loading of URL requests.
*/
extension URLConnection {

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
  class func sendSynchronousRequest(request: URLRequest, returning response: AutoreleasingUnsafeMutablePointer<URLResponse?>) throws -> Data
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
extension URLConnection {

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
  class func sendAsynchronousRequest(request: URLRequest, queue: OperationQueue, completionHandler handler: (URLResponse?, Data?, Error?) -> Void)
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
enum URLCredentialPersistence : UInt {
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
class URLCredential : Object, SecureCoding, Copying {

  /*!
      @method persistence
      @abstract Determine whether this credential is or should be stored persistently
      @result A value indicating whether this credential is stored permanently, per session or not at all.
   */
  var persistence: URLCredentialPersistence { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}

/*!
    @class NSURLCredential(NSInternetPassword)
    @discussion This category defines the methods available to an NSURLCredential created to represent an internet password credential.  These are most commonly used for resources that require a username and password combination.
 */
extension URLCredential {

  /*!
      @method initWithUser:password:persistence:
      @abstract Initialize a NSURLCredential with a user and password
      @param user the username
      @param password the password
      @param persistence enum that says to store per session, permanently or not at all
      @result The initialized NSURLCredential
  */
  init(user: String, password: String, persistence: URLCredentialPersistence)

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
extension URLCredential {

  /*!
      @method initWithIdentity:certificates:persistence:
      @abstract Initialize an NSURLCredential with an identity and array of at least 1 client certificates (SecCertificateRef)
      @param identity a SecIdentityRef object
      @param certArray an array containing at least one SecCertificateRef objects
      @param persistence enum that says to store per session, permanently or not at all
      @result the Initialized NSURLCredential
   */
  @available(OSX 10.6, *)
  init(identity: SecIdentity, certificates certArray: [AnyObject]?, persistence: URLCredentialPersistence)

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
extension URLCredential {

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
class URLCredentialStorage : Object {

  /*!
      @method sharedCredentialStorage
      @abstract Get the shared singleton authentication storage
      @result the shared authentication storage
  */
  class func shared() -> URLCredentialStorage

  /*!
      @method credentialsForProtectionSpace:
      @abstract Get a dictionary mapping usernames to credentials for the specified protection space.
      @param protectionSpace An NSURLProtectionSpace indicating the protection space for which to get credentials
      @result A dictionary where the keys are usernames and the values are the corresponding NSURLCredentials.
  */
  func credentialsFor(space: URLProtectionSpace) -> [String : URLCredential]?

  /*!
      @method allCredentials
      @abstract Get a dictionary mapping NSURLProtectionSpaces to dictionaries which map usernames to NSURLCredentials
      @result an NSDictionary where the keys are NSURLProtectionSpaces
      and the values are dictionaries, in which the keys are usernames
      and the values are NSURLCredentials
  */
  var allCredentials: [URLProtectionSpace : [String : URLCredential]] { get }

  /*!
      @method setCredential:forProtectionSpace:
      @abstract Add a new credential to the set for the specified protection space or replace an existing one.
      @param credential The credential to set.
      @param space The protection space for which to add it. 
      @discussion Multiple credentials may be set for a given protection space, but each must have
      a distinct user. If a credential with the same user is already set for the protection space,
      the new one will replace it.
  */
  func setCredential(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)

  /*!
      @method removeCredential:forProtectionSpace:
      @abstract Remove the credential from the set for the specified protection space.
      @param credential The credential to remove.
      @param space The protection space for which a credential should be removed
      @discussion The credential is removed from both persistent and temporary storage. A credential that
      has a persistence policy of NSURLCredentialPersistenceSynchronizable will fail.  
      See removeCredential:forProtectionSpace:options.
  */
  func remove(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)

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
  func remove(credential: URLCredential, forProtectionSpace space: URLProtectionSpace, options: [String : AnyObject]? = [:])

  /*!
      @method defaultCredentialForProtectionSpace:
      @abstract Get the default credential for the specified protection space.
      @param space The protection space for which to get the default credential.
  */
  func defaultCredentialFor(space: URLProtectionSpace) -> URLCredential?

  /*!
      @method setDefaultCredential:forProtectionSpace:
      @abstract Set the default credential for the specified protection space.
      @param credential The credential to set as default.
      @param space The protection space for which the credential should be set as default.
      @discussion If the credential is not yet in the set for the protection space, it will be added to it.
  */
  func setDefaultCredential(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  init()
}
extension URLCredentialStorage {
  @available(OSX 10.10, *)
  func getCredentialsFor(protectionSpace: URLProtectionSpace, task: URLSessionTask, completionHandler: ([String : URLCredential]?) -> Void)
  @available(OSX 10.10, *)
  func setCredential(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, task: URLSessionTask)
  @available(OSX 10.10, *)
  func remove(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, options: [String : AnyObject]? = [:], task: URLSessionTask)
  @available(OSX 10.10, *)
  func getDefaultCredentialFor(space: URLProtectionSpace, task: URLSessionTask, completionHandler: (URLCredential?) -> Void)
  @available(OSX 10.10, *)
  func setDefaultCredential(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, task: URLSessionTask)
}

/*!
    @const NSURLCredentialStorageChangedNotification
    @abstract This notification is sent on the main thread whenever
    the set of stored credentials changes.
*/
let URLCredentialStorageChangedNotification: String
@available(OSX 10.9, *)
let URLCredentialStorageRemoveSynchronizableCredentials: String

/*!
    @class NSURLDownload
    @discussion A NSURLDownload loads a request and saves the downloaded data to a file. The progress of the download
    is reported via the NSURLDownloadDelegate protocol. Note: The word "download" is used to refer to the process
    of loading data off a network, decoding the data if necessary and saving the data to a file.
*/
class URLDownload : Object {

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
  init(request: URLRequest, delegate: URLDownloadDelegate?)

  /*!
      @method initWithResumeData:delegate:path:
      @abstract Initializes a NSURLDownload object for resuming a previous download.
      @param resumeData The resume data from the previous download.
      @param delegate The delegate of the download.
      @param path The path of the incomplete downloaded file.
      @result An initialized NSURLDownload object.
  */
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(resumeData: Data, delegate: URLDownloadDelegate?, path: String)

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
  @NSCopying var request: URLRequest { get }

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
  @NSCopying var resumeData: Data? { get }

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
protocol URLDownloadDelegate : ObjectProtocol {

  /*!
      @method downloadDidBegin:
      @abstract This method is called immediately after the download has started.
      @param download The download that just started downloading.
  */
  optional func downloadDidBegin(download: URLDownload)

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
  optional func download(download: URLDownload, willSend request: URLRequest, redirectResponse: URLResponse?) -> URLRequest?

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
  optional func download(connection: URLDownload, canAuthenticateAgainstProtectionSpace protectionSpace: URLProtectionSpace) -> Bool

  /*!
      @method download:didReceiveAuthenticationChallenge:
      @abstract Start authentication for a given challenge
      @param download The download that needs authentication.
      @param challenge The NSURLAuthenticationChallenge for which to start authentication.
      @discussion Call useCredential:forAuthenticationChallenge:,
      continueWithoutCredentialForAuthenticationChallenge: or cancel on
      the connection sender when done.
  */
  optional func download(download: URLDownload, didReceive challenge: URLAuthenticationChallenge)

  /*!
      @method download:didCancelAuthenticationChallenge:
      @abstract Cancel authentication for a given request
      @param download The download that's cancelling
      @param challenge The NSURLAuthenticationChallenge to cancel authentication for
  */
  optional func download(download: URLDownload, didCancel challenge: URLAuthenticationChallenge)

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
  optional func downloadShouldUseCredentialStorage(download: URLDownload) -> Bool

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
  optional func download(download: URLDownload, didReceive response: URLResponse)

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
  optional func download(download: URLDownload, willResumeWith response: URLResponse, fromByte startingByte: Int64)

  /*!
      @method download:didReceiveDataOfLength:
      @abstract This method is called when the download has loaded data.
      @param download The download that has received data.
      @param length The length of the received data.
      @discussion This method will be called one or more times.
  */
  optional func download(download: URLDownload, didReceiveDataOfLength length: Int)

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
  optional func download(download: URLDownload, shouldDecodeSourceDataOfMIMEType encodingType: String) -> Bool

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
  optional func download(download: URLDownload, decideDestinationWithSuggestedFilename filename: String)

  /*!
      @method download:didCreateDestination:
      @abstract This method is called after the download creates the downloaded file.
      @param download The download that created the downloaded file.
      @param path The path of the downloaded file.
  */
  optional func download(download: URLDownload, didCreateDestination path: String)

  /*!
      @method downloadDidFinish:
      @abstract This method is called when the download has finished downloading.
      @param download The download that has finished downloading.
      @discussion This method is called after all the data has been received and written to disk.
      This method or download:didFailWithError: will only be called once.
  */
  optional func downloadDidFinish(download: URLDownload)

  /*!
      @method download:didFailWithError:
      @abstract This method is called when the download has failed. 
      @param download The download that ended in error.
      @param error The error caused the download to fail.
      @discussion This method is called when the download encounters a network or file I/O related error.
      This method or downloadDidFinish: will only be called once.
  */
  optional func download(download: URLDownload, didFailWithError error: Error)
}
let URLErrorDomain: String

/*!
    @const NSURLErrorFailingURLErrorKey
    @abstract The NSError userInfo dictionary key used to store and retrieve the URL which caused a load to fail.
*/
@available(OSX 10.6, *)
let URLErrorFailingURLErrorKey: String

/*!
    @const NSURLErrorFailingURLStringErrorKey
    @abstract The NSError userInfo dictionary key used to store and retrieve the NSString object for the URL which caused a load to fail.
    @discussion This constant supersedes NSErrorFailingURLStringKey, which was deprecated in Mac OS X 10.6.  Both constants refer to the same value for backward-compatibility, but this symbol name has a better prefix.
*/
@available(OSX 10.6, *)
let URLErrorFailingURLStringErrorKey: String

/*!
    @const NSURLErrorFailingURLPeerTrustErrorKey
    @abstract The NSError userInfo dictionary key used to store and retrieve the SecTrustRef object representing the state of a failed SSL handshake.
 */
@available(OSX 10.6, *)
let URLErrorFailingURLPeerTrustErrorKey: String

/*!
    @const NSURLErrorBackgroundTaskCancelledReasonKey
    @abstract The NSError userInfo dictionary key used to store and retrieve the NSNumber corresponding to the reason why a background
	NSURLSessionTask was cancelled
 */
@available(OSX 10.10, *)
let URLErrorBackgroundTaskCancelledReasonKey: String
var URLErrorCancelledReasonUserForceQuitApplication: Int { get }
var URLErrorCancelledReasonBackgroundUpdatesDisabled: Int { get }
@available(OSX 10.10, *)
var URLErrorCancelledReasonInsufficientSystemResources: Int { get }
var URLErrorUnknown: Int { get }
var URLErrorCancelled: Int { get }
var URLErrorBadURL: Int { get }
var URLErrorTimedOut: Int { get }
var URLErrorUnsupportedURL: Int { get }
var URLErrorCannotFindHost: Int { get }
var URLErrorCannotConnectToHost: Int { get }
var URLErrorNetworkConnectionLost: Int { get }
var URLErrorDNSLookupFailed: Int { get }
var URLErrorHTTPTooManyRedirects: Int { get }
var URLErrorResourceUnavailable: Int { get }
var URLErrorNotConnectedToInternet: Int { get }
var URLErrorRedirectToNonExistentLocation: Int { get }
var URLErrorBadServerResponse: Int { get }
var URLErrorUserCancelledAuthentication: Int { get }
var URLErrorUserAuthenticationRequired: Int { get }
var URLErrorZeroByteResource: Int { get }
var URLErrorCannotDecodeRawData: Int { get }
var URLErrorCannotDecodeContentData: Int { get }
var URLErrorCannotParseResponse: Int { get }
@available(OSX 10.11, *)
var URLErrorAppTransportSecurityRequiresSecureConnection: Int { get }
var URLErrorFileDoesNotExist: Int { get }
var URLErrorFileIsDirectory: Int { get }
var URLErrorNoPermissionsToReadFile: Int { get }
@available(OSX 10.5, *)
var URLErrorDataLengthExceedsMaximum: Int { get }
var URLErrorSecureConnectionFailed: Int { get }
var URLErrorServerCertificateHasBadDate: Int { get }
var URLErrorServerCertificateUntrusted: Int { get }
var URLErrorServerCertificateHasUnknownRoot: Int { get }
var URLErrorServerCertificateNotYetValid: Int { get }
var URLErrorClientCertificateRejected: Int { get }
var URLErrorClientCertificateRequired: Int { get }
var URLErrorCannotLoadFromNetwork: Int { get }
var URLErrorCannotCreateFile: Int { get }
var URLErrorCannotOpenFile: Int { get }
var URLErrorCannotCloseFile: Int { get }
var URLErrorCannotWriteToFile: Int { get }
var URLErrorCannotRemoveFile: Int { get }
var URLErrorCannotMoveFile: Int { get }
var URLErrorDownloadDecodingFailedMidStream: Int { get }
var URLErrorDownloadDecodingFailedToComplete: Int { get }
@available(OSX 10.7, *)
var URLErrorInternationalRoamingOff: Int { get }
@available(OSX 10.7, *)
var URLErrorCallIsActive: Int { get }
@available(OSX 10.7, *)
var URLErrorDataNotAllowed: Int { get }
@available(OSX 10.7, *)
var URLErrorRequestBodyStreamExhausted: Int { get }
@available(OSX 10.10, *)
var URLErrorBackgroundSessionRequiresSharedContainer: Int { get }
@available(OSX 10.10, *)
var URLErrorBackgroundSessionInUseByAnotherProcess: Int { get }
@available(OSX 10.10, *)
var URLErrorBackgroundSessionWasDisconnected: Int { get }
enum URLHandleStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotLoaded
  case LoadSucceeded
  case LoadInProgress
  case LoadFailed
}
protocol URLHandleClient {
}
class URLHandle : Object {
  init()
}

/*!
   @const NSURLProtectionSpaceHTTP
   @abstract The protocol for HTTP
*/
@available(OSX 10.5, *)
let URLProtectionSpaceHTTP: String

/*!
   @const NSURLProtectionSpaceHTTPS
   @abstract The protocol for HTTPS
*/
@available(OSX 10.5, *)
let URLProtectionSpaceHTTPS: String

/*!
   @const NSURLProtectionSpaceFTP
   @abstract The protocol for FTP
*/
@available(OSX 10.5, *)
let URLProtectionSpaceFTP: String

/*!
    @const NSURLProtectionSpaceHTTPProxy
    @abstract The proxy type for http proxies
*/
let URLProtectionSpaceHTTPProxy: String

/*!
    @const NSURLProtectionSpaceHTTPSProxy
    @abstract The proxy type for https proxies
*/
let URLProtectionSpaceHTTPSProxy: String

/*!
    @const NSURLProtectionSpaceFTPProxy
    @abstract The proxy type for ftp proxies
*/
let URLProtectionSpaceFTPProxy: String

/*!
    @const NSURLProtectionSpaceSOCKSProxy
    @abstract The proxy type for SOCKS proxies
*/
let URLProtectionSpaceSOCKSProxy: String

/*!
    @const NSURLAuthenticationMethodDefault
    @abstract The default authentication method for a protocol
*/
let URLAuthenticationMethodDefault: String

/*!
    @const NSURLAuthenticationMethodHTTPBasic
    @abstract HTTP basic authentication. Equivalent to
    NSURLAuthenticationMethodDefault for http.
*/
let URLAuthenticationMethodHTTPBasic: String

/*!
    @const NSURLAuthenticationMethodHTTPDigest
    @abstract HTTP digest authentication.
*/
let URLAuthenticationMethodHTTPDigest: String

/*!
    @const NSURLAuthenticationMethodHTMLForm
    @abstract HTML form authentication. Applies to any protocol.
*/
let URLAuthenticationMethodHTMLForm: String

/*!
   @const NSURLAuthenticationMethodNTLM
   @abstract NTLM authentication.
*/
@available(OSX 10.5, *)
let URLAuthenticationMethodNTLM: String

/*!
   @const NSURLAuthenticationMethodNegotiate
   @abstract Negotiate authentication.
*/
@available(OSX 10.5, *)
let URLAuthenticationMethodNegotiate: String

/*!
    @const NSURLAuthenticationMethodClientCertificate
    @abstract SSL Client certificate.  Applies to any protocol.
 */
@available(OSX 10.6, *)
let URLAuthenticationMethodClientCertificate: String

/*!
    @const NSURLAuthenticationMethodServerTrust
    @abstract SecTrustRef validation required.  Applies to any protocol.
 */
@available(OSX 10.6, *)
let URLAuthenticationMethodServerTrust: String

/*!
    @class NSURLProtectionSpace
    @discussion This class represents a protection space requiring authentication.
*/
class URLProtectionSpace : Object, SecureCoding, Copying {

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
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}

/*!
    @class NSURLProtectionSpace(NSClientCertificateSpace)
    @discussion This category supplies additional information for use when a client certificate is required by the server in order to complete authentication.
 */
extension URLProtectionSpace {

  /*!
      @method distinguishedNames
      @abstract Returns an array of acceptable certificate issuing authorities for client certification authentication. Issuers are identified by their distinguished name and returned as a DER encoded data.
      @result An array of NSData objects.  (Nil if the authenticationMethod is not NSURLAuthenticationMethodClientCertificate)
   */
  @available(OSX 10.6, *)
  var distinguishedNames: [Data]? { get }
}

/*!
    @class NSURLProtectionSpace(NSServerTrustValidationSpace)
    @discussion This category supplies additional information for use by the client to evaluate whether to trust a given server during a security handshake.
 */
extension URLProtectionSpace {

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
protocol URLProtocolClient : ObjectProtocol {

  /*!
  @method URLProtocol:wasRedirectedToRequest:
   @abstract Indicates to an NSURLProtocolClient that a redirect has
   occurred.
   @param URLProtocol the NSURLProtocol object sending the message.
   @param request the NSURLRequest to which the protocol implementation
   has redirected.
   */
  func urlProtocol(protocol: URLProtocol, wasRedirectedTo request: URLRequest, redirectResponse: URLResponse)

  /*!
  @method URLProtocol:cachedResponseIsValid:
       @abstract Indicates to an NSURLProtocolClient that the protocol
       implementation has examined a cached response and has
       determined that it is valid.
       @param URLProtocol the NSURLProtocol object sending the message.
       @param cachedResponse the NSCachedURLResponse object that has
       examined and is valid.
       */
  func urlProtocol(protocol: URLProtocol, cachedResponseIsValid cachedResponse: CachedURLResponse)

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
  func urlProtocol(protocol: URLProtocol, didReceive response: URLResponse, cacheStoragePolicy policy: URLCacheStoragePolicy)

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
  func urlProtocol(protocol: URLProtocol, didLoad data: Data)

  /*!
  @method URLProtocolDidFinishLoading:
       @abstract Indicates to an NSURLProtocolClient that the protocol
       implementation has finished loading successfully.
       @param URLProtocol the NSURLProtocol object sending the message.
       */
  func urlProtocolDidFinishLoading(protocol: URLProtocol)

  /*!
              @method URLProtocol:didFailWithError:
   @abstract Indicates to an NSURLProtocolClient that the protocol
   implementation has failed to load successfully.
   @param URLProtocol the NSURLProtocol object sending the message.
   @param error The error that caused the load to fail.
   */
  func urlProtocol(protocol: URLProtocol, didFailWithError error: Error)

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
  func urlProtocol(protocol: URLProtocol, didReceive challenge: URLAuthenticationChallenge)

  /*!
  @method URLProtocol:didCancelAuthenticationChallenge:
       @abstract Cancel authentication for the specified request
       @param protocol The protocol object cancelling authentication.
       @param challenge The authentication challenge.
       */
  func urlProtocol(protocol: URLProtocol, didCancel challenge: URLAuthenticationChallenge)
}

/*!
    @class NSURLProtocol
    
    @abstract NSURLProtocol is an abstract class which provides the
    basic structure for performing protocol-specific loading of URL
    data. Concrete subclasses handle the specifics associated with one
    or more protocols or URL schemes.
*/
class URLProtocol : Object {

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
  init(request: URLRequest, cachedResponse: CachedURLResponse?, client: URLProtocolClient?)

  /*! 
      @method client
      @abstract Returns the NSURLProtocolClient of the receiver. 
      @result The NSURLProtocolClient of the receiver.  
  */
  var client: URLProtocolClient? { get }

  /*! 
      @method request
      @abstract Returns the NSURLRequest of the receiver. 
      @result The NSURLRequest of the receiver. 
  */
  @NSCopying var request: URLRequest { get }

  /*! 
      @method cachedResponse
      @abstract Returns the NSCachedURLResponse of the receiver.  
      @result The NSCachedURLResponse of the receiver. 
  */
  @NSCopying var cachedResponse: CachedURLResponse? { get }

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
  class func canInitWith(request: URLRequest) -> Bool

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
  class func canonicalRequestFor(request: URLRequest) -> URLRequest

  /*!
      @method requestIsCacheEquivalent:toRequest:
      @abstract Compares two requests for equivalence with regard to caching.
      @discussion Requests are considered euqivalent for cache purposes
      if and only if they would be handled by the same protocol AND that
      protocol declares them equivalent after performing 
      implementation-specific checks.
      @result YES if the two requests are cache-equivalent, NO otherwise.
  */
  class func requestIsCacheEquivalent(a: URLRequest, to b: URLRequest) -> Bool

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
  class func propertyForKey(key: String, in request: URLRequest) -> AnyObject?

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
  class func setProperty(value: AnyObject, forKey key: String, in request: MutableURLRequest)

  /*!
      @method removePropertyForKey:inRequest:
      @abstract Remove any property stored under the given key
      @discussion Like setProperty:forKey:inRequest: above, the purpose of this
          method is to give protocol implementors the ability to store 
          protocol-specific information in an NSURLRequest
      @param key The key whose value should be removed
      @param request The request to be modified
  */
  class func removePropertyForKey(key: String, in request: MutableURLRequest)

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
extension URLProtocol {
  @available(OSX 10.10, *)
  class func canInitWith(task: URLSessionTask) -> Bool
  @available(OSX 10.10, *)
  convenience init(task: URLSessionTask, cachedResponse: CachedURLResponse?, client: URLProtocolClient?)
  @available(OSX 10.10, *)
  @NSCopying var task: URLSessionTask? { get }
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
enum URLRequestCachePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UseProtocolCachePolicy
  case ReloadIgnoringLocalCacheData
  case ReloadIgnoringLocalAndRemoteCacheData
  static var ReloadIgnoringCacheData: URLRequestCachePolicy { get }
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
enum URLRequestNetworkServiceType : UInt {
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
class URLRequest : Object, SecureCoding, Copying, MutableCopying {
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
  convenience init(url URL: URL)

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
  init(url URL: URL, cachePolicy: URLRequestCachePolicy, timeoutInterval: TimeInterval)

  /*! 
      @method URL
      @abstract Returns the URL of the receiver. 
      @result The URL of the receiver. 
  */
  @NSCopying var url: URL? { get }

  /*! 
      @method cachePolicy
      @abstract Returns the cache policy of the receiver. 
      @result The cache policy of the receiver. 
  */
  var cachePolicy: URLRequestCachePolicy { get }

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
  var timeoutInterval: TimeInterval { get }

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
  @NSCopying var mainDocumentURL: URL? { get }

  /*!
   @method networkServiceType
   @abstract Returns the NSURLRequestNetworkServiceType associated with this request.
   @discussion  This will return NSURLNetworkServiceTypeDefault for requests that have
   not explicitly set a networkServiceType (using the setNetworkServiceType method).
   @result The NSURLRequestNetworkServiceType associated with this request.
   */
  @available(OSX 10.7, *)
  var networkServiceType: URLRequestNetworkServiceType { get }

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
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
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
class MutableURLRequest : URLRequest {

  /*! 
      @method URL
      @abstract Sets the URL of the receiver. 
      @param URL The new URL for the receiver. 
  */
  @NSCopying var url: URL?

  /*! 
      @method setCachePolicy:
      @abstract The cache policy of the receiver. 
      @param policy The new NSURLRequestCachePolicy for the receiver. 
  */
  var cachePolicy: URLRequestCachePolicy

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
  var timeoutInterval: TimeInterval

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
  @NSCopying var mainDocumentURL: URL?

  /*!
   @method setNetworkServiceType:
   @abstract Sets the NSURLRequestNetworkServiceType to associate with this request
   @param networkServiceType The NSURLRequestNetworkServiceType to associate with the request.
   @discussion This method is used to provide the network layers with a hint as to the purpose
   of the request.  Most clients should not need to use this method.
   */
  @available(OSX 10.7, *)
  var networkServiceType: URLRequestNetworkServiceType

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
  convenience init(url URL: URL)

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
  init(url URL: URL, cachePolicy: URLRequestCachePolicy, timeoutInterval: TimeInterval)
  convenience init()
  init?(coder aDecoder: Coder)
}

/*!
    @category NSURLRequest(NSHTTPURLRequest) 
    The NSHTTPURLRequest on NSURLRequest provides methods for accessing
    information specific to HTTP protocol requests.
*/
extension URLRequest {

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
  @NSCopying var httpBody: Data? { get }

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
  var httpBodyStream: InputStream? { get }

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
extension MutableURLRequest {

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
  @NSCopying var httpBody: Data?

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
  var httpBodyStream: InputStream?

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
class URLResponse : Object, SecureCoding, Copying {

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
  init(url URL: URL, mimeType MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)

  /*! 
      @method URL
      @abstract Returns the URL of the receiver. 
      @result The URL of the receiver. 
  */
  @NSCopying var url: URL? { get }

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
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}

/*!
    @class NSHTTPURLResponse

    @abstract An NSHTTPURLResponse object represents a response to an
    HTTP URL load. It is a specialization of NSURLResponse which
    provides conveniences for accessing information specific to HTTP
    protocol responses.
*/
class HTTPURLResponse : URLResponse {

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
  init?(url: URL, statusCode: Int, httpVersion HTTPVersion: String?, headerFields: [String : String]?)

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
  var allHeaderFields: [Object : AnyObject] { get }

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
  init(url URL: URL, mimeType MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  convenience init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.8, *)
class UUID : Object, Copying, SecureCoding {
  init()
  convenience init?(uuidString string: String)
  convenience init(uuidBytes bytes: UnsafePointer<UInt8>)
  func getBytes(uuid: UnsafeMutablePointer<UInt8>)
  var uuidString: String { get }
  @available(OSX 10.8, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.7, *)
class UbiquitousKeyValueStore : Object {
  class func defaultStore() -> UbiquitousKeyValueStore
  func objectForKey(aKey: String) -> AnyObject?
  func setObject(anObject: AnyObject?, forKey aKey: String)
  func removeObjectForKey(aKey: String)
  func stringForKey(aKey: String) -> String?
  func arrayForKey(aKey: String) -> [AnyObject]?
  func dictionaryForKey(aKey: String) -> [String : AnyObject]?
  func dataForKey(aKey: String) -> Data?
  func longLongForKey(aKey: String) -> Int64
  func doubleForKey(aKey: String) -> Double
  func boolForKey(aKey: String) -> Bool
  func setString(aString: String?, forKey aKey: String)
  func setData(aData: Data?, forKey aKey: String)
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
let ubiquitousKeyValueStoreDidChangeExternallyNotification: String
@available(OSX 10.7, *)
let ubiquitousKeyValueStoreChangeReasonKey: String
@available(OSX 10.7, *)
let ubiquitousKeyValueStoreChangedKeysKey: String
@available(OSX 10.7, *)
var ubiquitousKeyValueStoreServerChange: Int { get }
@available(OSX 10.7, *)
var ubiquitousKeyValueStoreInitialSyncChange: Int { get }
@available(OSX 10.7, *)
var ubiquitousKeyValueStoreQuotaViolationChange: Int { get }
@available(OSX 10.8, *)
var ubiquitousKeyValueStoreAccountChange: Int { get }
let undoCloseGroupingRunLoopOrdering: Int
@available(OSX 10.0, *)
class UndoManager : Object {
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

extension UndoManager {
  func registerUndoWithTarget<TargetType : AnyObject>(target: TargetType, handler: (TargetType) -> Void)
}
@available(OSX 10.7, *)
let undoManagerGroupIsDiscardableKey: String
@available(OSX 10.0, *)
let undoManagerCheckpointNotification: String
@available(OSX 10.0, *)
let undoManagerWillUndoChangeNotification: String
@available(OSX 10.0, *)
let undoManagerWillRedoChangeNotification: String
@available(OSX 10.0, *)
let undoManagerDidUndoChangeNotification: String
@available(OSX 10.0, *)
let undoManagerDidRedoChangeNotification: String
@available(OSX 10.0, *)
let undoManagerDidOpenUndoGroupNotification: String
@available(OSX 10.0, *)
let undoManagerWillCloseUndoGroupNotification: String
@available(OSX 10.7, *)
let undoManagerDidCloseUndoGroupNotification: String
@available(OSX 10.10, *)
class UserActivity : Object {
  init(activityType: String)
  init()
  var activityType: String { get }
  var title: String?
  var userInfo: [Object : AnyObject]?
  func addUserInfoEntriesFrom(otherDictionary: [Object : AnyObject])
  @available(OSX 10.11, *)
  var requiredUserInfoKeys: Set<String>
  var needsSave: Bool
  @NSCopying var webpageURL: URL?
  @available(OSX 10.11, *)
  @NSCopying var expirationDate: Date
  @available(OSX 10.11, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak UserActivityDelegate?
  func becomeCurrent()
  @available(OSX 10.11, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreamsWithCompletionHandler(completionHandler: (InputStream?, OutputStream?, Error?) -> Void)
  @available(OSX 10.11, *)
  var isEligibleForHandoff: Bool
  @available(OSX 10.11, *)
  var isEligibleForSearch: Bool
  @available(OSX 10.11, *)
  var isEligibleForPublicIndexing: Bool
}
@available(OSX 10.10, *)
let userActivityTypeBrowsingWeb: String
@available(OSX 10.10, *)
protocol UserActivityDelegate : ObjectProtocol {
  optional func userActivityWillSave(userActivity: UserActivity)
  optional func userActivityWasContinued(userActivity: UserActivity)
  optional func userActivity(userActivity: UserActivity?, didReceive inputStream: InputStream, outputStream: OutputStream)
}
let globalDomain: String
let argumentDomain: String
let registrationDomain: String
class UserDefaults : Object {
  class func standard() -> UserDefaults
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
  func dataForKey(defaultName: String) -> Data?
  func stringArrayForKey(defaultName: String) -> [String]?
  func integerForKey(defaultName: String) -> Int
  func floatForKey(defaultName: String) -> Float
  func doubleForKey(defaultName: String) -> Double
  func boolForKey(defaultName: String) -> Bool
  @available(OSX 10.6, *)
  func urlForKey(defaultName: String) -> URL?
  func setInteger(value: Int, forKey defaultName: String)
  func setFloat(value: Float, forKey defaultName: String)
  func setDouble(value: Double, forKey defaultName: String)
  func setBool(value: Bool, forKey defaultName: String)
  @available(OSX 10.6, *)
  func setURL(url: URL?, forKey defaultName: String)
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
let userDefaultsDidChangeNotification: String
@available(OSX 10.8, *)
enum UserNotificationActivationType : Int {
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
class UserNotification : Object, Copying {
  init()
  var title: String?
  var subtitle: String?
  var informativeText: String?
  var actionButtonTitle: String
  var userInfo: [String : AnyObject]?
  @NSCopying var deliveryDate: Date?
  @NSCopying var deliveryTimeZone: TimeZone?
  @NSCopying var deliveryRepeatInterval: DateComponents?
  @NSCopying var actualDeliveryDate: Date? { get }
  var isPresented: Bool { get }
  var isRemote: Bool { get }
  var soundName: String?
  var hasActionButton: Bool
  var activationType: UserNotificationActivationType { get }
  var otherButtonTitle: String
  @available(OSX 10.9, *)
  var identifier: String?
  @available(OSX 10.9, *)
  var hasReplyButton: Bool
  @available(OSX 10.9, *)
  var responsePlaceholder: String?
  @available(OSX 10.9, *)
  @NSCopying var response: AttributedString? { get }
  @available(OSX 10.10, *)
  var additionalActions: [UserNotificationAction]?
  @available(OSX 10.10, *)
  @NSCopying var additionalActivationAction: UserNotificationAction? { get }
  @available(OSX 10.8, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.10, *)
class UserNotificationAction : Object, Copying {
  convenience init(identifier: String?, title: String?)
  var identifier: String? { get }
  var title: String? { get }
  init()
  @available(OSX 10.10, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.8, *)
let userNotificationDefaultSoundName: String
@available(OSX 10.8, *)
class UserNotificationCenter : Object {
  class func defaultUserNotificationCenter() -> UserNotificationCenter
  unowned(unsafe) var delegate: @sil_unmanaged UserNotificationCenterDelegate?
  var scheduledNotifications: [UserNotification]
  func scheduleNotification(notification: UserNotification)
  func removeScheduledNotification(notification: UserNotification)
  var deliveredNotifications: [UserNotification] { get }
  func deliver(notification: UserNotification)
  func removeDeliveredNotification(notification: UserNotification)
  func removeAllDeliveredNotifications()
  init()
}
protocol UserNotificationCenterDelegate : ObjectProtocol {
  @available(OSX 10.8, *)
  optional func userNotificationCenter(center: UserNotificationCenter, didDeliver notification: UserNotification)
  @available(OSX 10.8, *)
  optional func userNotificationCenter(center: UserNotificationCenter, didActivateNotification notification: UserNotification)
  @available(OSX 10.8, *)
  optional func userNotificationCenter(center: UserNotificationCenter, shouldPresent notification: UserNotification) -> Bool
}
@available(OSX 10.8, *)
class UserScriptTask : Object {
  init(url: URL) throws
  @NSCopying var scriptURL: URL { get }
  func execute(completionHandler handler: UserScriptTaskCompletionHandler? = nil)
  convenience init()
}
typealias UserScriptTaskCompletionHandler = (Error?) -> Void
@available(OSX 10.8, *)
class UserUnixTask : UserScriptTask {
  var standardInput: FileHandle?
  var standardOutput: FileHandle?
  var standardError: FileHandle?
  func executeWithArguments(arguments: [String]?, completionHandler handler: UserUnixTaskCompletionHandler? = nil)
  init(url: URL) throws
  convenience init()
}
typealias UserUnixTaskCompletionHandler = (Error?) -> Void
@available(OSX 10.8, *)
class UserAppleScriptTask : UserScriptTask {
  func executeWithAppleEvent(event: AppleEventDescriptor?, completionHandler handler: UserAppleScriptTaskCompletionHandler? = nil)
  init(url: URL) throws
  convenience init()
}
typealias UserAppleScriptTaskCompletionHandler = (AppleEventDescriptor?, Error?) -> Void
@available(OSX 10.8, *)
class UserAutomatorTask : UserScriptTask {
  var variables: [String : AnyObject]?
  func executeWithInput(input: SecureCoding?, completionHandler handler: UserAutomatorTaskCompletionHandler? = nil)
  init(url: URL) throws
  convenience init()
}
typealias UserAutomatorTaskCompletionHandler = (AnyObject?, Error?) -> Void
class Value : Object, Copying, SecureCoding {
  func getValue(value: UnsafeMutablePointer<Void>)
  var objCType: UnsafePointer<Int8> { get }
  init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  init?(coder aDecoder: Coder)
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
extension Value {
  /*not inherited*/ init(_ value: UnsafePointer<Void>, withObjCType type: UnsafePointer<Int8>)
}
extension Value {
  /*not inherited*/ init(nonretainedObject anObject: AnyObject?)
  var nonretainedObjectValue: AnyObject? { get }
  /*not inherited*/ init(pointer: UnsafePointer<Void>)
  var pointerValue: UnsafeMutablePointer<Void> { get }
  func isEqualTo(value: Value) -> Bool
}
class Number : Value {
  init?(coder aDecoder: Coder)
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
  func compare(otherNumber: Number) -> ComparisonResult
  func isEqualTo(number: Number) -> Bool
  func descriptionWithLocale(locale: AnyObject?) -> String
  convenience init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  convenience init()
}

extension Number : FloatLiteralConvertible, IntegerLiteralConvertible, BooleanLiteralConvertible {
  required convenience init(integerLiteral value: Int)
  required convenience init(floatLiteral value: Double)
  required convenience init(booleanLiteral value: Bool)
  typealias FloatLiteralType = Double
  typealias IntegerLiteralType = Int
  typealias BooleanLiteralType = Bool
}
extension Number {
}
@available(OSX 10.3, *)
let negateBooleanTransformerName: String
@available(OSX 10.3, *)
let isNilTransformerName: String
@available(OSX 10.3, *)
let isNotNilTransformerName: String
@available(OSX 10.3, *)
let unarchiveFromDataTransformerName: String
@available(OSX 10.5, *)
let keyedUnarchiveFromDataTransformerName: String
@available(OSX 10.3, *)
class ValueTransformer : Object {
  class func setValueTransformer(transformer: ValueTransformer?, forName name: String)
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
class XMLDTD : XMLNode {
  init()
  convenience init(contentsOf url: URL, options mask: Int) throws
  init(data: Data, options mask: Int) throws

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
  func insertChild(child: XMLNode, at index: Int)

  /*!
      @method insertChildren:atIndex:
      @abstract Insert several children at a particular index.
  */
  func insertChildren(children: [XMLNode], at index: Int)

  /*!
      @method removeChildAtIndex:
      @abstract Removes a child at a particular index.
  */
  func removeChildAt(index: Int)

  /*!
      @method setChildren:
      @abstract Removes all existing children and replaces them with the new children. Set children to nil to simply remove all children.
  */
  func setChildren(children: [XMLNode]?)

  /*!
      @method addChild:
      @abstract Adds a child to the end of the existing children.
  */
  func addChild(child: XMLNode)

  /*!
      @method replaceChildAtIndex:withNode:
      @abstract Replaces a child at a particular index with another child.
  */
  func replaceChildAt(index: Int, withNode node: XMLNode)

  /*!
      @method entityDeclarationForName:
      @abstract Returns the entity declaration matching this name.
  */
  func entityDeclarationForName(name: String) -> XMLDTDNode?

  /*!
      @method notationDeclarationForName:
      @abstract Returns the notation declaration matching this name.
  */
  func notationDeclarationForName(name: String) -> XMLDTDNode?

  /*!
      @method elementDeclarationForName:
      @abstract Returns the element declaration matching this name.
  */
  func elementDeclarationForName(name: String) -> XMLDTDNode?

  /*!
      @method attributeDeclarationForName:
      @abstract Returns the attribute declaration matching this name.
  */
  func attributeDeclarationForName(name: String, elementName: String) -> XMLDTDNode?

  /*!
      @method predefinedEntityDeclarationForName:
      @abstract Returns the predefined entity declaration matching this name.
  	@discussion The five predefined entities are
  	<ul><li>&amp;lt; - &lt;</li><li>&amp;gt; - &gt;</li><li>&amp;amp; - &amp;</li><li>&amp;quot; - &quot;</li><li>&amp;apos; - &amp;</li></ul>
  */
  class func predefinedEntityDeclarationForName(name: String) -> XMLDTDNode?

  /*!
      @method initWithKind:
      @abstract Invokes @link initWithKind:options: @/link with options set to NSXMLNodeOptionsNone
  */
  convenience init(kind: XMLNodeKind)
}

/*!
    @typedef NSXMLDTDNodeKind
	@abstract The subkind of a DTD node kind.
*/
enum XMLDTDNodeKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case XMLEntityGeneralKind
  case XMLEntityParsedKind
  case XMLEntityUnparsedKind
  case XMLEntityParameterKind
  case XMLEntityPredefined
  case XMLAttributeCDATAKind
  case XMLAttributeIDKind
  case XMLAttributeIDRefKind
  case XMLAttributeIDRefsKind
  case XMLAttributeEntityKind
  case XMLAttributeEntitiesKind
  case XMLAttributeNMTokenKind
  case XMLAttributeNMTokensKind
  case XMLAttributeEnumerationKind
  case XMLAttributeNotationKind
  case XMLElementDeclarationUndefinedKind
  case XMLElementDeclarationEmptyKind
  case XMLElementDeclarationAnyKind
  case XMLElementDeclarationMixedKind
  case XMLElementDeclarationElementKind
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
class XMLDTDNode : XMLNode {

  /*!
      @method initWithXMLString:
      @abstract Returns an element, attribute, entity, or notation DTD node based on the full XML string.
  */
  init?(xmlString string: String)
  init(kind: XMLNodeKind, options: Int)
  init()

  /*!
      @method DTDKind
      @abstract Sets the DTD sub kind.
  */
  var dtdKind: XMLDTDNodeKind

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
  convenience init(kind: XMLNodeKind)
}

/*!
    @typedef NSXMLDocumentContentKind
	@abstract Define what type of document this is.
	@constant NSXMLDocumentXMLKind The default document type
	@constant NSXMLDocumentXHTMLKind Set if NSXMLDocumentTidyHTML is set and HTML is detected
	@constant NSXMLDocumentHTMLKind Outputs empty tags without a close tag, eg <br>
	@constant NSXMLDocumentTextKind Output the string value of the document
*/
enum XMLDocumentContentKind : UInt {
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
class XMLDocument : XMLNode {
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
  convenience init(contentsOf url: URL, options mask: Int) throws

  /*!
      @method initWithData:options:error:
      @abstract Returns a document created from data. Parse errors are returned in <tt>error</tt>.
  */
  init(data: Data, options mask: Int) throws

  /*!
      @method initWithRootElement:
      @abstract Returns a document with a single child, the root element.
  */
  init(rootElement element: XMLElement?)
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
  var documentContentKind: XMLDocumentContentKind

  /*!
      @method MIMEType
      @abstract Set the MIME type, eg text/xml.
  */
  var mimeType: String?

  /*!
      @method DTD
      @abstract Set the associated DTD. This DTD will be output with the document.
  */
  @NSCopying var dtd: XMLDTD?

  /*!
      @method setRootElement:
      @abstract Set the root element. Removes all other children including comments and processing-instructions.
  */
  func setRootElement(root: XMLElement)

  /*!
      @method rootElement
      @abstract The root element.
  */
  func rootElement() -> XMLElement?

  /*!
      @method insertChild:atIndex:
      @abstract Inserts a child at a particular index.
  */
  func insertChild(child: XMLNode, at index: Int)

  /*!
      @method insertChildren:atIndex:
      @abstract Insert several children at a particular index.
  */
  func insertChildren(children: [XMLNode], at index: Int)

  /*!
      @method removeChildAtIndex:atIndex:
      @abstract Removes a child at a particular index.
  */
  func removeChildAt(index: Int)

  /*!
      @method setChildren:
      @abstract Removes all existing children and replaces them with the new children. Set children to nil to simply remove all children.
  */
  func setChildren(children: [XMLNode]?)

  /*!
      @method addChild:
      @abstract Adds a child to the end of the existing children.
  */
  func addChild(child: XMLNode)

  /*!
      @method replaceChildAtIndex:withNode:
      @abstract Replaces a child at a particular index with another child.
  */
  func replaceChildAt(index: Int, withNode node: XMLNode)

  /*!
      @method XMLData
      @abstract Invokes XMLDataWithOptions with NSXMLNodeOptionsNone.
  */
  @NSCopying var xmlData: Data { get }

  /*!
      @method XMLDataWithOptions:
      @abstract The representation of this node as it would appear in an XML document, encoded based on characterEncoding.
  */
  func xmlDataWithOptions(options: Int) -> Data

  /*!
      @method objectByApplyingXSLT:arguments:error:
      @abstract Applies XSLT with arguments (NSString key/value pairs) to this document, returning a new document.
  */
  func objectByApplyingXSLT(xslt: Data, arguments: [String : String]?) throws -> AnyObject

  /*!
      @method objectByApplyingXSLTString:arguments:error:
      @abstract Applies XSLT as expressed by a string with arguments (NSString key/value pairs) to this document, returning a new document.
  */
  func objectByApplyingXSLTString(xslt: String, arguments: [String : String]?) throws -> AnyObject

  /*!
      @method objectByApplyingXSLTAtURL:arguments:error:
      @abstract Applies the XSLT at a URL with arguments (NSString key/value pairs) to this document, returning a new document. Error may contain a connection error from the URL.
  */
  func objectByApplyingXSLTAt(xsltURL: URL, arguments argument: [String : String]?) throws -> AnyObject
  func validate() throws

  /*!
      @method initWithKind:
      @abstract Invokes @link initWithKind:options: @/link with options set to NSXMLNodeOptionsNone
  */
  convenience init(kind: XMLNodeKind)

  /*!
      @method initWithKind:options:
      @abstract Inits a node with fidelity options as description NSXMLNodeOptions.h
  */
  convenience init(kind: XMLNodeKind, options: Int)
}

/*!
    @class NSXMLElement
    @abstract An XML element
    @discussion Note: Trying to add a document, namespace, attribute, or node with a parent throws an exception. To add a node with a parent first detach or create a copy of it.
*/
class XMLElement : XMLNode {

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
  convenience init(kind: XMLNodeKind, options: Int)

  /*!
      @method elementsForName:
      @abstract Returns all of the child elements that match this name.
  */
  func elementsForName(name: String) -> [XMLElement]

  /*!
      @method elementsForLocalName:URI
      @abstract Returns all of the child elements that match this localname URI pair.
  */
  func elementsForLocalName(localName: String, uri URI: String?) -> [XMLElement]

  /*!
      @method addAttribute:
      @abstract Adds an attribute. Attributes with duplicate names are not added.
  */
  func addAttribute(attribute: XMLNode)

  /*!
      @method removeAttributeForName:
      @abstract Removes an attribute based on its name.
  */
  func removeAttributeForName(name: String)

  /*!
      @method setAttributes
      @abstract Set the attributes. In the case of duplicate names, the first attribute with the name is used.
  */
  var attributes: [XMLNode]?

  /*!
   @method setAttributesWithDictionary:
   @abstract Set the attributes based on a name-value dictionary.
   */
  func setAttributesWith(attributes: [String : String])

  /*!
      @method attributeForName:
      @abstract Returns an attribute matching this name.
  */
  func attributeForName(name: String) -> XMLNode?

  /*!
      @method attributeForLocalName:URI:
      @abstract Returns an attribute matching this localname URI pair.
  */
  func attributeForLocalName(localName: String, uri URI: String?) -> XMLNode?

  /*!
      @method addNamespace:URI:
      @abstract Adds a namespace. Namespaces with duplicate names are not added.
  */
  func addNamespace(aNamespace: XMLNode)

  /*!
      @method addNamespace:URI:
      @abstract Removes a namespace with a particular name.
  */
  func removeNamespaceForPrefix(name: String)

  /*!
      @method namespaces
      @abstract Set the namespaces. In the case of duplicate names, the first namespace with the name is used.
  */
  var namespaces: [XMLNode]?

  /*!
      @method namespaceForPrefix:
      @abstract Returns the namespace matching this prefix.
  */
  func namespaceForPrefix(name: String) -> XMLNode?

  /*!
      @method resolveNamespaceForName:
      @abstract Returns the namespace who matches the prefix of the name given. Looks in the entire namespace chain.
  */
  func resolveNamespaceForName(name: String) -> XMLNode?

  /*!
      @method resolvePrefixForNamespaceURI:
      @abstract Returns the URI of this prefix. Looks in the entire namespace chain.
  */
  func resolvePrefixForNamespaceURI(namespaceURI: String) -> String?

  /*!
      @method insertChild:atIndex:
      @abstract Inserts a child at a particular index.
  */
  func insertChild(child: XMLNode, at index: Int)

  /*!
      @method insertChildren:atIndex:
      @abstract Insert several children at a particular index.
  */
  func insertChildren(children: [XMLNode], at index: Int)

  /*!
      @method removeChildAtIndex:atIndex:
      @abstract Removes a child at a particular index.
  */
  func removeChildAt(index: Int)

  /*!
      @method setChildren:
      @abstract Removes all existing children and replaces them with the new children. Set children to nil to simply remove all children.
  */
  func setChildren(children: [XMLNode]?)

  /*!
      @method addChild:
      @abstract Adds a child to the end of the existing children.
  */
  func addChild(child: XMLNode)

  /*!
      @method replaceChildAtIndex:withNode:
      @abstract Replaces a child at a particular index with another child.
  */
  func replaceChildAt(index: Int, withNode node: XMLNode)

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
  convenience init(kind: XMLNodeKind)
}
extension XMLElement {

  /*!
      @method setAttributesAsDictionary:
      @abstract Set the attributes base on a name-value dictionary.
      @discussion This method is deprecated and does not function correctly. Use -setAttributesWithDictionary: instead.
   */
  func setAttributesAs(attributes: [Object : AnyObject])
}

/*!
    @typedef NSXMLNodeKind
*/
enum XMLNodeKind : UInt {
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
class XMLNode : Object, Copying {
  init()

  /*!
      @method initWithKind:
      @abstract Invokes @link initWithKind:options: @/link with options set to NSXMLNodeOptionsNone
  */
  convenience init(kind: XMLNodeKind)

  /*!
      @method initWithKind:options:
      @abstract Inits a node with fidelity options as description NSXMLNodeOptions.h
  */
  init(kind: XMLNodeKind, options: Int)

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
  class func documentWithRootElement(element: XMLElement) -> AnyObject

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
  class func elementWithName(name: String, children: [XMLNode]?, attributes: [XMLNode]?) -> AnyObject

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
  var kind: XMLNodeKind { get }

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
  var rootDocument: XMLDocument? { get }

  /*!
      @method parent
      @abstract The parent of this node. Documents and standalone Nodes have a nil parent; there is not a 1-to-1 relationship between parent and children, eg a namespace cannot be a child but has a parent element.
  */
  @NSCopying var parent: XMLNode? { get }

  /*!
      @method childCount
      @abstract The amount of children, relevant for documents, elements, and document type declarations. Use this instead of [[self children] count].
  */
  var childCount: Int { get }

  /*!
      @method children
      @abstract An immutable array of child nodes. Relevant for documents, elements, and document type declarations.
  */
  var children: [XMLNode]? { get }

  /*!
      @method childAtIndex:
      @abstract Returns the child node at a particular index.
  */
  func childAt(index: Int) -> XMLNode?

  /*!
      @method previousSibling:
      @abstract Returns the previous sibling, or nil if there isn't one.
  */
  @NSCopying var previousSibling: XMLNode? { get }

  /*!
      @method nextSibling:
      @abstract Returns the next sibling, or nil if there isn't one.
  */
  @NSCopying var nextSibling: XMLNode? { get }

  /*!
      @method previousNode:
      @abstract Returns the previous node in document order. This can be used to walk the tree backwards.
  */
  @NSCopying var previous: XMLNode? { get }

  /*!
      @method nextNode:
      @abstract Returns the next node in document order. This can be used to walk the tree forwards.
  */
  @NSCopying var next: XMLNode? { get }

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
  class func predefinedNamespaceForPrefix(name: String) -> XMLNode?

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
  func nodesForXPath(xpath: String) throws -> [XMLNode]

  /*!
      @method objectsForXQuery:constants:error:
      @abstract Returns the objects resulting from applying an XQuery to this node using the node as the context item ("."). Constants are a name-value dictionary for constants declared "external" in the query. normalizeAdjacentTextNodesPreservingCDATA:NO should be called if there are adjacent text nodes since they are not allowed under the XPath/XQuery Data Model.
  	@returns An array whose elements are kinds of NSArray, NSData, NSDate, NSNumber, NSString, NSURL, or NSXMLNode.
  */
  func objectsForXQuery(xquery: String, constants: [String : AnyObject]?) throws -> [AnyObject]
  func objectsForXQuery(xquery: String) throws -> [AnyObject]
  func copy(zone zone: Zone = nil) -> AnyObject
}
var XMLNodeOptionsNone: Int { get }
var XMLNodeIsCDATA: Int { get }
var XMLNodeExpandEmptyElement: Int { get }
var XMLNodeCompactEmptyElement: Int { get }
var XMLNodeUseSingleQuotes: Int { get }
var XMLNodeUseDoubleQuotes: Int { get }
var XMLNodeNeverEscapeContents: Int { get }
var XMLDocumentTidyHTML: Int { get }
var XMLDocumentTidyXML: Int { get }
var XMLDocumentValidate: Int { get }
var XMLNodeLoadExternalEntitiesAlways: Int { get }
var XMLNodeLoadExternalEntitiesSameOriginOnly: Int { get }
var XMLNodeLoadExternalEntitiesNever: Int { get }
var XMLDocumentXInclude: Int { get }
var XMLNodePrettyPrint: Int { get }
var XMLDocumentIncludeContentTypeDeclaration: Int { get }
var XMLNodePreserveNamespaceOrder: Int { get }
var XMLNodePreserveAttributeOrder: Int { get }
var XMLNodePreserveEntities: Int { get }
var XMLNodePreservePrefixes: Int { get }
var XMLNodePreserveCDATA: Int { get }
var XMLNodePreserveWhitespace: Int { get }
var XMLNodePreserveDTD: Int { get }
var XMLNodePreserveCharacterReferences: Int { get }
var XMLNodePromoteSignificantWhitespace: Int { get }
var XMLNodePreserveEmptyElements: Int { get }
var XMLNodePreserveQuotes: Int { get }
var XMLNodePreserveAll: Int { get }
@available(OSX 10.9, *)
enum XMLParserExternalEntityResolvingPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ResolveExternalEntitiesNever
  case ResolveExternalEntitiesNoNetwork
  case ResolveExternalEntitiesSameOriginOnly
  case ResolveExternalEntitiesAlways
}
class XMLParser : Object {
  convenience init?(contentsOf url: URL)
  init(data: Data)
  @available(OSX 10.7, *)
  convenience init(stream: InputStream)
  unowned(unsafe) var delegate: @sil_unmanaged XMLParserDelegate?
  var shouldProcessNamespaces: Bool
  var shouldReportNamespacePrefixes: Bool
  @available(OSX 10.9, *)
  var externalEntityResolvingPolicy: XMLParserExternalEntityResolvingPolicy
  @available(OSX 10.9, *)
  var allowedExternalEntityURLs: Set<URL>?
  func parse() -> Bool
  func abortParsing()
  @NSCopying var parserError: Error? { get }
  var shouldResolveExternalEntities: Bool
  convenience init()
}
extension XMLParser {
  var publicID: String? { get }
  var systemID: String? { get }
  var lineNumber: Int { get }
  var columnNumber: Int { get }
}
protocol XMLParserDelegate : ObjectProtocol {
  optional func parserDidStartDocument(parser: XMLParser)
  optional func parserDidEndDocument(parser: XMLParser)
  optional func parser(parser: XMLParser, foundNotationDeclarationWithName name: String, publicID: String?, systemID: String?)
  optional func parser(parser: XMLParser, foundUnparsedEntityDeclarationWithName name: String, publicID: String?, systemID: String?, notationName: String?)
  optional func parser(parser: XMLParser, foundAttributeDeclarationWithName attributeName: String, forElement elementName: String, type: String?, defaultValue: String?)
  optional func parser(parser: XMLParser, foundElementDeclarationWithName elementName: String, model: String)
  optional func parser(parser: XMLParser, foundInternalEntityDeclarationWithName name: String, value: String?)
  optional func parser(parser: XMLParser, foundExternalEntityDeclarationWithName name: String, publicID: String?, systemID: String?)
  optional func parser(parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:])
  optional func parser(parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?)
  optional func parser(parser: XMLParser, didStartMappingPrefix prefix: String, toURI namespaceURI: String)
  optional func parser(parser: XMLParser, didEndMappingPrefix prefix: String)
  optional func parser(parser: XMLParser, foundCharacters string: String)
  optional func parser(parser: XMLParser, foundIgnorableWhitespace whitespaceString: String)
  optional func parser(parser: XMLParser, foundProcessingInstructionWithTarget target: String, data: String?)
  optional func parser(parser: XMLParser, foundComment comment: String)
  optional func parser(parser: XMLParser, foundCDATA CDATABlock: Data)
  optional func parser(parser: XMLParser, resolveExternalEntityName name: String, systemID: String?) -> Data?
  optional func parser(parser: XMLParser, parseErrorOccurred parseError: Error)
  optional func parser(parser: XMLParser, validationErrorOccurred validationError: Error)
}
@available(OSX 10.3, *)
let XMLParserErrorDomain: String
enum XMLParserError : Int {
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
protocol XPCProxyCreating {
  func remoteObjectProxy() -> AnyObject
  func remoteObjectProxyWithErrorHandler(handler: (Error) -> Void) -> AnyObject
}
@available(OSX 10.8, *)
struct XPCConnectionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Privileged: XPCConnectionOptions { get }
}
@available(OSX 10.8, *)
class XPCConnection : Object, XPCProxyCreating {
  init(serviceName: String)
  var serviceName: String? { get }
  init(machServiceName name: String, options: XPCConnectionOptions = [])
  init(listenerEndpoint endpoint: XPCListenerEndpoint)
  var endpoint: XPCListenerEndpoint { get }
  var exportedInterface: XPCInterface?
  var exportedObject: AnyObject?
  var remoteObjectInterface: XPCInterface?
  var remoteObjectProxy: AnyObject { get }
  func remoteObjectProxyWithErrorHandler(handler: (Error) -> Void) -> AnyObject
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
class XPCListener : Object {
  class func service() -> XPCListener
  class func anonymous() -> XPCListener
  init(machServiceName name: String)
  unowned(unsafe) var delegate: @sil_unmanaged XPCListenerDelegate?
  var endpoint: XPCListenerEndpoint { get }
  func resume()
  func suspend()
  func invalidate()
  convenience init()
}
protocol XPCListenerDelegate : ObjectProtocol {
  @available(OSX 10.8, *)
  optional func listener(listener: XPCListener, shouldAcceptNewConnection newConnection: XPCConnection) -> Bool
}
@available(OSX 10.8, *)
class XPCInterface : Object {
  /*not inherited*/ init(withProtocol protocol: Protocol)
  unowned(unsafe) var `protocol`: @sil_unmanaged Protocol
  func setClasses(classes: Set<Object>, forSelector sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func classesFor(sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> Set<Object>
  func setInterface(ifc: XPCInterface, forSelector sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func forSelector(sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> XPCInterface?
  init()
}
@available(OSX 10.8, *)
class XPCListenerEndpoint : Object, SecureCoding {
  init()
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
var scannedOption: Int { get }
var collectorDisabledOption: Int { get }
func pageSize() -> Int
func logPageSize() -> Int
func roundUpToMultipleOfPageSize(bytes: Int) -> Int
func roundDownToMultipleOfPageSize(bytes: Int) -> Int
func allocateMemoryPages(bytes: Int) -> UnsafeMutablePointer<Void>
func deallocateMemoryPages(ptr: UnsafeMutablePointer<Void>, _ bytes: Int)
func copyMemoryPages(source: UnsafePointer<Void>, _ dest: UnsafeMutablePointer<Void>, _ bytes: Int)
