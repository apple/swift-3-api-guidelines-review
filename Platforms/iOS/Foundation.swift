
var NSFileNoSuchFileError: Int { get }
var NSFileLockingError: Int { get }
var NSFileReadUnknownError: Int { get }
var NSFileReadNoPermissionError: Int { get }
var NSFileReadInvalidFileNameError: Int { get }
var NSFileReadCorruptFileError: Int { get }
var NSFileReadNoSuchFileError: Int { get }
var NSFileReadInapplicableStringEncodingError: Int { get }
var NSFileReadUnsupportedSchemeError: Int { get }
@available(iOS 2.0, *)
var NSFileReadTooLargeError: Int { get }
@available(iOS 2.0, *)
var NSFileReadUnknownStringEncodingError: Int { get }
var NSFileWriteUnknownError: Int { get }
var NSFileWriteNoPermissionError: Int { get }
var NSFileWriteInvalidFileNameError: Int { get }
@available(iOS 5.0, *)
var NSFileWriteFileExistsError: Int { get }
var NSFileWriteInapplicableStringEncodingError: Int { get }
var NSFileWriteUnsupportedSchemeError: Int { get }
var NSFileWriteOutOfSpaceError: Int { get }
@available(iOS 4.0, *)
var NSFileWriteVolumeReadOnlyError: Int { get }
var NSKeyValueValidationError: Int { get }
var NSFormattingError: Int { get }
var NSUserCancelledError: Int { get }
@available(iOS 6.0, *)
var NSFeatureUnsupportedError: Int { get }
@available(iOS 2.0, *)
var NSExecutableNotLoadableError: Int { get }
@available(iOS 2.0, *)
var NSExecutableArchitectureMismatchError: Int { get }
@available(iOS 2.0, *)
var NSExecutableRuntimeMismatchError: Int { get }
@available(iOS 2.0, *)
var NSExecutableLoadError: Int { get }
@available(iOS 2.0, *)
var NSExecutableLinkError: Int { get }
var NSFileErrorMinimum: Int { get }
var NSFileErrorMaximum: Int { get }
var NSValidationErrorMinimum: Int { get }
var NSValidationErrorMaximum: Int { get }
@available(iOS 2.0, *)
var NSExecutableErrorMinimum: Int { get }
@available(iOS 2.0, *)
var NSExecutableErrorMaximum: Int { get }
var NSFormattingErrorMinimum: Int { get }
var NSFormattingErrorMaximum: Int { get }
@available(iOS 4.0, *)
var NSPropertyListReadCorruptError: Int { get }
@available(iOS 4.0, *)
var NSPropertyListReadUnknownVersionError: Int { get }
@available(iOS 4.0, *)
var NSPropertyListReadStreamError: Int { get }
@available(iOS 4.0, *)
var NSPropertyListWriteStreamError: Int { get }
@available(iOS 8.0, *)
var NSPropertyListWriteInvalidError: Int { get }
@available(iOS 4.0, *)
var NSPropertyListErrorMinimum: Int { get }
@available(iOS 4.0, *)
var NSPropertyListErrorMaximum: Int { get }
@available(iOS 6.0, *)
var NSXPCConnectionInterrupted: Int { get }
@available(iOS 6.0, *)
var NSXPCConnectionInvalid: Int { get }
@available(iOS 6.0, *)
var NSXPCConnectionReplyInvalid: Int { get }
@available(iOS 6.0, *)
var NSXPCConnectionErrorMinimum: Int { get }
@available(iOS 6.0, *)
var NSXPCConnectionErrorMaximum: Int { get }
@available(iOS 7.0, *)
var NSUbiquitousFileUnavailableError: Int { get }
@available(iOS 7.0, *)
var NSUbiquitousFileNotUploadedDueToQuotaError: Int { get }
@available(iOS 7.0, *)
var NSUbiquitousFileUbiquityServerNotAvailable: Int { get }
@available(iOS 7.0, *)
var NSUbiquitousFileErrorMinimum: Int { get }
@available(iOS 7.0, *)
var NSUbiquitousFileErrorMaximum: Int { get }
@available(iOS 8.0, *)
var NSUserActivityHandoffFailedError: Int { get }
@available(iOS 8.0, *)
var NSUserActivityConnectionUnavailableError: Int { get }
@available(iOS 8.0, *)
var NSUserActivityRemoteApplicationTimedOutError: Int { get }
@available(iOS 8.0, *)
var NSUserActivityHandoffUserInfoTooLargeError: Int { get }
@available(iOS 8.0, *)
var NSUserActivityErrorMinimum: Int { get }
@available(iOS 8.0, *)
var NSUserActivityErrorMaximum: Int { get }
@available(iOS 9.0, *)
var NSCoderReadCorruptError: Int { get }
@available(iOS 9.0, *)
var NSCoderValueNotFoundError: Int { get }
@available(iOS 9.0, *)
var NSCoderErrorMinimum: Int { get }
@available(iOS 9.0, *)
var NSCoderErrorMaximum: Int { get }
@available(iOS 9.0, *)
var NSBundleErrorMinimum: Int { get }
@available(iOS 9.0, *)
var NSBundleErrorMaximum: Int { get }
@available(iOS 9.0, *)
var NSBundleOnDemandResourceOutOfSpaceError: Int { get }
@available(iOS 9.0, *)
var NSBundleOnDemandResourceExceededMaximumSizeError: Int { get }
@available(iOS 9.0, *)
var NSBundleOnDemandResourceInvalidTagError: Int { get }

/****************	Immutable Array		****************/
class NSArray : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectAtIndex(index: Int) -> AnyObject
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func arrayByAddingObject(anObject: AnyObject) -> [AnyObject]
  func arrayByAddingObjectsFromArray(otherArray: [AnyObject]) -> [AnyObject]
  func componentsJoinedByString(separator: String) -> String
  func containsObject(anObject: AnyObject) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
  func firstObjectCommonWithArray(otherArray: [AnyObject]) -> AnyObject?
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func indexOfObject(anObject: AnyObject) -> Int
  func indexOfObject(anObject: AnyObject, inRange range: NSRange) -> Int
  func indexOfObjectIdenticalTo(anObject: AnyObject) -> Int
  func indexOfObjectIdenticalTo(anObject: AnyObject, inRange range: NSRange) -> Int
  func isEqualToArray(otherArray: [AnyObject]) -> Bool
  @available(iOS 4.0, *)
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var sortedArrayHint: NSData { get }
  func sortedArrayUsingFunction(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>) -> [AnyObject]
  func sortedArrayUsingFunction(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>, hint: NSData?) -> [AnyObject]
  func sortedArrayUsingSelector(comparator: Selector) -> [AnyObject]
  func subarrayWithRange(range: NSRange) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(url: NSURL, atomically: Bool) -> Bool
  func objectsAtIndexes(indexes: NSIndexSet) -> [AnyObject]
  @available(iOS 6.0, *)
  subscript (idx: Int) -> AnyObject { get }
  @available(iOS 4.0, *)
  func enumerateObjectsUsingBlock(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func indexOfObjectWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func indexOfObjectAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(iOS 4.0, *)
  func indexesOfObjectsWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(iOS 4.0, *)
  func indexesOfObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(iOS 4.0, *)
  func sortedArrayUsingComparator(cmptr: NSComparator) -> [AnyObject]
  @available(iOS 4.0, *)
  func sortedArrayWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator) -> [AnyObject]
  @available(iOS 4.0, *)
  func indexOfObject(obj: AnyObject, inSortedRange r: NSRange, options opts: NSBinarySearchingOptions, usingComparator cmp: NSComparator) -> Int
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
  convenience init?(contentsOfURL url: NSURL)
}
extension NSArray {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}

/****************	Mutable Array		****************/
class NSMutableArray : NSArray {
  func addObject(anObject: AnyObject)
  func insertObject(anObject: AnyObject, atIndex index: Int)
  func removeLastObject()
  func removeObjectAtIndex(index: Int)
  func replaceObjectAtIndex(index: Int, withObject anObject: AnyObject)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
}
extension NSMutableArray {
  func addObjectsFromArray(otherArray: [AnyObject])
  func exchangeObjectAtIndex(idx1: Int, withObjectAtIndex idx2: Int)
  func removeAllObjects()
  func removeObject(anObject: AnyObject, inRange range: NSRange)
  func removeObject(anObject: AnyObject)
  func removeObjectIdenticalTo(anObject: AnyObject, inRange range: NSRange)
  func removeObjectIdenticalTo(anObject: AnyObject)
  func removeObjectsInArray(otherArray: [AnyObject])
  func removeObjectsInRange(range: NSRange)
  func replaceObjectsInRange(range: NSRange, withObjectsFromArray otherArray: [AnyObject], range otherRange: NSRange)
  func replaceObjectsInRange(range: NSRange, withObjectsFromArray otherArray: [AnyObject])
  func setArray(otherArray: [AnyObject])
  func sortUsingFunction(compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>)
  func sortUsingSelector(comparator: Selector)
  func insertObjects(objects: [AnyObject], atIndexes indexes: NSIndexSet)
  func removeObjectsAtIndexes(indexes: NSIndexSet)
  func replaceObjectsAtIndexes(indexes: NSIndexSet, withObjects objects: [AnyObject])
  @available(iOS 6.0, *)
  subscript (idx: Int) -> AnyObject
  @available(iOS 4.0, *)
  func sortUsingComparator(cmptr: NSComparator)
  @available(iOS 4.0, *)
  func sortWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator)
}
extension NSMutableArray {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOfURL url: NSURL)
}
@available(iOS 3.2, *)
class NSAttributedString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var string: String { get }
  func attributesAtIndex(location: Int, effectiveRange range: NSRangePointer) -> [String : AnyObject]
  init()
  @available(iOS 3.2, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 3.2, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 3.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.2, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
  var length: Int { get }
  func attribute(attrName: String, atIndex location: Int, effectiveRange range: NSRangePointer) -> AnyObject?
  func attributedSubstringFromRange(range: NSRange) -> NSAttributedString
  func attributesAtIndex(location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> [String : AnyObject]
  func attribute(attrName: String, atIndex location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> AnyObject?
  func isEqualToAttributedString(other: NSAttributedString) -> Bool
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
  @available(iOS 4.0, *)
  func enumerateAttributesInRange(enumerationRange: NSRange, options opts: NSAttributedStringEnumerationOptions, usingBlock block: ([String : AnyObject], NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateAttribute(attrName: String, inRange enumerationRange: NSRange, options opts: NSAttributedStringEnumerationOptions, usingBlock block: (AnyObject?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
struct NSAttributedStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Reverse: NSAttributedStringEnumerationOptions { get }
  static var LongestEffectiveRangeNotRequired: NSAttributedStringEnumerationOptions { get }
}
@available(iOS 3.2, *)
class NSMutableAttributedString : NSAttributedString {
  func replaceCharactersInRange(range: NSRange, withString str: String)
  func setAttributes(attrs: [String : AnyObject]?, range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
}
extension NSMutableAttributedString {
  var mutableString: NSMutableString { get }
  func addAttribute(name: String, value: AnyObject, range: NSRange)
  func addAttributes(attrs: [String : AnyObject], range: NSRange)
  func removeAttribute(name: String, range: NSRange)
  func replaceCharactersInRange(range: NSRange, withAttributedString attrString: NSAttributedString)
  func insertAttributedString(attrString: NSAttributedString, atIndex loc: Int)
  func appendAttributedString(attrString: NSAttributedString)
  func deleteCharactersInRange(range: NSRange)
  func setAttributedString(attrString: NSAttributedString)
  func beginEditing()
  func endEditing()
}
class NSBundle : NSObject {
  class func mainBundle() -> NSBundle
  init?(path: String)
  @available(iOS 4.0, *)
  convenience init?(URL url: NSURL)
  /*not inherited*/ init(forClass aClass: AnyClass)
  /*not inherited*/ init?(identifier: String)
  class func allBundles() -> [NSBundle]
  class func allFrameworks() -> [NSBundle]
  func load() -> Bool
  var loaded: Bool { get }
  func unload() -> Bool
  @available(iOS 2.0, *)
  func preflight() throws
  @available(iOS 2.0, *)
  func loadAndReturnError() throws
  @available(iOS 4.0, *)
  @NSCopying var bundleURL: NSURL { get }
  @available(iOS 4.0, *)
  @NSCopying var resourceURL: NSURL? { get }
  @available(iOS 4.0, *)
  @NSCopying var executableURL: NSURL? { get }
  @available(iOS 4.0, *)
  func URLForAuxiliaryExecutable(executableName: String) -> NSURL?
  @available(iOS 4.0, *)
  @NSCopying var privateFrameworksURL: NSURL? { get }
  @available(iOS 4.0, *)
  @NSCopying var sharedFrameworksURL: NSURL? { get }
  @available(iOS 4.0, *)
  @NSCopying var sharedSupportURL: NSURL? { get }
  @available(iOS 4.0, *)
  @NSCopying var builtInPlugInsURL: NSURL? { get }
  @available(iOS 7.0, *)
  @NSCopying var appStoreReceiptURL: NSURL? { get }
  var bundlePath: String { get }
  var resourcePath: String? { get }
  var executablePath: String? { get }
  func pathForAuxiliaryExecutable(executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  @available(iOS 4.0, *)
  class func URLForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?, inBundleWithURL bundleURL: NSURL) -> NSURL?
  @available(iOS 4.0, *)
  class func URLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?, inBundleWithURL bundleURL: NSURL) -> [NSURL]?
  @available(iOS 4.0, *)
  func URLForResource(name: String?, withExtension ext: String?) -> NSURL?
  @available(iOS 4.0, *)
  func URLForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?) -> NSURL?
  @available(iOS 4.0, *)
  func URLForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> NSURL?
  @available(iOS 4.0, *)
  func URLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?) -> [NSURL]?
  @available(iOS 4.0, *)
  func URLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> [NSURL]?
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
  class func preferredLocalizationsFromArray(localizationsArray: [String]) -> [String]
  class func preferredLocalizationsFromArray(localizationsArray: [String], forPreferences preferencesArray: [String]?) -> [String]
  @available(iOS 2.0, *)
  var executableArchitectures: [NSNumber]? { get }
  convenience init()
}
var NSBundleExecutableArchitectureI386: Int { get }
var NSBundleExecutableArchitecturePPC: Int { get }
var NSBundleExecutableArchitectureX86_64: Int { get }
var NSBundleExecutableArchitecturePPC64: Int { get }
extension NSString {
  @available(iOS 9.0, *)
  func variantFittingPresentationWidth(width: Int) -> String
}
let NSBundleDidLoadNotification: String
let NSLoadedClasses: String
@available(iOS 9.0, *)
class NSBundleResourceRequest : NSObject, NSProgressReporting {
  convenience init(tags: Set<String>)
  init(tags: Set<String>, bundle: NSBundle)
  var loadingPriority: Double
  var tags: Set<String> { get }
  var bundle: NSBundle { get }
  func beginAccessingResourcesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func conditionallyBeginAccessingResourcesWithCompletionHandler(completionHandler: (Bool) -> Void)
  func endAccessingResources()
  var progress: NSProgress { get }
}
extension NSBundle {
  @available(iOS 9.0, *)
  func setPreservationPriority(priority: Double, forTags tags: Set<String>)
  @available(iOS 9.0, *)
  func preservationPriorityForTag(tag: String) -> Double
}
@available(iOS 9.0, *)
let NSBundleResourceRequestLowDiskSpaceNotification: String
@available(iOS 9.0, *)
let NSBundleResourceRequestLoadingPriorityUrgent: Double
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
@available(iOS 6.0, *)
class NSByteCountFormatter : NSFormatter {
  class func stringFromByteCount(byteCount: Int64, countStyle: NSByteCountFormatterCountStyle) -> String
  func stringFromByteCount(byteCount: Int64) -> String
  var allowedUnits: NSByteCountFormatterUnits
  var countStyle: NSByteCountFormatterCountStyle
  var allowsNonnumericFormatting: Bool
  var includesUnit: Bool
  var includesCount: Bool
  var includesActualByteCount: Bool
  var adaptive: Bool
  var zeroPadsFractionDigits: Bool
  @available(iOS 8.0, *)
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
@available(iOS 4.0, *)
class NSCache : NSObject {
  var name: String
  unowned(unsafe) var delegate: @sil_unmanaged NSCacheDelegate?
  func objectForKey(key: AnyObject) -> AnyObject?
  func setObject(obj: AnyObject, forKey key: AnyObject)
  func setObject(obj: AnyObject, forKey key: AnyObject, cost g: Int)
  func removeObjectForKey(key: AnyObject)
  func removeAllObjects()
  var totalCostLimit: Int
  var countLimit: Int
  var evictsObjectsWithDiscardedContent: Bool
  init()
}
protocol NSCacheDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func cache(cache: NSCache, willEvictObject obj: AnyObject)
}
@available(iOS 4.0, *)
let NSCalendarIdentifierGregorian: String
@available(iOS 4.0, *)
let NSCalendarIdentifierBuddhist: String
@available(iOS 4.0, *)
let NSCalendarIdentifierChinese: String
@available(iOS 4.0, *)
let NSCalendarIdentifierCoptic: String
@available(iOS 4.0, *)
let NSCalendarIdentifierEthiopicAmeteMihret: String
@available(iOS 4.0, *)
let NSCalendarIdentifierEthiopicAmeteAlem: String
@available(iOS 4.0, *)
let NSCalendarIdentifierHebrew: String
@available(iOS 4.0, *)
let NSCalendarIdentifierISO8601: String
@available(iOS 4.0, *)
let NSCalendarIdentifierIndian: String
@available(iOS 4.0, *)
let NSCalendarIdentifierIslamic: String
@available(iOS 4.0, *)
let NSCalendarIdentifierIslamicCivil: String
@available(iOS 4.0, *)
let NSCalendarIdentifierJapanese: String
@available(iOS 4.0, *)
let NSCalendarIdentifierPersian: String
@available(iOS 4.0, *)
let NSCalendarIdentifierRepublicOfChina: String
@available(iOS 8.0, *)
let NSCalendarIdentifierIslamicTabular: String
@available(iOS 8.0, *)
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
  @available(iOS 4.0, *)
  static var Quarter: NSCalendarUnit { get }
  @available(iOS 5.0, *)
  static var WeekOfMonth: NSCalendarUnit { get }
  @available(iOS 5.0, *)
  static var WeekOfYear: NSCalendarUnit { get }
  @available(iOS 5.0, *)
  static var YearForWeekOfYear: NSCalendarUnit { get }
  @available(iOS 5.0, *)
  static var Nanosecond: NSCalendarUnit { get }
  @available(iOS 4.0, *)
  static var Calendar: NSCalendarUnit { get }
  @available(iOS 4.0, *)
  static var TimeZone: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitEra instead")
  static var NSEraCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitYear instead")
  static var NSYearCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitMonth instead")
  static var NSMonthCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitDay instead")
  static var NSDayCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitHour instead")
  static var NSHourCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitMinute instead")
  static var NSMinuteCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitSecond instead")
  static var NSSecondCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitWeekOfMonth or NSCalendarUnitWeekOfYear, depending on which you mean")
  static var NSWeekCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitWeekday instead")
  static var NSWeekdayCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitWeekdayOrdinal instead")
  static var NSWeekdayOrdinalCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarUnitQuarter instead")
  static var NSQuarterCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use NSCalendarUnitWeekOfMonth instead")
  static var NSWeekOfMonthCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use NSCalendarUnitWeekOfYear instead")
  static var NSWeekOfYearCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use NSCalendarUnitYearForWeekOfYear instead")
  static var NSYearForWeekOfYearCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarUnitCalendar instead")
  static var NSCalendarCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarUnitTimeZone instead")
  static var NSTimeZoneCalendarUnit: NSCalendarUnit { get }
}
struct NSCalendarOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WrapComponents: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var MatchStrictly: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var SearchBackwards: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var MatchPreviousTimePreservingSmallerUnits: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var MatchNextTimePreservingSmallerUnits: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var MatchNextTime: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var MatchFirst: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var MatchLast: NSCalendarOptions { get }
}
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarWrapComponents instead")
var NSWrapCalendarComponents: Int { get }
class NSCalendar : NSObject, NSCopying, NSSecureCoding {
  class func currentCalendar() -> NSCalendar
  @available(iOS 2.0, *)
  class func autoupdatingCurrentCalendar() -> NSCalendar
  @available(iOS 8.0, *)
  /*not inherited*/ init?(identifier calendarIdentifierConstant: String)
  init?(calendarIdentifier ident: String)
  var calendarIdentifier: String { get }
  @NSCopying var locale: NSLocale?
  @NSCopying var timeZone: NSTimeZone
  var firstWeekday: Int
  var minimumDaysInFirstWeek: Int
  @available(iOS 5.0, *)
  var eraSymbols: [String] { get }
  @available(iOS 5.0, *)
  var longEraSymbols: [String] { get }
  @available(iOS 5.0, *)
  var monthSymbols: [String] { get }
  @available(iOS 5.0, *)
  var shortMonthSymbols: [String] { get }
  @available(iOS 5.0, *)
  var veryShortMonthSymbols: [String] { get }
  @available(iOS 5.0, *)
  var standaloneMonthSymbols: [String] { get }
  @available(iOS 5.0, *)
  var shortStandaloneMonthSymbols: [String] { get }
  @available(iOS 5.0, *)
  var veryShortStandaloneMonthSymbols: [String] { get }
  @available(iOS 5.0, *)
  var weekdaySymbols: [String] { get }
  @available(iOS 5.0, *)
  var shortWeekdaySymbols: [String] { get }
  @available(iOS 5.0, *)
  var veryShortWeekdaySymbols: [String] { get }
  @available(iOS 5.0, *)
  var standaloneWeekdaySymbols: [String] { get }
  @available(iOS 5.0, *)
  var shortStandaloneWeekdaySymbols: [String] { get }
  @available(iOS 5.0, *)
  var veryShortStandaloneWeekdaySymbols: [String] { get }
  @available(iOS 5.0, *)
  var quarterSymbols: [String] { get }
  @available(iOS 5.0, *)
  var shortQuarterSymbols: [String] { get }
  @available(iOS 5.0, *)
  var standaloneQuarterSymbols: [String] { get }
  @available(iOS 5.0, *)
  var shortStandaloneQuarterSymbols: [String] { get }
  @available(iOS 5.0, *)
  var AMSymbol: String { get }
  @available(iOS 5.0, *)
  var PMSymbol: String { get }
  func minimumRangeOfUnit(unit: NSCalendarUnit) -> NSRange
  func maximumRangeOfUnit(unit: NSCalendarUnit) -> NSRange
  func rangeOfUnit(smaller: NSCalendarUnit, inUnit larger: NSCalendarUnit, forDate date: NSDate) -> NSRange
  func ordinalityOfUnit(smaller: NSCalendarUnit, inUnit larger: NSCalendarUnit, forDate date: NSDate) -> Int
  @available(iOS 2.0, *)
  func rangeOfUnit(unit: NSCalendarUnit, startDate datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, forDate date: NSDate) -> Bool
  func dateFromComponents(comps: NSDateComponents) -> NSDate?
  func components(unitFlags: NSCalendarUnit, fromDate date: NSDate) -> NSDateComponents
  func dateByAddingComponents(comps: NSDateComponents, toDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
  func components(unitFlags: NSCalendarUnit, fromDate startingDate: NSDate, toDate resultDate: NSDate, options opts: NSCalendarOptions) -> NSDateComponents
  @available(iOS 8.0, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, year yearValuePointer: UnsafeMutablePointer<Int>, month monthValuePointer: UnsafeMutablePointer<Int>, day dayValuePointer: UnsafeMutablePointer<Int>, fromDate date: NSDate)
  @available(iOS 8.0, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, yearForWeekOfYear yearValuePointer: UnsafeMutablePointer<Int>, weekOfYear weekValuePointer: UnsafeMutablePointer<Int>, weekday weekdayValuePointer: UnsafeMutablePointer<Int>, fromDate date: NSDate)
  @available(iOS 8.0, *)
  func getHour(hourValuePointer: UnsafeMutablePointer<Int>, minute minuteValuePointer: UnsafeMutablePointer<Int>, second secondValuePointer: UnsafeMutablePointer<Int>, nanosecond nanosecondValuePointer: UnsafeMutablePointer<Int>, fromDate date: NSDate)
  @available(iOS 8.0, *)
  func component(unit: NSCalendarUnit, fromDate date: NSDate) -> Int
  @available(iOS 8.0, *)
  func dateWithEra(eraValue: Int, year yearValue: Int, month monthValue: Int, day dayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> NSDate?
  @available(iOS 8.0, *)
  func dateWithEra(eraValue: Int, yearForWeekOfYear yearValue: Int, weekOfYear weekValue: Int, weekday weekdayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> NSDate?
  @available(iOS 8.0, *)
  func startOfDayForDate(date: NSDate) -> NSDate
  @available(iOS 8.0, *)
  func componentsInTimeZone(timezone: NSTimeZone, fromDate date: NSDate) -> NSDateComponents
  @available(iOS 8.0, *)
  func compareDate(date1: NSDate, toDate date2: NSDate, toUnitGranularity unit: NSCalendarUnit) -> NSComparisonResult
  @available(iOS 8.0, *)
  func isDate(date1: NSDate, equalToDate date2: NSDate, toUnitGranularity unit: NSCalendarUnit) -> Bool
  @available(iOS 8.0, *)
  func isDate(date1: NSDate, inSameDayAsDate date2: NSDate) -> Bool
  @available(iOS 8.0, *)
  func isDateInToday(date: NSDate) -> Bool
  @available(iOS 8.0, *)
  func isDateInYesterday(date: NSDate) -> Bool
  @available(iOS 8.0, *)
  func isDateInTomorrow(date: NSDate) -> Bool
  @available(iOS 8.0, *)
  func isDateInWeekend(date: NSDate) -> Bool
  @available(iOS 8.0, *)
  func rangeOfWeekendStartDate(datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, containingDate date: NSDate) -> Bool
  @available(iOS 8.0, *)
  func nextWeekendStartDate(datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, options: NSCalendarOptions, afterDate date: NSDate) -> Bool
  @available(iOS 8.0, *)
  func components(unitFlags: NSCalendarUnit, fromDateComponents startingDateComp: NSDateComponents, toDateComponents resultDateComp: NSDateComponents, options: NSCalendarOptions) -> NSDateComponents
  @available(iOS 8.0, *)
  func dateByAddingUnit(unit: NSCalendarUnit, value: Int, toDate date: NSDate, options: NSCalendarOptions) -> NSDate?
  @available(iOS 8.0, *)
  func enumerateDatesStartingAfterDate(start: NSDate, matchingComponents comps: NSDateComponents, options opts: NSCalendarOptions, usingBlock block: (NSDate?, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  func nextDateAfterDate(date: NSDate, matchingComponents comps: NSDateComponents, options: NSCalendarOptions) -> NSDate?
  @available(iOS 8.0, *)
  func nextDateAfterDate(date: NSDate, matchingUnit unit: NSCalendarUnit, value: Int, options: NSCalendarOptions) -> NSDate?
  @available(iOS 8.0, *)
  func nextDateAfterDate(date: NSDate, matchingHour hourValue: Int, minute minuteValue: Int, second secondValue: Int, options: NSCalendarOptions) -> NSDate?
  @available(iOS 8.0, *)
  func dateBySettingUnit(unit: NSCalendarUnit, value v: Int, ofDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
  @available(iOS 8.0, *)
  func dateBySettingHour(h: Int, minute m: Int, second s: Int, ofDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
  @available(iOS 8.0, *)
  func date(date: NSDate, matchesComponents components: NSDateComponents) -> Bool
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
let NSCalendarDayChangedNotification: String
var NSDateComponentUndefined: Int { get }
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSDateComponentUndefined instead")
var NSUndefinedDateComponent: Int { get }
class NSDateComponents : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 4.0, *)
  @NSCopying var calendar: NSCalendar?
  @available(iOS 4.0, *)
  @NSCopying var timeZone: NSTimeZone?
  var era: Int
  var year: Int
  var month: Int
  var day: Int
  var hour: Int
  var minute: Int
  var second: Int
  @available(iOS 5.0, *)
  var nanosecond: Int
  var weekday: Int
  var weekdayOrdinal: Int
  @available(iOS 4.0, *)
  var quarter: Int
  @available(iOS 5.0, *)
  var weekOfMonth: Int
  @available(iOS 5.0, *)
  var weekOfYear: Int
  @available(iOS 5.0, *)
  var yearForWeekOfYear: Int
  @available(iOS 6.0, *)
  var leapMonth: Bool
  @available(iOS 4.0, *)
  @NSCopying var date: NSDate? { get }
  @available(iOS 8.0, *)
  func setValue(value: Int, forComponent unit: NSCalendarUnit)
  @available(iOS 8.0, *)
  func valueForComponent(unit: NSCalendarUnit) -> Int
  @available(iOS 8.0, *)
  var validDate: Bool { get }
  @available(iOS 8.0, *)
  func isValidDateInCalendar(calendar: NSCalendar) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
var NSOpenStepUnicodeReservedBase: Int { get }
class NSCharacterSet : NSObject, NSCopying, NSMutableCopying, NSCoding {
  class func controlCharacterSet() -> NSCharacterSet
  class func whitespaceCharacterSet() -> NSCharacterSet
  class func whitespaceAndNewlineCharacterSet() -> NSCharacterSet
  class func decimalDigitCharacterSet() -> NSCharacterSet
  class func letterCharacterSet() -> NSCharacterSet
  class func lowercaseLetterCharacterSet() -> NSCharacterSet
  class func uppercaseLetterCharacterSet() -> NSCharacterSet
  class func nonBaseCharacterSet() -> NSCharacterSet
  class func alphanumericCharacterSet() -> NSCharacterSet
  class func decomposableCharacterSet() -> NSCharacterSet
  class func illegalCharacterSet() -> NSCharacterSet
  class func punctuationCharacterSet() -> NSCharacterSet
  class func capitalizedLetterCharacterSet() -> NSCharacterSet
  class func symbolCharacterSet() -> NSCharacterSet
  @available(iOS 2.0, *)
  class func newlineCharacterSet() -> NSCharacterSet
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersInString aString: String)
  /*not inherited*/ init(bitmapRepresentation data: NSData)
  /*not inherited*/ init?(contentsOfFile fName: String)
  init(coder aDecoder: NSCoder)
  func characterIsMember(aCharacter: unichar) -> Bool
  @NSCopying var bitmapRepresentation: NSData { get }
  @NSCopying var invertedSet: NSCharacterSet { get }
  func longCharacterIsMember(theLongChar: UTF32Char) -> Bool
  func isSupersetOfSet(theOtherSet: NSCharacterSet) -> Bool
  func hasMemberInPlane(thePlane: UInt8) -> Bool
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
class NSMutableCharacterSet : NSCharacterSet, NSCopying, NSMutableCopying {
  func addCharactersInRange(aRange: NSRange)
  func removeCharactersInRange(aRange: NSRange)
  func addCharactersInString(aString: String)
  func removeCharactersInString(aString: String)
  func formUnionWithCharacterSet(otherSet: NSCharacterSet)
  func formIntersectionWithCharacterSet(otherSet: NSCharacterSet)
  func invert()
  class func controlCharacterSet() -> NSMutableCharacterSet
  class func whitespaceCharacterSet() -> NSMutableCharacterSet
  class func whitespaceAndNewlineCharacterSet() -> NSMutableCharacterSet
  class func decimalDigitCharacterSet() -> NSMutableCharacterSet
  class func letterCharacterSet() -> NSMutableCharacterSet
  class func lowercaseLetterCharacterSet() -> NSMutableCharacterSet
  class func uppercaseLetterCharacterSet() -> NSMutableCharacterSet
  class func nonBaseCharacterSet() -> NSMutableCharacterSet
  class func alphanumericCharacterSet() -> NSMutableCharacterSet
  class func decomposableCharacterSet() -> NSMutableCharacterSet
  class func illegalCharacterSet() -> NSMutableCharacterSet
  class func punctuationCharacterSet() -> NSMutableCharacterSet
  class func capitalizedLetterCharacterSet() -> NSMutableCharacterSet
  class func symbolCharacterSet() -> NSMutableCharacterSet
  @available(iOS 2.0, *)
  class func newlineCharacterSet() -> NSMutableCharacterSet
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersInString aString: String)
  /*not inherited*/ init(bitmapRepresentation data: NSData)
  /*not inherited*/ init?(contentsOfFile fName: String)
  init(coder aDecoder: NSCoder)
  convenience init()
}
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
  func encodeObject(object: AnyObject?)
  func encodeRootObject(rootObject: AnyObject)
  func encodeBycopyObject(anObject: AnyObject?)
  func encodeByrefObject(anObject: AnyObject?)
  func encodeConditionalObject(object: AnyObject?)
  func encodeArrayOfObjCType(type: UnsafePointer<Int8>, count: Int, at array: UnsafePointer<Void>)
  func encodeBytes(byteaddr: UnsafePointer<Void>, length: Int)
  func decodeObject() -> AnyObject?
  func decodeArrayOfObjCType(itemType: UnsafePointer<Int8>, count: Int, at array: UnsafeMutablePointer<Void>)
  func decodeBytesWithReturnedLength(lengthp: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Void>
  var systemVersion: UInt32 { get }
  var allowsKeyedCoding: Bool { get }
  func encodeObject(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encodeBool(boolv: Bool, forKey key: String)
  func encodeInt(intv: Int32, forKey key: String)
  func encodeInt32(intv: Int32, forKey key: String)
  func encodeInt64(intv: Int64, forKey key: String)
  func encodeFloat(realv: Float, forKey key: String)
  func encodeDouble(realv: Double, forKey key: String)
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
  @available(iOS 2.0, *)
  func encodeInteger(intv: Int, forKey key: String)
  @available(iOS 2.0, *)
  func decodeIntegerForKey(key: String) -> Int
  @available(iOS 6.0, *)
  var requiresSecureCoding: Bool { get }
  @available(iOS 6.0, *)
  func __decodeObjectOfClasses(classes: Set<NSObject>?, forKey key: String) -> AnyObject?
  @available(iOS 6.0, *)
  func decodePropertyListForKey(key: String) -> AnyObject?
  @available(iOS 6.0, *)
  var allowedClasses: Set<NSObject>? { get }
  @available(iOS 9.0, *)
  func failWithError(error: NSError)
}
struct NSComparisonPredicateOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitivePredicateOption: NSComparisonPredicateOptions { get }
  static var DiacriticInsensitivePredicateOption: NSComparisonPredicateOptions { get }
  @available(iOS 4.0, *)
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
  @available(iOS 3.0, *)
  case ContainsPredicateOperatorType
  @available(iOS 3.0, *)
  case BetweenPredicateOperatorType
}
@available(iOS 3.0, *)
class NSComparisonPredicate : NSPredicate {
  init(leftExpression lhs: NSExpression, rightExpression rhs: NSExpression, modifier: NSComparisonPredicateModifier, type: NSPredicateOperatorType, options: NSComparisonPredicateOptions)
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
@available(iOS 3.0, *)
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
  @available(iOS 5.0, *)
  static var DataReadingMappedAlways: NSDataReadingOptions { get }
  static var DataReadingMapped: NSDataReadingOptions { get }
  static var MappedRead: NSDataReadingOptions { get }
  static var UncachedRead: NSDataReadingOptions { get }
}
struct NSDataWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataWritingAtomic: NSDataWritingOptions { get }
  @available(iOS 6.0, *)
  static var DataWritingWithoutOverwriting: NSDataWritingOptions { get }
  @available(iOS 4.0, *)
  static var DataWritingFileProtectionNone: NSDataWritingOptions { get }
  @available(iOS 4.0, *)
  static var DataWritingFileProtectionComplete: NSDataWritingOptions { get }
  @available(iOS 5.0, *)
  static var DataWritingFileProtectionCompleteUnlessOpen: NSDataWritingOptions { get }
  @available(iOS 5.0, *)
  static var DataWritingFileProtectionCompleteUntilFirstUserAuthentication: NSDataWritingOptions { get }
  @available(iOS 4.0, *)
  static var DataWritingFileProtectionMask: NSDataWritingOptions { get }
  static var AtomicWrite: NSDataWritingOptions { get }
}

/****************	Data Search Options	****************/
@available(iOS 4.0, *)
struct NSDataSearchOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Backwards: NSDataSearchOptions { get }
  static var Anchored: NSDataSearchOptions { get }
}

/****************        Base 64 Options	****************/
@available(iOS 7.0, *)
struct NSDataBase64EncodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Encoding64CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var Encoding76CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithCarriageReturn: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithLineFeed: NSDataBase64EncodingOptions { get }
}
@available(iOS 7.0, *)
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
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSData {
  var description: String { get }
  func getBytes(buffer: UnsafeMutablePointer<Void>, length: Int)
  func getBytes(buffer: UnsafeMutablePointer<Void>, range: NSRange)
  func isEqualToData(other: NSData) -> Bool
  func subdataWithRange(range: NSRange) -> NSData
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(url: NSURL, atomically: Bool) -> Bool
  func writeToFile(path: String, options writeOptionsMask: NSDataWritingOptions) throws
  func writeToURL(url: NSURL, options writeOptionsMask: NSDataWritingOptions) throws
  @available(iOS 4.0, *)
  func rangeOfData(dataToFind: NSData, options mask: NSDataSearchOptions, range searchRange: NSRange) -> NSRange
  @available(iOS 7.0, *)
  func enumerateByteRangesUsingBlock(block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSData {
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(iOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data: NSData)
}
extension NSData {
  @available(iOS 7.0, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  @available(iOS 7.0, *)
  func base64EncodedStringWithOptions(options: NSDataBase64EncodingOptions) -> String
  @available(iOS 7.0, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  @available(iOS 7.0, *)
  func base64EncodedDataWithOptions(options: NSDataBase64EncodingOptions) -> NSData
}
extension NSData {
  @available(iOS, introduced=2.0, deprecated=8.0, message="This method is unsafe because it could potentially cause buffer overruns. Use -getBytes:length: instead.")
  func getBytes(buffer: UnsafeMutablePointer<Void>)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use +dataWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  class func dataWithContentsOfMappedFile(path: String) -> AnyObject?
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
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
  @available(iOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data: NSData)
  @available(iOS 7.0, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  @available(iOS 7.0, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
extension NSMutableData {
  func appendBytes(bytes: UnsafePointer<Void>, length: Int)
  func appendData(other: NSData)
  func increaseLengthBy(extraLength: Int)
  func replaceBytesInRange(range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytesInRange(range: NSRange)
  func setData(data: NSData)
  func replaceBytesInRange(range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension NSMutableData {
  init?(capacity: Int)
  init?(length: Int)
}

/****************	    Purgeable Data	****************/
@available(iOS 4.0, *)
class NSPurgeableData : NSMutableData, NSDiscardableContent {
  init()
  init?(coder aDecoder: NSCoder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(iOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data: NSData)
  @available(iOS 7.0, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  @available(iOS 7.0, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  init?(capacity: Int)
  init?(length: Int)
  @available(iOS 4.0, *)
  func beginContentAccess() -> Bool
  @available(iOS 4.0, *)
  func endContentAccess()
  @available(iOS 4.0, *)
  func discardContentIfPossible()
  @available(iOS 4.0, *)
  func isContentDiscarded() -> Bool
}
@available(iOS 4.0, *)
let NSSystemClockDidChangeNotification: String
typealias NSTimeInterval = Double
var NSTimeIntervalSince1970: Double { get }
class NSDate : NSObject, NSCopying, NSSecureCoding {
  var timeIntervalSinceReferenceDate: NSTimeInterval { get }
  init()
  init(timeIntervalSinceReferenceDate ti: NSTimeInterval)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}

extension NSDate : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension NSDate {
  func timeIntervalSinceDate(anotherDate: NSDate) -> NSTimeInterval
  var timeIntervalSinceNow: NSTimeInterval { get }
  var timeIntervalSince1970: NSTimeInterval { get }
  @available(iOS 2.0, *)
  func dateByAddingTimeInterval(ti: NSTimeInterval) -> Self
  func earlierDate(anotherDate: NSDate) -> NSDate
  func laterDate(anotherDate: NSDate) -> NSDate
  func compare(other: NSDate) -> NSComparisonResult
  func isEqualToDate(otherDate: NSDate) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  class func timeIntervalSinceReferenceDate() -> NSTimeInterval
}
extension NSDate {
  class func distantFuture() -> NSDate
  class func distantPast() -> NSDate
  convenience init(timeIntervalSinceNow secs: NSTimeInterval)
  convenience init(timeIntervalSince1970 secs: NSTimeInterval)
  convenience init(timeInterval secsToBeAdded: NSTimeInterval, sinceDate date: NSDate)
}
@available(iOS 8.0, *)
enum NSDateComponentsFormatterUnitsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Positional
  case Abbreviated
  case Short
  case Full
  case SpellOut
}
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
class NSDateComponentsFormatter : NSFormatter {
  func stringForObjectValue(obj: AnyObject) -> String?
  func stringFromDateComponents(components: NSDateComponents) -> String?
  func stringFromDate(startDate: NSDate, toDate endDate: NSDate) -> String?
  func stringFromTimeInterval(ti: NSTimeInterval) -> String?
  class func localizedStringFromDateComponents(components: NSDateComponents, unitsStyle: NSDateComponentsFormatterUnitsStyle) -> String?
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
  @available(iOS 8.0, *)
  var formattingContext: NSFormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFromDate(date: NSDate) -> String
  func dateFromString(string: String) -> NSDate?
  @available(iOS 4.0, *)
  class func localizedStringFromDate(date: NSDate, dateStyle dstyle: NSDateFormatterStyle, timeStyle tstyle: NSDateFormatterStyle) -> String
  @available(iOS 4.0, *)
  class func dateFormatFromTemplate(tmplate: String, options opts: Int, locale: NSLocale?) -> String?
  class func defaultFormatterBehavior() -> NSDateFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: NSDateFormatterBehavior)
  @available(iOS 8.0, *)
  func setLocalizedDateFormatFromTemplate(dateFormatTemplate: String)
  var dateFormat: String!
  var dateStyle: NSDateFormatterStyle
  var timeStyle: NSDateFormatterStyle
  @NSCopying var locale: NSLocale!
  var generatesCalendarDates: Bool
  var formatterBehavior: NSDateFormatterBehavior
  @NSCopying var timeZone: NSTimeZone!
  @NSCopying var calendar: NSCalendar!
  var lenient: Bool
  @NSCopying var twoDigitStartDate: NSDate?
  @NSCopying var defaultDate: NSDate?
  var eraSymbols: [String]!
  var monthSymbols: [String]!
  var shortMonthSymbols: [String]!
  var weekdaySymbols: [String]!
  var shortWeekdaySymbols: [String]!
  var AMSymbol: String!
  var PMSymbol: String!
  @available(iOS 2.0, *)
  var longEraSymbols: [String]!
  @available(iOS 2.0, *)
  var veryShortMonthSymbols: [String]!
  @available(iOS 2.0, *)
  var standaloneMonthSymbols: [String]!
  @available(iOS 2.0, *)
  var shortStandaloneMonthSymbols: [String]!
  @available(iOS 2.0, *)
  var veryShortStandaloneMonthSymbols: [String]!
  @available(iOS 2.0, *)
  var veryShortWeekdaySymbols: [String]!
  @available(iOS 2.0, *)
  var standaloneWeekdaySymbols: [String]!
  @available(iOS 2.0, *)
  var shortStandaloneWeekdaySymbols: [String]!
  @available(iOS 2.0, *)
  var veryShortStandaloneWeekdaySymbols: [String]!
  @available(iOS 2.0, *)
  var quarterSymbols: [String]!
  @available(iOS 2.0, *)
  var shortQuarterSymbols: [String]!
  @available(iOS 2.0, *)
  var standaloneQuarterSymbols: [String]!
  @available(iOS 2.0, *)
  var shortStandaloneQuarterSymbols: [String]!
  @available(iOS 2.0, *)
  @NSCopying var gregorianStartDate: NSDate?
  @available(iOS 4.0, *)
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
  case Behavior10_4
}
@available(iOS 8.0, *)
enum NSDateIntervalFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
@available(iOS 8.0, *)
class NSDateIntervalFormatter : NSFormatter {
  @NSCopying var locale: NSLocale!
  @NSCopying var calendar: NSCalendar!
  @NSCopying var timeZone: NSTimeZone!
  var dateTemplate: String!
  var dateStyle: NSDateIntervalFormatterStyle
  var timeStyle: NSDateIntervalFormatterStyle
  func stringFromDate(fromDate: NSDate, toDate: NSDate) -> String
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
  class func minimumDecimalNumber() -> NSDecimalNumber
  class func maximumDecimalNumber() -> NSDecimalNumber
  class func notANumber() -> NSDecimalNumber
  func decimalNumberByAdding(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberByAdding(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberBySubtracting(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberBySubtracting(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByMultiplyingBy(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberByMultiplyingBy(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByDividingBy(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberByDividingBy(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByRaisingToPower(power: Int) -> NSDecimalNumber
  func decimalNumberByRaisingToPower(power: Int, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByMultiplyingByPowerOf10(power: Int16) -> NSDecimalNumber
  func decimalNumberByMultiplyingByPowerOf10(power: Int16, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByRoundingAccordingToBehavior(behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
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
  @available(iOS 2.0, *)
  convenience init(integer value: Int)
  @available(iOS 2.0, *)
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
  func encodeWithCoder(aCoder: NSCoder)
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
  func objectForKey(aKey: AnyObject) -> AnyObject?
  func keyEnumerator() -> NSEnumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<NSCopying?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func allKeysForObject(anObject: AnyObject) -> [AnyObject]
  var allValues: [AnyObject] { get }
  var description: String { get }
  var descriptionInStringsFileFormat: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
  func isEqualToDictionary(otherDictionary: [NSObject : AnyObject]) -> Bool
  func objectEnumerator() -> NSEnumerator
  func objectsForKeys(keys: [AnyObject], notFoundMarker marker: AnyObject) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(url: NSURL, atomically: Bool) -> Bool
  func keysSortedByValueUsingSelector(comparator: Selector) -> [AnyObject]
  @available(iOS 5.0, *)
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>, count: Int)
  @available(iOS 6.0, *)
  subscript (key: NSCopying) -> AnyObject? { get }
  @available(iOS 4.0, *)
  func enumerateKeysAndObjectsUsingBlock(block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateKeysAndObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func keysSortedByValueUsingComparator(cmptr: NSComparator) -> [AnyObject]
  @available(iOS 4.0, *)
  func keysSortedByValueWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator) -> [AnyObject]
  @available(iOS 4.0, *)
  func keysOfEntriesPassingTest(predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  @available(iOS 4.0, *)
  func keysOfEntriesWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
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
  convenience init?(contentsOfURL url: NSURL)
}

/****************	Mutable Dictionary	****************/
class NSMutableDictionary : NSDictionary {
  func removeObjectForKey(aKey: AnyObject)
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
  func addEntriesFromDictionary(otherDictionary: [NSObject : AnyObject])
  func removeAllObjects()
  func removeObjectsForKeys(keyArray: [AnyObject])
  func setDictionary(otherDictionary: [NSObject : AnyObject])
  @available(iOS 6.0, *)
  subscript (key: NSCopying) -> AnyObject?
}
extension NSMutableDictionary {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOfURL url: NSURL)
}
extension NSDictionary {
  @available(iOS 6.0, *)
  class func sharedKeySetForKeys(keys: [NSCopying]) -> AnyObject
}
extension NSMutableDictionary {
  @available(iOS 6.0, *)
  /*not inherited*/ init(sharedKeySet keyset: AnyObject)
}
@available(iOS 8.0, *)
enum NSEnergyFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Joule
  case Kilojoule
  case Calorie
  case Kilocalorie
}
@available(iOS 8.0, *)
class NSEnergyFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var forFoodEnergyUse: Bool
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
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class NSEnumerator : NSObject, NSFastEnumeration {
  func nextObject() -> AnyObject?
  init()
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  init(domain: String, code: Int, userInfo dict: [NSObject : AnyObject]?)
  var domain: String { get }
  var code: Int { get }
  var userInfo: [NSObject : AnyObject] { get }
  var localizedDescription: String { get }
  var localizedFailureReason: String? { get }
  var localizedRecoverySuggestion: String? { get }
  var localizedRecoveryOptions: [String]? { get }
  var recoveryAttempter: AnyObject? { get }
  var helpAnchor: String? { get }
  @available(iOS 9.0, *)
  class func setUserInfoValueProviderForDomain(errorDomain: String, provider: ((NSError, String) -> AnyObject?)?)
  @available(iOS 9.0, *)
  class func userInfoValueProviderForDomain(errorDomain: String) -> ((NSError, String) -> AnyObject?)?
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
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
  init(name aName: String, reason aReason: String?, userInfo aUserInfo: [NSObject : AnyObject]?)
  var name: String { get }
  var reason: String? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  @available(iOS 2.0, *)
  var callStackReturnAddresses: [NSNumber] { get }
  @available(iOS 4.0, *)
  var callStackSymbols: [String] { get }
  func raise()
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSException {
  class func raise(name: String, format: String, arguments argList: CVaListPointer)
}
typealias NSUncaughtExceptionHandler = (NSException) -> Void
func NSGetUncaughtExceptionHandler() -> (@convention(c) (NSException) -> Void)?
func NSSetUncaughtExceptionHandler(_: (@convention(c) (NSException) -> Void)?)
@available(iOS 4.0, *)
let NSAssertionHandlerKey: String
class NSAssertionHandler : NSObject {
  class func currentHandler() -> NSAssertionHandler
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
  @available(iOS 3.0, *)
  case UnionSetExpressionType
  @available(iOS 3.0, *)
  case IntersectSetExpressionType
  @available(iOS 3.0, *)
  case MinusSetExpressionType
  @available(iOS 3.0, *)
  case SubqueryExpressionType
  @available(iOS 3.0, *)
  case AggregateExpressionType
  @available(iOS 7.0, *)
  case AnyKeyExpressionType
  case BlockExpressionType
  @available(iOS 9.0, *)
  case ConditionalExpressionType
}
@available(iOS 3.0, *)
class NSExpression : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 4.0, *)
  /*not inherited*/ init(format expressionFormat: String, argumentArray arguments: [AnyObject])
  @available(iOS 4.0, *)
  /*not inherited*/ init(format expressionFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(forConstantValue obj: AnyObject?)
  class func expressionForEvaluatedObject() -> NSExpression
  /*not inherited*/ init(forVariable string: String)
  /*not inherited*/ init(forKeyPath keyPath: String)
  /*not inherited*/ init(forFunction name: String, arguments parameters: [AnyObject])
  @available(iOS 3.0, *)
  /*not inherited*/ init(forAggregate subexpressions: [AnyObject])
  @available(iOS 3.0, *)
  /*not inherited*/ init(forUnionSet left: NSExpression, with right: NSExpression)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forIntersectSet left: NSExpression, with right: NSExpression)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forMinusSet left: NSExpression, with right: NSExpression)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forSubquery expression: NSExpression, usingIteratorVariable variable: String, predicate: AnyObject)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forFunction target: NSExpression, selectorName name: String, arguments parameters: [AnyObject]?)
  @available(iOS 7.0, *)
  class func expressionForAnyKey() -> NSExpression
  @available(iOS 4.0, *)
  /*not inherited*/ init(forBlock block: (AnyObject?, [AnyObject], NSMutableDictionary?) -> AnyObject, arguments: [NSExpression]?)
  @available(iOS 9.0, *)
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
  @available(iOS 3.0, *)
  var collection: AnyObject { get }
  @available(iOS 3.0, *)
  @NSCopying var predicate: NSPredicate { get }
  @available(iOS 3.0, *)
  @NSCopying var leftExpression: NSExpression { get }
  @available(iOS 3.0, *)
  @NSCopying var rightExpression: NSExpression { get }
  @available(iOS 9.0, *)
  @NSCopying var trueExpression: NSExpression { get }
  @available(iOS 9.0, *)
  @NSCopying var falseExpression: NSExpression { get }
  @available(iOS 4.0, *)
  var expressionBlock: (AnyObject?, [AnyObject], NSMutableDictionary?) -> AnyObject { get }
  func expressionValueWithObject(object: AnyObject?, context: NSMutableDictionary?) -> AnyObject
  @available(iOS 7.0, *)
  func allowEvaluation()
  convenience init()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(iOS 3.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
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
@available(iOS 8.0, *)
class NSExtensionContext : NSObject {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)?)
  func cancelRequestWithError(error: NSError)
  func openURL(URL: NSURL, completionHandler: ((Bool) -> Void)?)
  init()
}
@available(iOS 8.0, *)
let NSExtensionItemsAndErrorsKey: String
@available(iOS 8.2, *)
let NSExtensionHostWillEnterForegroundNotification: String
@available(iOS 8.2, *)
let NSExtensionHostDidEnterBackgroundNotification: String
@available(iOS 8.2, *)
let NSExtensionHostWillResignActiveNotification: String
@available(iOS 8.2, *)
let NSExtensionHostDidBecomeActiveNotification: String
@available(iOS 8.0, *)
class NSExtensionItem : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var attributedTitle: NSAttributedString?
  @NSCopying var attributedContentText: NSAttributedString?
  var attachments: [AnyObject]?
  var userInfo: [NSObject : AnyObject]?
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
let NSExtensionItemAttributedTitleKey: String
@available(iOS 8.0, *)
let NSExtensionItemAttributedContentTextKey: String
@available(iOS 8.0, *)
let NSExtensionItemAttachmentsKey: String
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(iOS 8.0, *)
  func beginRequestWithExtensionContext(context: NSExtensionContext)
}
struct NSFileCoordinatorReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutChanges: NSFileCoordinatorReadingOptions { get }
  static var ResolvesSymbolicLink: NSFileCoordinatorReadingOptions { get }
  @available(iOS 8.0, *)
  static var ImmediatelyAvailableMetadataOnly: NSFileCoordinatorReadingOptions { get }
  @available(iOS 8.0, *)
  static var ForUploading: NSFileCoordinatorReadingOptions { get }
}
struct NSFileCoordinatorWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ForDeleting: NSFileCoordinatorWritingOptions { get }
  static var ForMoving: NSFileCoordinatorWritingOptions { get }
  static var ForMerging: NSFileCoordinatorWritingOptions { get }
  static var ForReplacing: NSFileCoordinatorWritingOptions { get }
  @available(iOS 8.0, *)
  static var ContentIndependentMetadataOnly: NSFileCoordinatorWritingOptions { get }
}
@available(iOS 8.0, *)
class NSFileAccessIntent : NSObject {
  class func readingIntentWithURL(url: NSURL, options: NSFileCoordinatorReadingOptions) -> Self
  class func writingIntentWithURL(url: NSURL, options: NSFileCoordinatorWritingOptions) -> Self
  @NSCopying var URL: NSURL { get }
  init()
}
@available(iOS 5.0, *)
class NSFileCoordinator : NSObject {
  class func addFilePresenter(filePresenter: NSFilePresenter)
  class func removeFilePresenter(filePresenter: NSFilePresenter)
  class func filePresenters() -> [NSFilePresenter]
  init(filePresenter filePresenterOrNil: NSFilePresenter?)
  @available(iOS 5.0, *)
  var purposeIdentifier: String
  @available(iOS 8.0, *)
  func coordinateAccessWithIntents(intents: [NSFileAccessIntent], queue: NSOperationQueue, byAccessor accessor: (NSError?) -> Void)
  func coordinateReadingItemAtURL(url: NSURL, options: NSFileCoordinatorReadingOptions, error outError: NSErrorPointer, byAccessor reader: (NSURL) -> Void)
  func coordinateWritingItemAtURL(url: NSURL, options: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor writer: (NSURL) -> Void)
  func coordinateReadingItemAtURL(readingURL: NSURL, options readingOptions: NSFileCoordinatorReadingOptions, writingItemAtURL writingURL: NSURL, options writingOptions: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor readerWriter: (NSURL, NSURL) -> Void)
  func coordinateWritingItemAtURL(url1: NSURL, options options1: NSFileCoordinatorWritingOptions, writingItemAtURL url2: NSURL, options options2: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor writer: (NSURL, NSURL) -> Void)
  func prepareForReadingItemsAtURLs(readingURLs: [NSURL], options readingOptions: NSFileCoordinatorReadingOptions, writingItemsAtURLs writingURLs: [NSURL], options writingOptions: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor batchAccessor: (() -> Void) -> Void)
  @available(iOS 6.0, *)
  func itemAtURL(oldURL: NSURL, willMoveToURL newURL: NSURL)
  func itemAtURL(oldURL: NSURL, didMoveToURL newURL: NSURL)
  func cancel()
  convenience init()
}
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
  @available(iOS 4.0, *)
  convenience init(forReadingFromURL url: NSURL) throws
  @available(iOS 4.0, *)
  convenience init(forWritingToURL url: NSURL) throws
  @available(iOS 4.0, *)
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
  init()
}
var NSFoundationVersionWithFileManagerResourceForkSupport: Int32 { get }
@available(iOS 4.0, *)
struct NSVolumeEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipHiddenVolumes: NSVolumeEnumerationOptions { get }
  static var ProduceFileReferenceURLs: NSVolumeEnumerationOptions { get }
}
@available(iOS 4.0, *)
struct NSDirectoryEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipsSubdirectoryDescendants: NSDirectoryEnumerationOptions { get }
  static var SkipsPackageDescendants: NSDirectoryEnumerationOptions { get }
  static var SkipsHiddenFiles: NSDirectoryEnumerationOptions { get }
}
@available(iOS 4.0, *)
struct NSFileManagerItemReplacementOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UsingNewMetadataOnly: NSFileManagerItemReplacementOptions { get }
  static var WithoutDeletingBackupItem: NSFileManagerItemReplacementOptions { get }
}
@available(iOS 8.0, *)
enum NSURLRelationship : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contains
  case Same
  case Other
}
@available(iOS 6.0, *)
let NSUbiquityIdentityDidChangeNotification: String
class NSFileManager : NSObject {
  class func defaultManager() -> NSFileManager
  @available(iOS 4.0, *)
  func mountedVolumeURLsIncludingResourceValuesForKeys(propertyKeys: [String]?, options: NSVolumeEnumerationOptions) -> [NSURL]?
  @available(iOS 4.0, *)
  func contentsOfDirectoryAtURL(url: NSURL, includingPropertiesForKeys keys: [String]?, options mask: NSDirectoryEnumerationOptions) throws -> [NSURL]
  @available(iOS 4.0, *)
  func URLsForDirectory(directory: NSSearchPathDirectory, inDomains domainMask: NSSearchPathDomainMask) -> [NSURL]
  @available(iOS 4.0, *)
  func URLForDirectory(directory: NSSearchPathDirectory, inDomain domain: NSSearchPathDomainMask, appropriateForURL url: NSURL?, create shouldCreate: Bool) throws -> NSURL
  @available(iOS 8.0, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<NSURLRelationship>, ofDirectoryAtURL directoryURL: NSURL, toItemAtURL otherURL: NSURL) throws
  @available(iOS 8.0, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<NSURLRelationship>, ofDirectory directory: NSSearchPathDirectory, inDomain domainMask: NSSearchPathDomainMask, toItemAtURL url: NSURL) throws
  @available(iOS 5.0, *)
  func createDirectoryAtURL(url: NSURL, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]?) throws
  @available(iOS 5.0, *)
  func createSymbolicLinkAtURL(url: NSURL, withDestinationURL destURL: NSURL) throws
  @available(iOS 2.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged NSFileManagerDelegate?
  @available(iOS 2.0, *)
  func setAttributes(attributes: [String : AnyObject], ofItemAtPath path: String) throws
  @available(iOS 2.0, *)
  func createDirectoryAtPath(path: String, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]?) throws
  @available(iOS 2.0, *)
  func contentsOfDirectoryAtPath(path: String) throws -> [String]
  @available(iOS 2.0, *)
  func subpathsOfDirectoryAtPath(path: String) throws -> [String]
  @available(iOS 2.0, *)
  func attributesOfItemAtPath(path: String) throws -> [String : AnyObject]
  @available(iOS 2.0, *)
  func attributesOfFileSystemForPath(path: String) throws -> [String : AnyObject]
  @available(iOS 2.0, *)
  func createSymbolicLinkAtPath(path: String, withDestinationPath destPath: String) throws
  @available(iOS 2.0, *)
  func destinationOfSymbolicLinkAtPath(path: String) throws -> String
  @available(iOS 2.0, *)
  func copyItemAtPath(srcPath: String, toPath dstPath: String) throws
  @available(iOS 2.0, *)
  func moveItemAtPath(srcPath: String, toPath dstPath: String) throws
  @available(iOS 2.0, *)
  func linkItemAtPath(srcPath: String, toPath dstPath: String) throws
  @available(iOS 2.0, *)
  func removeItemAtPath(path: String) throws
  @available(iOS 4.0, *)
  func copyItemAtURL(srcURL: NSURL, toURL dstURL: NSURL) throws
  @available(iOS 4.0, *)
  func moveItemAtURL(srcURL: NSURL, toURL dstURL: NSURL) throws
  @available(iOS 4.0, *)
  func linkItemAtURL(srcURL: NSURL, toURL dstURL: NSURL) throws
  @available(iOS 4.0, *)
  func removeItemAtURL(URL: NSURL) throws
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
  @available(iOS 4.0, *)
  func enumeratorAtURL(url: NSURL, includingPropertiesForKeys keys: [String]?, options mask: NSDirectoryEnumerationOptions, errorHandler handler: ((NSURL, NSError) -> Bool)?) -> NSDirectoryEnumerator?
  func subpathsAtPath(path: String) -> [String]?
  func contentsAtPath(path: String) -> NSData?
  func createFileAtPath(path: String, contents data: NSData?, attributes attr: [String : AnyObject]?) -> Bool
  func fileSystemRepresentationWithPath(path: String) -> UnsafePointer<Int8>
  func stringWithFileSystemRepresentation(str: UnsafePointer<Int8>, length len: Int) -> String
  @available(iOS 4.0, *)
  func replaceItemAtURL(originalItemURL: NSURL, withItemAtURL newItemURL: NSURL, backupItemName: String?, options: NSFileManagerItemReplacementOptions, resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<NSURL?>) throws
  @available(iOS 5.0, *)
  func setUbiquitous(flag: Bool, itemAtURL url: NSURL, destinationURL: NSURL) throws
  @available(iOS 5.0, *)
  func isUbiquitousItemAtURL(url: NSURL) -> Bool
  @available(iOS 5.0, *)
  func startDownloadingUbiquitousItemAtURL(url: NSURL) throws
  @available(iOS 5.0, *)
  func evictUbiquitousItemAtURL(url: NSURL) throws
  @available(iOS 5.0, *)
  func URLForUbiquityContainerIdentifier(containerIdentifier: String?) -> NSURL?
  @available(iOS 5.0, *)
  func URLForPublishingUbiquitousItemAtURL(url: NSURL, expirationDate outDate: AutoreleasingUnsafeMutablePointer<NSDate?>) throws -> NSURL
  @available(iOS 6.0, *)
  @NSCopying var ubiquityIdentityToken: protocol<NSCoding, NSCopying, NSObjectProtocol>? { get }
  @available(iOS 7.0, *)
  func containerURLForSecurityApplicationGroupIdentifier(groupIdentifier: String) -> NSURL?
  init()
}
extension NSObject {
}
protocol NSFileManagerDelegate : NSObjectProtocol {
  optional func fileManager(fileManager: NSFileManager, shouldCopyItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: NSFileManager, shouldCopyItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, copyingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, copyingItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldMoveItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: NSFileManager, shouldMoveItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, movingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, movingItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldLinkItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: NSFileManager, shouldLinkItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, linkingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, linkingItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldRemoveItemAtPath path: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: NSFileManager, shouldRemoveItemAtURL URL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, removingItemAtPath path: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, removingItemAtURL URL: NSURL) -> Bool
}
class NSDirectoryEnumerator : NSEnumerator {
  var fileAttributes: [String : AnyObject]? { get }
  var directoryAttributes: [String : AnyObject]? { get }
  func skipDescendents()
  @available(iOS 4.0, *)
  var level: Int { get }
  @available(iOS 4.0, *)
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
@available(iOS 4.0, *)
let NSFileProtectionKey: String
@available(iOS 4.0, *)
let NSFileProtectionNone: String
@available(iOS 4.0, *)
let NSFileProtectionComplete: String
@available(iOS 5.0, *)
let NSFileProtectionCompleteUnlessOpen: String
@available(iOS 5.0, *)
let NSFileProtectionCompleteUntilFirstUserAuthentication: String
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
  @available(iOS 2.0, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  optional func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChangesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  optional func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (NSError?) -> Void)
  optional func presentedItemDidMoveToURL(newURL: NSURL)
  optional func presentedItemDidChange()
  @available(iOS 5.0, *)
  optional func presentedItemDidGainVersion(version: NSFileVersion)
  @available(iOS 5.0, *)
  optional func presentedItemDidLoseVersion(version: NSFileVersion)
  @available(iOS 5.0, *)
  optional func presentedItemDidResolveConflictVersion(version: NSFileVersion)
  optional func accommodatePresentedSubitemDeletionAtURL(url: NSURL, completionHandler: (NSError?) -> Void)
  optional func presentedSubitemDidAppearAtURL(url: NSURL)
  optional func presentedSubitemAtURL(oldURL: NSURL, didMoveToURL newURL: NSURL)
  optional func presentedSubitemDidChangeAtURL(url: NSURL)
  @available(iOS 5.0, *)
  optional func presentedSubitemAtURL(url: NSURL, didGainVersion version: NSFileVersion)
  @available(iOS 5.0, *)
  optional func presentedSubitemAtURL(url: NSURL, didLoseVersion version: NSFileVersion)
  @available(iOS 5.0, *)
  optional func presentedSubitemAtURL(url: NSURL, didResolveConflictVersion version: NSFileVersion)
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
@available(iOS 5.0, *)
class NSFileVersion : NSObject {
  class func currentVersionOfItemAtURL(url: NSURL) -> NSFileVersion?
  class func otherVersionsOfItemAtURL(url: NSURL) -> [NSFileVersion]?
  class func unresolvedConflictVersionsOfItemAtURL(url: NSURL) -> [NSFileVersion]?
  @available(iOS 8.0, *)
  class func getNonlocalVersionsOfItemAtURL(url: NSURL, completionHandler: ([NSFileVersion]?, NSError?) -> Void)
  /*not inherited*/ init?(ofItemAtURL url: NSURL, forPersistentIdentifier persistentIdentifier: AnyObject)
  @NSCopying var URL: NSURL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @NSCopying var modificationDate: NSDate? { get }
  var persistentIdentifier: NSCoding { get }
  var conflict: Bool { get }
  var resolved: Bool
  @available(iOS 8.0, *)
  var hasLocalContents: Bool { get }
  @available(iOS 8.0, *)
  var hasThumbnail: Bool { get }
  func replaceItemAtURL(url: NSURL, options: NSFileVersionReplacingOptions) throws -> NSURL
  func remove() throws
  class func removeOtherVersionsOfItemAtURL(url: NSURL) throws
  init()
}
@available(iOS 4.0, *)
struct NSFileWrapperReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immediate: NSFileWrapperReadingOptions { get }
  static var WithoutMapping: NSFileWrapperReadingOptions { get }
}
@available(iOS 4.0, *)
struct NSFileWrapperWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Atomic: NSFileWrapperWritingOptions { get }
  static var WithNameUpdating: NSFileWrapperWritingOptions { get }
}
@available(iOS 4.0, *)
class NSFileWrapper : NSObject, NSCoding {
  @available(iOS 4.0, *)
  init(URL url: NSURL, options: NSFileWrapperReadingOptions) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : NSFileWrapper])
  init(regularFileWithContents contents: NSData)
  @available(iOS 4.0, *)
  init(symbolicLinkWithDestinationURL url: NSURL)
  init?(serializedRepresentation serializeRepresentation: NSData)
  init?(coder inCoder: NSCoder)
  var directory: Bool { get }
  var regularFile: Bool { get }
  var symbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  @available(iOS 4.0, *)
  func matchesContentsOfURL(url: NSURL) -> Bool
  @available(iOS 4.0, *)
  func readFromURL(url: NSURL, options: NSFileWrapperReadingOptions) throws
  @available(iOS 4.0, *)
  func writeToURL(url: NSURL, options: NSFileWrapperWritingOptions, originalContentsURL: NSURL?) throws
  @NSCopying var serializedRepresentation: NSData? { get }
  func addFileWrapper(child: NSFileWrapper) -> String
  func addRegularFileWithContents(data: NSData, preferredFilename fileName: String) -> String
  func removeFileWrapper(child: NSFileWrapper)
  var fileWrappers: [String : NSFileWrapper]? { get }
  func keyForFileWrapper(child: NSFileWrapper) -> String?
  @NSCopying var regularFileContents: NSData? { get }
  @available(iOS 4.0, *)
  @NSCopying var symbolicLinkDestinationURL: NSURL? { get }
  convenience init()
  @available(iOS 4.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
enum NSFormattingUnitStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Short
  case Medium
  case Long
}
class NSFormatter : NSObject, NSCopying, NSCoding {
  func stringForObjectValue(obj: AnyObject) -> String?
  func attributedStringForObjectValue(obj: AnyObject, withDefaultAttributes attrs: [String : AnyObject]?) -> NSAttributedString?
  func editingStringForObjectValue(obj: AnyObject) -> String?
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialString: String, newEditingString newString: AutoreleasingUnsafeMutablePointer<NSString?>, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString?>, proposedSelectedRange proposedSelRangePtr: NSRangePointer, originalString origString: String, originalSelectedRange origSelRange: NSRange, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

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
  class func requestHeaderFieldsWithCookies(cookies: [NSHTTPCookie]) -> [String : String]

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
  var sessionOnly: Bool { get }

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
  var secure: Bool { get }

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
  var HTTPOnly: Bool { get }

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
  */
  class func sharedHTTPCookieStorage() -> NSHTTPCookieStorage

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
  @available(iOS 9.0, *)
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
  @available(iOS 8.0, *)
  func removeCookiesSinceDate(date: NSDate)

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
  func cookiesForURL(URL: NSURL) -> [NSHTTPCookie]?

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
  @available(iOS 5.0, *)
  func sortedCookiesUsingDescriptors(sortOrder: [NSSortDescriptor]) -> [NSHTTPCookie]
  init()
}
extension NSHTTPCookieStorage {
  @available(iOS 8.0, *)
  func storeCookies(cookies: [NSHTTPCookie], forTask task: NSURLSessionTask)
  @available(iOS 8.0, *)
  func getCookiesForTask(task: NSURLSessionTask, completionHandler: ([NSHTTPCookie]?) -> Void)
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
@available(iOS 6.0, *)
let NSHashTableStrongMemory: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSHashTableCopyIn: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSHashTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSHashTableWeakMemory: NSPointerFunctionsOptions
typealias NSHashTableOptions = Int
@available(iOS 6.0, *)
class NSHashTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(options: NSPointerFunctionsOptions, capacity initialCapacity: Int)
  init(pointerFunctions functions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(options: NSPointerFunctionsOptions)
  @available(iOS 6.0, *)
  class func weakObjectsHashTable() -> NSHashTable
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  var count: Int { get }
  func member(object: AnyObject?) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  func addObject(object: AnyObject?)
  func removeObject(object: AnyObject?)
  func removeAllObjects()
  var allObjects: [AnyObject] { get }
  var anyObject: AnyObject? { get }
  func containsObject(anObject: AnyObject?) -> Bool
  func intersectsHashTable(other: NSHashTable) -> Bool
  func isEqualToHashTable(other: NSHashTable) -> Bool
  func isSubsetOfHashTable(other: NSHashTable) -> Bool
  func intersectHashTable(other: NSHashTable)
  func unionHashTable(other: NSHashTable)
  func minusHashTable(other: NSHashTable)
  var setRepresentation: Set<NSObject> { get }
  convenience init()
  @available(iOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 6.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class NSIndexPath : NSObject, NSCopying, NSSecureCoding {
  init(indexes: UnsafePointer<Int>, length: Int)
  convenience init(index: Int)
  func indexPathByAddingIndex(index: Int) -> NSIndexPath
  func indexPathByRemovingLastIndex() -> NSIndexPath
  func indexAtPosition(position: Int) -> Int
  var length: Int { get }

  /*!
   @abstract Copies the indexes stored in this index path from the positions specified by positionRange into indexes.
   @param indexes Buffer of at least as many NSUIntegers as specified by the length of positionRange. On return, this memory will hold the index path's indexes.
   @param positionRange A range of valid positions within this index path.  If the location plus the length of positionRange is greater than the length of this index path, this method raises an NSRangeException.
   @discussion
      It is the developer’s responsibility to allocate the memory for the C array.
   */
  @available(iOS 7.0, *)
  func getIndexes(indexes: UnsafeMutablePointer<Int>, range positionRange: NSRange)
  func compare(otherObject: NSIndexPath) -> NSComparisonResult
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSIndexPath {

  /// This method is unsafe because it could potentially cause buffer overruns. You should use -getIndexes:range: instead. 
  func getIndexes(indexes: UnsafeMutablePointer<Int>)
}
class NSIndexSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init(indexesInRange range: NSRange)
  init(indexSet: NSIndexSet)
  convenience init(index value: Int)
  func isEqualToIndexSet(indexSet: NSIndexSet) -> Bool
  var count: Int { get }
  var firstIndex: Int { get }
  var lastIndex: Int { get }
  func indexGreaterThanIndex(value: Int) -> Int
  func indexLessThanIndex(value: Int) -> Int
  func indexGreaterThanOrEqualToIndex(value: Int) -> Int
  func indexLessThanOrEqualToIndex(value: Int) -> Int
  func getIndexes(indexBuffer: UnsafeMutablePointer<Int>, maxCount bufferSize: Int, inIndexRange range: NSRangePointer) -> Int
  @available(iOS 2.0, *)
  func countOfIndexesInRange(range: NSRange) -> Int
  func containsIndex(value: Int) -> Bool
  func containsIndexesInRange(range: NSRange) -> Bool
  func containsIndexes(indexSet: NSIndexSet) -> Bool
  func intersectsIndexesInRange(range: NSRange) -> Bool
  @available(iOS 4.0, *)
  func enumerateIndexesUsingBlock(block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateIndexesWithOptions(opts: NSEnumerationOptions, usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateIndexesInRange(range: NSRange, options opts: NSEnumerationOptions, usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func indexPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func indexWithOptions(opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func indexInRange(range: NSRange, options opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func indexesPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(iOS 4.0, *)
  func indexesWithOptions(opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(iOS 4.0, *)
  func indexesInRange(range: NSRange, options opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  @available(iOS 5.0, *)
  func enumerateRangesUsingBlock(block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 5.0, *)
  func enumerateRangesWithOptions(opts: NSEnumerationOptions, usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 5.0, *)
  func enumerateRangesInRange(range: NSRange, options opts: NSEnumerationOptions, usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
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
  func addIndexes(indexSet: NSIndexSet)
  func removeIndexes(indexSet: NSIndexSet)
  func removeAllIndexes()
  func addIndex(value: Int)
  func removeIndex(value: Int)
  func addIndexesInRange(range: NSRange)
  func removeIndexesInRange(range: NSRange)
  func shiftIndexesStartingAtIndex(index: Int, by delta: Int)
  init(indexesInRange range: NSRange)
  init(indexSet: NSIndexSet)
  convenience init(index value: Int)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
typealias NSItemProviderCompletionHandler = (NSSecureCoding?, NSError!) -> Void
typealias NSItemProviderLoadHandler = (NSItemProviderCompletionHandler!, AnyClass!, [NSObject : AnyObject]!) -> Void
@available(iOS 8.0, *)
class NSItemProvider : NSObject, NSCopying {
  init(item: NSSecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOfURL fileURL: NSURL!)
  func registerItemForTypeIdentifier(typeIdentifier: String, loadHandler: NSItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConformingToTypeIdentifier(typeIdentifier: String) -> Bool
  func loadItemForTypeIdentifier(typeIdentifier: String, options: [NSObject : AnyObject]?, completionHandler: NSItemProviderCompletionHandler?)
  convenience init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
let NSItemProviderPreferredImageSizeKey: String
extension NSItemProvider {
  @available(iOS 8.0, *)
  var previewImageHandler: NSItemProviderLoadHandler?
  @available(iOS 8.0, *)
  func loadPreviewImageWithOptions(options: [NSObject : AnyObject]!, completionHandler: NSItemProviderCompletionHandler!)
}
@available(iOS 8.0, *)
let NSExtensionJavaScriptPreprocessingResultsKey: String
@available(iOS 8.0, *)
let NSExtensionJavaScriptFinalizeArgumentKey: String
@available(iOS 8.0, *)
let NSItemProviderErrorDomain: String
@available(iOS 8.0, *)
enum NSItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case ItemUnavailableError
  case UnexpectedValueClassError
  @available(iOS 9.0, *)
  case UnavailableCoercionError
}
@available(iOS 5.0, *)
struct NSJSONReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MutableContainers: NSJSONReadingOptions { get }
  static var MutableLeaves: NSJSONReadingOptions { get }
  static var AllowFragments: NSJSONReadingOptions { get }
}
@available(iOS 5.0, *)
struct NSJSONWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PrettyPrinted: NSJSONWritingOptions { get }
}
@available(iOS 5.0, *)
class NSJSONSerialization : NSObject {
  class func isValidJSONObject(obj: AnyObject) -> Bool
  class func dataWithJSONObject(obj: AnyObject, options opt: NSJSONWritingOptions) throws -> NSData
  class func JSONObjectWithData(data: NSData, options opt: NSJSONReadingOptions) throws -> AnyObject
  class func writeJSONObject(obj: AnyObject, toStream stream: NSOutputStream, options opt: NSJSONWritingOptions, error: NSErrorPointer) -> Int
  class func JSONObjectWithStream(stream: NSInputStream, options opt: NSJSONReadingOptions) throws -> AnyObject
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
  @available(iOS 5.0, *)
  class func mutableOrderedSetValueForKey(key: String) -> NSMutableOrderedSet
  @available(iOS 5.0, *)
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
  @available(iOS 5.0, *)
  class func mutableOrderedSetValueForKeyPath(keyPath: String) -> NSMutableOrderedSet
  @available(iOS 5.0, *)
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
  class func setValuesForKeysWithDictionary(keyedValues: [String : AnyObject])
  func setValuesForKeysWithDictionary(keyedValues: [String : AnyObject])
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
  @available(iOS 5.0, *)
  func valueForKey(key: String) -> AnyObject
  @available(iOS 5.0, *)
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSSet {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
struct NSKeyValueObservingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var New: NSKeyValueObservingOptions { get }
  static var Old: NSKeyValueObservingOptions { get }
  @available(iOS 2.0, *)
  static var Initial: NSKeyValueObservingOptions { get }
  @available(iOS 2.0, *)
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
@available(iOS 2.0, *)
let NSKeyValueChangeNotificationIsPriorKey: String
extension NSObject {
  class func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
  func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
}
extension NSObject {
  class func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  @available(iOS 5.0, *)
  class func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  @available(iOS 5.0, *)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  class func removeObserver(observer: NSObject, forKeyPath keyPath: String)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSArray {
  func addObserver(observer: NSObject, toObjectsAtIndexes indexes: NSIndexSet, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  @available(iOS 5.0, *)
  func removeObserver(observer: NSObject, fromObjectsAtIndexes indexes: NSIndexSet, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, fromObjectsAtIndexes indexes: NSIndexSet, forKeyPath keyPath: String)
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  @available(iOS 5.0, *)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSOrderedSet {
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  @available(iOS 5.0, *)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSSet {
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  @available(iOS 5.0, *)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSObject {
  class func willChangeValueForKey(key: String)
  func willChangeValueForKey(key: String)
  class func didChangeValueForKey(key: String)
  func didChangeValueForKey(key: String)
  class func willChange(changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  func willChange(changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  class func didChange(changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  func didChange(changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  class func willChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  func willChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  class func didChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  func didChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
}
extension NSObject {
  @available(iOS 2.0, *)
  class func keyPathsForValuesAffectingValueForKey(key: String) -> Set<String>
  class func automaticallyNotifiesObserversForKey(key: String) -> Bool
  var observationInfo: UnsafeMutablePointer<Void>
  class func observationInfo() -> UnsafeMutablePointer<Void>
  class func setObservationInfo(observationInfo: UnsafeMutablePointer<Void>)
}
let NSInvalidArchiveOperationException: String
let NSInvalidUnarchiveOperationException: String
@available(iOS 7.0, *)
let NSKeyedArchiveRootObjectKey: String
class NSKeyedArchiver : NSCoder {
  class func archivedDataWithRootObject(rootObject: AnyObject) -> NSData
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  init(forWritingWithMutableData data: NSMutableData)
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedArchiverDelegate?
  var outputFormat: NSPropertyListFormat
  func finishEncoding()
  class func setClassName(codedName: String?, forClass cls: AnyClass)
  func setClassName(codedName: String?, forClass cls: AnyClass)
  class func classNameForClass(cls: AnyClass) -> String?
  func classNameForClass(cls: AnyClass) -> String?
  func encodeObject(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encodeBool(boolv: Bool, forKey key: String)
  func encodeInt(intv: Int32, forKey key: String)
  func encodeInt32(intv: Int32, forKey key: String)
  func encodeInt64(intv: Int64, forKey key: String)
  func encodeFloat(realv: Float, forKey key: String)
  func encodeDouble(realv: Double, forKey key: String)
  func encodeBytes(bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  @available(iOS 6.0, *)
  var requiresSecureCoding: Bool
  init()
}
class NSKeyedUnarchiver : NSCoder {
  class func unarchiveObjectWithData(data: NSData) -> AnyObject?
  class func unarchiveObjectWithFile(path: String) -> AnyObject?
  init(forReadingWithData data: NSData)
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
  @available(iOS 6.0, *)
  var requiresSecureCoding: Bool
  init()
}

extension NSKeyedUnarchiver {
  @warn_unused_result
  class func unarchiveTopLevelObjectWithData(data: NSData) throws -> AnyObject?
}
protocol NSKeyedArchiverDelegate : NSObjectProtocol {
  optional func archiver(archiver: NSKeyedArchiver, willEncodeObject object: AnyObject) -> AnyObject?
  optional func archiver(archiver: NSKeyedArchiver, didEncodeObject object: AnyObject?)
  optional func archiver(archiver: NSKeyedArchiver, willReplaceObject object: AnyObject?, withObject newObject: AnyObject?)
  optional func archiverWillFinish(archiver: NSKeyedArchiver)
  optional func archiverDidFinish(archiver: NSKeyedArchiver)
}
protocol NSKeyedUnarchiverDelegate : NSObjectProtocol {
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, cannotDecodeObjectOfClassName name: String, originalClasses classNames: [String]) -> AnyClass?
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, didDecodeObject object: AnyObject?) -> AnyObject?
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, willReplaceObject object: AnyObject, withObject newObject: AnyObject)
  optional func unarchiverWillFinish(unarchiver: NSKeyedUnarchiver)
  optional func unarchiverDidFinish(unarchiver: NSKeyedUnarchiver)
}
extension NSObject {
  var classForKeyedArchiver: AnyClass? { get }
  class func replacementObjectForKeyedArchiver(archiver: NSKeyedArchiver) -> AnyObject?
  func replacementObjectForKeyedArchiver(archiver: NSKeyedArchiver) -> AnyObject?
  class func classFallbacksForKeyedArchiver() -> [String]
  class func classForKeyedArchiver() -> AnyClass?
}
extension NSObject {
  class func classForKeyedUnarchiver() -> AnyClass
}
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
class NSLengthFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var forPersonHeightUse: Bool
  func stringFromValue(value: Double, unit: NSLengthFormatterUnit) -> String
  func stringFromMeters(numberInMeters: Double) -> String
  func unitStringFromValue(value: Double, unit: NSLengthFormatterUnit) -> String
  func unitStringFromMeters(numberInMeters: Double, usedUnit unitp: UnsafeMutablePointer<NSLengthFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 5.0, *)
let NSLinguisticTagSchemeTokenType: String
@available(iOS 5.0, *)
let NSLinguisticTagSchemeLexicalClass: String
@available(iOS 5.0, *)
let NSLinguisticTagSchemeNameType: String
@available(iOS 5.0, *)
let NSLinguisticTagSchemeNameTypeOrLexicalClass: String
@available(iOS 5.0, *)
let NSLinguisticTagSchemeLemma: String
@available(iOS 5.0, *)
let NSLinguisticTagSchemeLanguage: String
@available(iOS 5.0, *)
let NSLinguisticTagSchemeScript: String
@available(iOS 5.0, *)
let NSLinguisticTagWord: String
@available(iOS 5.0, *)
let NSLinguisticTagPunctuation: String
@available(iOS 5.0, *)
let NSLinguisticTagWhitespace: String
@available(iOS 5.0, *)
let NSLinguisticTagOther: String
@available(iOS 5.0, *)
let NSLinguisticTagNoun: String
@available(iOS 5.0, *)
let NSLinguisticTagVerb: String
@available(iOS 5.0, *)
let NSLinguisticTagAdjective: String
@available(iOS 5.0, *)
let NSLinguisticTagAdverb: String
@available(iOS 5.0, *)
let NSLinguisticTagPronoun: String
@available(iOS 5.0, *)
let NSLinguisticTagDeterminer: String
@available(iOS 5.0, *)
let NSLinguisticTagParticle: String
@available(iOS 5.0, *)
let NSLinguisticTagPreposition: String
@available(iOS 5.0, *)
let NSLinguisticTagNumber: String
@available(iOS 5.0, *)
let NSLinguisticTagConjunction: String
@available(iOS 5.0, *)
let NSLinguisticTagInterjection: String
@available(iOS 5.0, *)
let NSLinguisticTagClassifier: String
@available(iOS 5.0, *)
let NSLinguisticTagIdiom: String
@available(iOS 5.0, *)
let NSLinguisticTagOtherWord: String
@available(iOS 5.0, *)
let NSLinguisticTagSentenceTerminator: String
@available(iOS 5.0, *)
let NSLinguisticTagOpenQuote: String
@available(iOS 5.0, *)
let NSLinguisticTagCloseQuote: String
@available(iOS 5.0, *)
let NSLinguisticTagOpenParenthesis: String
@available(iOS 5.0, *)
let NSLinguisticTagCloseParenthesis: String
@available(iOS 5.0, *)
let NSLinguisticTagWordJoiner: String
@available(iOS 5.0, *)
let NSLinguisticTagDash: String
@available(iOS 5.0, *)
let NSLinguisticTagOtherPunctuation: String
@available(iOS 5.0, *)
let NSLinguisticTagParagraphBreak: String
@available(iOS 5.0, *)
let NSLinguisticTagOtherWhitespace: String
@available(iOS 5.0, *)
let NSLinguisticTagPersonalName: String
@available(iOS 5.0, *)
let NSLinguisticTagPlaceName: String
@available(iOS 5.0, *)
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
@available(iOS 5.0, *)
class NSLinguisticTagger : NSObject {
  @available(iOS 5.0, *)
  init(tagSchemes: [String], options opts: Int)
  @available(iOS 5.0, *)
  var tagSchemes: [String] { get }
  @available(iOS 5.0, *)
  var string: String?
  @available(iOS 5.0, *)
  class func availableTagSchemesForLanguage(language: String) -> [String]
  @available(iOS 5.0, *)
  func setOrthography(orthography: NSOrthography?, range: NSRange)
  @available(iOS 5.0, *)
  func orthographyAtIndex(charIndex: Int, effectiveRange: NSRangePointer) -> NSOrthography?
  @available(iOS 5.0, *)
  func stringEditedInRange(newRange: NSRange, changeInLength delta: Int)
  @available(iOS 5.0, *)
  func enumerateTagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 5.0, *)
  func sentenceRangeForRange(range: NSRange) -> NSRange
  @available(iOS 5.0, *)
  func tagAtIndex(charIndex: Int, scheme tagScheme: String, tokenRange: NSRangePointer, sentenceRange: NSRangePointer) -> String?
  @available(iOS 5.0, *)
  func tagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(iOS 5.0, *)
  func possibleTagsAtIndex(charIndex: Int, scheme tagScheme: String, tokenRange: NSRangePointer, sentenceRange: NSRangePointer, scores: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]?
  convenience init()
}
extension NSString {
  @available(iOS 5.0, *)
  func linguisticTagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, orthography: NSOrthography?, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(iOS 5.0, *)
  func enumerateLinguisticTagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, orthography: NSOrthography?, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
class NSLocale : NSObject, NSCopying, NSSecureCoding {
  func objectForKey(key: AnyObject) -> AnyObject?
  func displayNameForKey(key: AnyObject, value: AnyObject) -> String?
  init(localeIdentifier string: String)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSLocale {
  var localeIdentifier: String { get }
}
extension NSLocale {
  @available(iOS 2.0, *)
  class func autoupdatingCurrentLocale() -> NSLocale
  class func currentLocale() -> NSLocale
  class func systemLocale() -> NSLocale
}
extension NSLocale {
  class func availableLocaleIdentifiers() -> [String]
  class func ISOLanguageCodes() -> [String]
  class func ISOCountryCodes() -> [String]
  class func ISOCurrencyCodes() -> [String]
  @available(iOS 2.0, *)
  class func commonISOCurrencyCodes() -> [String]
  @available(iOS 2.0, *)
  class func preferredLanguages() -> [String]
  class func componentsFromLocaleIdentifier(string: String) -> [String : String]
  class func localeIdentifierFromComponents(dict: [String : String]) -> String
  class func canonicalLocaleIdentifierFromString(string: String) -> String
  class func canonicalLanguageIdentifierFromString(string: String) -> String
  @available(iOS 4.0, *)
  class func localeIdentifierFromWindowsLocaleCode(lcid: UInt32) -> String?
  @available(iOS 4.0, *)
  class func windowsLocaleCodeFromLocaleIdentifier(localeIdentifier: String) -> UInt32
  @available(iOS 4.0, *)
  class func characterDirectionForLanguage(isoLangCode: String) -> NSLocaleLanguageDirection
  @available(iOS 4.0, *)
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
@available(iOS 2.0, *)
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
@available(iOS 4.0, *)
let NSLocaleCollatorIdentifier: String
@available(iOS 4.0, *)
let NSLocaleQuotationBeginDelimiterKey: String
@available(iOS 4.0, *)
let NSLocaleQuotationEndDelimiterKey: String
@available(iOS 4.0, *)
let NSLocaleAlternateQuotationBeginDelimiterKey: String
@available(iOS 4.0, *)
let NSLocaleAlternateQuotationEndDelimiterKey: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierGregorian instead")
let NSGregorianCalendar: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierBuddhist instead")
let NSBuddhistCalendar: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierChinese instead")
let NSChineseCalendar: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierHebrew instead")
let NSHebrewCalendar: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierIslamic instead")
let NSIslamicCalendar: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierIslamicCivil instead")
let NSIslamicCivilCalendar: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierJapanese instead")
let NSJapaneseCalendar: String
@available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierRepublicOfChina instead")
let NSRepublicOfChinaCalendar: String
@available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierPersian instead")
let NSPersianCalendar: String
@available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierIndian instead")
let NSIndianCalendar: String
@available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierISO8601 instead")
let NSISO8601Calendar: String
protocol NSLocking {
  func lock()
  func unlock()
}
class NSLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lockBeforeDate(limit: NSDate) -> Bool
  @available(iOS 2.0, *)
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
  func tryLockWhenCondition(condition: Int) -> Bool
  func unlockWithCondition(condition: Int)
  func lockBeforeDate(limit: NSDate) -> Bool
  func lockWhenCondition(condition: Int, beforeDate limit: NSDate) -> Bool
  @available(iOS 2.0, *)
  var name: String?
  convenience init()
  func lock()
  func unlock()
}
class NSRecursiveLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lockBeforeDate(limit: NSDate) -> Bool
  @available(iOS 2.0, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
@available(iOS 2.0, *)
class NSCondition : NSObject, NSLocking {
  func wait()
  func waitUntilDate(limit: NSDate) -> Bool
  func signal()
  func broadcast()
  @available(iOS 2.0, *)
  var name: String?
  init()
  @available(iOS 2.0, *)
  func lock()
  @available(iOS 2.0, *)
  func unlock()
}
var __FOUNDATION_NSMAPTABLE__: Int32 { get }

/****************	Class	****************/
@available(iOS 6.0, *)
let NSMapTableStrongMemory: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSMapTableCopyIn: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSMapTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSMapTableWeakMemory: NSPointerFunctionsOptions
typealias NSMapTableOptions = Int
@available(iOS 6.0, *)
class NSMapTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(keyOptions: NSPointerFunctionsOptions, valueOptions: NSPointerFunctionsOptions, capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: NSPointerFunctions, valuePointerFunctions valueFunctions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions: NSPointerFunctionsOptions, valueOptions: NSPointerFunctionsOptions)
  @available(iOS 6.0, *)
  class func strongToStrongObjectsMapTable() -> NSMapTable
  @available(iOS 6.0, *)
  class func weakToStrongObjectsMapTable() -> NSMapTable
  @available(iOS 6.0, *)
  class func strongToWeakObjectsMapTable() -> NSMapTable
  @available(iOS 6.0, *)
  class func weakToWeakObjectsMapTable() -> NSMapTable
  @NSCopying var keyPointerFunctions: NSPointerFunctions { get }
  @NSCopying var valuePointerFunctions: NSPointerFunctions { get }
  func objectForKey(aKey: AnyObject?) -> AnyObject?
  func removeObjectForKey(aKey: AnyObject?)
  func setObject(anObject: AnyObject?, forKey aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> NSEnumerator
  func objectEnumerator() -> NSEnumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  convenience init()
  @available(iOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 6.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(iOS 8.0, *)
enum NSMassFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Gram
  case Kilogram
  case Ounce
  case Pound
  case Stone
}
@available(iOS 8.0, *)
class NSMassFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var forPersonMassUse: Bool
  func stringFromValue(value: Double, unit: NSMassFormatterUnit) -> String
  func stringFromKilograms(numberInKilograms: Double) -> String
  func unitStringFromValue(value: Double, unit: NSMassFormatterUnit) -> String
  func unitStringFromKilograms(numberInKilograms: Double, usedUnit unitp: UnsafeMutablePointer<NSMassFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 5.0, *)
class NSMetadataQuery : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSMetadataQueryDelegate?
  @NSCopying var predicate: NSPredicate?
  var sortDescriptors: [NSSortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: NSTimeInterval
  var searchScopes: [AnyObject]
  @available(iOS 7.0, *)
  var searchItems: [AnyObject]?
  @available(iOS 7.0, *)
  var operationQueue: NSOperationQueue?
  func startQuery() -> Bool
  func stopQuery()
  var started: Bool { get }
  var gathering: Bool { get }
  var stopped: Bool { get }
  func disableUpdates()
  func enableUpdates()
  var resultCount: Int { get }
  func resultAtIndex(idx: Int) -> AnyObject
  @available(iOS 7.0, *)
  func enumerateResultsUsingBlock(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 7.0, *)
  func enumerateResultsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [AnyObject] { get }
  func indexOfResult(result: AnyObject) -> Int
  var valueLists: [String : [NSMetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [NSMetadataQueryResultGroup] { get }
  func valueOfAttribute(attrName: String, forResultAtIndex idx: Int) -> AnyObject?
  init()
}
protocol NSMetadataQueryDelegate : NSObjectProtocol {
  @available(iOS 5.0, *)
  optional func metadataQuery(query: NSMetadataQuery, replacementObjectForResultObject result: NSMetadataItem) -> AnyObject
  @available(iOS 5.0, *)
  optional func metadataQuery(query: NSMetadataQuery, replacementValueForAttribute attrName: String, value attrValue: AnyObject) -> AnyObject
}
@available(iOS 5.0, *)
let NSMetadataQueryDidStartGatheringNotification: String
@available(iOS 5.0, *)
let NSMetadataQueryGatheringProgressNotification: String
@available(iOS 5.0, *)
let NSMetadataQueryDidFinishGatheringNotification: String
@available(iOS 5.0, *)
let NSMetadataQueryDidUpdateNotification: String
@available(iOS 8.0, *)
let NSMetadataQueryUpdateAddedItemsKey: String
@available(iOS 8.0, *)
let NSMetadataQueryUpdateChangedItemsKey: String
@available(iOS 8.0, *)
let NSMetadataQueryUpdateRemovedItemsKey: String
@available(iOS 5.0, *)
let NSMetadataQueryResultContentRelevanceAttribute: String
@available(iOS 5.0, *)
let NSMetadataQueryUbiquitousDocumentsScope: String
@available(iOS 5.0, *)
let NSMetadataQueryUbiquitousDataScope: String
@available(iOS 8.0, *)
let NSMetadataQueryAccessibleUbiquitousExternalDocumentsScope: String
@available(iOS 5.0, *)
class NSMetadataItem : NSObject {
  func valueForAttribute(key: String) -> AnyObject?
  func valuesForAttributes(keys: [String]) -> [String : AnyObject]?
  var attributes: [String] { get }
  convenience init()
}
@available(iOS 5.0, *)
class NSMetadataQueryAttributeValueTuple : NSObject {
  var attribute: String { get }
  var value: AnyObject? { get }
  var count: Int { get }
  init()
}
@available(iOS 5.0, *)
class NSMetadataQueryResultGroup : NSObject {
  var attribute: String { get }
  var value: AnyObject { get }
  var subgroups: [NSMetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func resultAtIndex(idx: Int) -> AnyObject
  var results: [AnyObject] { get }
  init()
}
@available(iOS 5.0, *)
let NSMetadataItemFSNameKey: String
@available(iOS 5.0, *)
let NSMetadataItemDisplayNameKey: String
@available(iOS 5.0, *)
let NSMetadataItemURLKey: String
@available(iOS 5.0, *)
let NSMetadataItemPathKey: String
@available(iOS 5.0, *)
let NSMetadataItemFSSizeKey: String
@available(iOS 5.0, *)
let NSMetadataItemFSCreationDateKey: String
@available(iOS 5.0, *)
let NSMetadataItemFSContentChangeDateKey: String
@available(iOS 8.0, *)
let NSMetadataItemContentTypeKey: String
@available(iOS 8.0, *)
let NSMetadataItemContentTypeTreeKey: String
@available(iOS 5.0, *)
let NSMetadataItemIsUbiquitousKey: String
@available(iOS 5.0, *)
let NSMetadataUbiquitousItemHasUnresolvedConflictsKey: String
@available(iOS 7.0, *)
let NSMetadataUbiquitousItemDownloadingStatusKey: String
@available(iOS 7.0, *)
let NSMetadataUbiquitousItemDownloadingStatusNotDownloaded: String
@available(iOS 7.0, *)
let NSMetadataUbiquitousItemDownloadingStatusDownloaded: String
@available(iOS 7.0, *)
let NSMetadataUbiquitousItemDownloadingStatusCurrent: String
@available(iOS 5.0, *)
let NSMetadataUbiquitousItemIsDownloadingKey: String
@available(iOS 5.0, *)
let NSMetadataUbiquitousItemIsUploadedKey: String
@available(iOS 5.0, *)
let NSMetadataUbiquitousItemIsUploadingKey: String
@available(iOS 5.0, *)
let NSMetadataUbiquitousItemPercentDownloadedKey: String
@available(iOS 5.0, *)
let NSMetadataUbiquitousItemPercentUploadedKey: String
@available(iOS 7.0, *)
let NSMetadataUbiquitousItemDownloadingErrorKey: String
@available(iOS 7.0, *)
let NSMetadataUbiquitousItemUploadingErrorKey: String
@available(iOS 8.0, *)
let NSMetadataUbiquitousItemDownloadRequestedKey: String
@available(iOS 8.0, *)
let NSMetadataUbiquitousItemIsExternalDocumentKey: String
@available(iOS 8.0, *)
let NSMetadataUbiquitousItemContainerDisplayNameKey: String
@available(iOS 8.0, *)
let NSMetadataUbiquitousItemURLInLocalContainerKey: String
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
  @available(iOS 7.0, *)
  static var ListenForConnections: NSNetServiceOptions { get }
}
class NSNetService : NSObject {
  init(domain: String, type: String, name: String, port: Int32)
  convenience init(domain: String, type: String, name: String)
  func scheduleInRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  unowned(unsafe) var delegate: @sil_unmanaged NSNetServiceDelegate?
  @available(iOS 7.0, *)
  var includesPeerToPeer: Bool
  var name: String { get }
  var type: String { get }
  var domain: String { get }
  var hostName: String? { get }
  var addresses: [NSData]? { get }
  @available(iOS 2.0, *)
  var port: Int { get }
  func publish()
  @available(iOS 2.0, *)
  func publishWithOptions(options: NSNetServiceOptions)
  func stop()
  class func dictionaryFromTXTRecordData(txtData: NSData) -> [String : NSData]
  class func dataFromTXTRecordDictionary(txtDictionary: [String : NSData]) -> NSData
  func resolveWithTimeout(timeout: NSTimeInterval)
  func getInputStream(inputStream: UnsafeMutablePointer<NSInputStream?>, outputStream: UnsafeMutablePointer<NSOutputStream?>) -> Bool
  func setTXTRecordData(recordData: NSData?) -> Bool
  func TXTRecordData() -> NSData?
  func startMonitoring()
  func stopMonitoring()
  convenience init()
}
class NSNetServiceBrowser : NSObject {
  init()
  unowned(unsafe) var delegate: @sil_unmanaged NSNetServiceBrowserDelegate?
  @available(iOS 7.0, *)
  var includesPeerToPeer: Bool
  func scheduleInRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
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
  optional func netService(sender: NSNetService, didUpdateTXTRecordData data: NSData)
  @available(iOS 7.0, *)
  optional func netService(sender: NSNetService, didAcceptConnectionWithInputStream inputStream: NSInputStream, outputStream: NSOutputStream)
}
protocol NSNetServiceBrowserDelegate : NSObjectProtocol {
  optional func netServiceBrowserWillSearch(browser: NSNetServiceBrowser)
  optional func netServiceBrowserDidStopSearch(browser: NSNetServiceBrowser)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didNotSearch errorDict: [String : NSNumber])
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didFindDomain domainString: String, moreComing: Bool)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didFindService service: NSNetService, moreComing: Bool)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didRemoveDomain domainString: String, moreComing: Bool)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didRemoveService service: NSNetService, moreComing: Bool)
}

/****************	Notifications	****************/
class NSNotification : NSObject, NSCopying, NSCoding {
  var name: String { get }
  var object: AnyObject? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  @available(iOS 4.0, *)
  init(name: String, object: AnyObject?, userInfo: [NSObject : AnyObject]?)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSNotification {
  convenience init(name aName: String, object anObject: AnyObject?)
  convenience init()
}

/****************	Notification Center	****************/
class NSNotificationCenter : NSObject {
  class func defaultCenter() -> NSNotificationCenter
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: AnyObject?)
  func postNotification(notification: NSNotification)
  func postNotificationName(aName: String, object anObject: AnyObject?)
  func postNotificationName(aName: String, object anObject: AnyObject?, userInfo aUserInfo: [NSObject : AnyObject]?)
  func removeObserver(observer: AnyObject)
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: AnyObject?)
  @available(iOS 4.0, *)
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
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum NSNumberFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_4
}
class NSNumberFormatter : NSFormatter {
  @available(iOS 8.0, *)
  var formattingContext: NSFormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFromNumber(number: NSNumber) -> String?
  func numberFromString(string: String) -> NSNumber?
  @available(iOS 4.0, *)
  class func localizedStringFromNumber(num: NSNumber, numberStyle nstyle: NSNumberFormatterStyle) -> String
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
  @available(iOS 2.0, *)
  var currencyGroupingSeparator: String!
  @available(iOS 2.0, *)
  var lenient: Bool
  @available(iOS 2.0, *)
  var usesSignificantDigits: Bool
  @available(iOS 2.0, *)
  var minimumSignificantDigits: Int
  @available(iOS 2.0, *)
  var maximumSignificantDigits: Int
  @available(iOS 2.0, *)
  var partialStringValidationEnabled: Bool
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
  @available(iOS 9.0, *)
  case OrdinalStyle
  @available(iOS 9.0, *)
  case CurrencyISOCodeStyle
  @available(iOS 9.0, *)
  case CurrencyPluralStyle
  @available(iOS 9.0, *)
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
var NSFoundationVersionNumber_iPhoneOS_2_0: Double { get }
var NSFoundationVersionNumber_iPhoneOS_2_1: Double { get }
var NSFoundationVersionNumber_iPhoneOS_2_2: Double { get }
var NSFoundationVersionNumber_iPhoneOS_3_0: Double { get }
var NSFoundationVersionNumber_iPhoneOS_3_1: Double { get }
var NSFoundationVersionNumber_iPhoneOS_3_2: Double { get }
var NSFoundationVersionNumber_iOS_4_0: Double { get }
var NSFoundationVersionNumber_iOS_4_1: Double { get }
var NSFoundationVersionNumber_iOS_4_2: Double { get }
var NSFoundationVersionNumber_iOS_4_3: Double { get }
var NSFoundationVersionNumber_iOS_5_0: Double { get }
var NSFoundationVersionNumber_iOS_5_1: Double { get }
var NSFoundationVersionNumber_iOS_6_0: Double { get }
var NSFoundationVersionNumber_iOS_6_1: Double { get }
var NSFoundationVersionNumber_iOS_7_0: Double { get }
var NSFoundationVersionNumber_iOS_7_1: Double { get }
var NSFoundationVersionNumber_iOS_8_0: Double { get }
var NSFoundationVersionNumber_iOS_8_1: Double { get }
var NSFoundationVersionNumber_iOS_8_2: Double { get }
var NSFoundationVersionNumber_iOS_8_3: Double { get }
var NSFoundationVersionNumber_iOS_8_4: Double { get }
func NSStringFromSelector(aSelector: Selector) -> String
func NSSelectorFromString(aSelectorName: String) -> Selector
func NSStringFromClass(aClass: AnyClass) -> String
func NSClassFromString(aClassName: String) -> AnyClass?
@available(iOS 2.0, *)
func NSStringFromProtocol(proto: Protocol) -> String
@available(iOS 2.0, *)
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
@available(iOS 8.0, *)
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
  func copyWithZone(zone: NSZone) -> AnyObject
}
protocol NSMutableCopying {
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
protocol NSCoding {
  func encodeWithCoder(aCoder: NSCoder)
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
  class func replacementObjectForCoder(aCoder: NSCoder) -> AnyObject?
  func replacementObjectForCoder(aCoder: NSCoder) -> AnyObject?
  class func awakeAfterUsingCoder(aDecoder: NSCoder) -> AnyObject?
  func awakeAfterUsingCoder(aDecoder: NSCoder) -> AnyObject?
  class func classForCoder() -> AnyClass
}

/***********	Discardable Content		***********/
protocol NSDiscardableContent {
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension NSObject {
  @available(iOS 4.0, *)
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(X: AnyObject?) -> AnyObject?
@available(iOS 2.0, *)
class NSOperation : NSObject {
  func start()
  func main()
  var cancelled: Bool { get }
  func cancel()
  var executing: Bool { get }
  var finished: Bool { get }
  var concurrent: Bool { get }
  @available(iOS 7.0, *)
  var asynchronous: Bool { get }
  var ready: Bool { get }
  func addDependency(op: NSOperation)
  func removeDependency(op: NSOperation)
  var dependencies: [NSOperation] { get }
  var queuePriority: NSOperationQueuePriority
  @available(iOS 4.0, *)
  var completionBlock: (() -> Void)?
  @available(iOS 4.0, *)
  func waitUntilFinished()
  @available(iOS, introduced=4.0, deprecated=8.0)
  var threadPriority: Double
  @available(iOS 8.0, *)
  var qualityOfService: NSQualityOfService
  @available(iOS 8.0, *)
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
@available(iOS 4.0, *)
class NSBlockOperation : NSOperation {
  convenience init(block: () -> Void)
  func addExecutionBlock(block: () -> Void)
  var executionBlocks: [() -> Void] { get }
  init()
}
@available(iOS 2.0, *)
let NSInvocationOperationVoidResultException: String
@available(iOS 2.0, *)
let NSInvocationOperationCancelledException: String
let NSOperationQueueDefaultMaxConcurrentOperationCount: Int
@available(iOS 2.0, *)
class NSOperationQueue : NSObject {
  func addOperation(op: NSOperation)
  @available(iOS 4.0, *)
  func addOperations(ops: [NSOperation], waitUntilFinished wait: Bool)
  @available(iOS 4.0, *)
  func addOperationWithBlock(block: () -> Void)
  var operations: [NSOperation] { get }
  @available(iOS 4.0, *)
  var operationCount: Int { get }
  var maxConcurrentOperationCount: Int
  var suspended: Bool
  @available(iOS 4.0, *)
  var name: String?
  @available(iOS 8.0, *)
  var qualityOfService: NSQualityOfService
  @available(iOS 8.0, *)
  unowned(unsafe) var underlyingQueue: @sil_unmanaged dispatch_queue_t?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  @available(iOS 4.0, *)
  class func currentQueue() -> NSOperationQueue?
  @available(iOS 4.0, *)
  class func mainQueue() -> NSOperationQueue
  init()
}

/****************       Immutable Ordered Set   ****************/
@available(iOS 5.0, *)
class NSOrderedSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectAtIndex(idx: Int) -> AnyObject
  func indexOfObject(object: AnyObject) -> Int
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  @available(iOS 5.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 5.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 5.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(iOS 5.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func objectsAtIndexes(indexes: NSIndexSet) -> [AnyObject]
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func isEqualToOrderedSet(other: NSOrderedSet) -> Bool
  func containsObject(object: AnyObject) -> Bool
  func intersectsOrderedSet(other: NSOrderedSet) -> Bool
  func intersectsSet(set: Set<NSObject>) -> Bool
  func isSubsetOfOrderedSet(other: NSOrderedSet) -> Bool
  func isSubsetOfSet(set: Set<NSObject>) -> Bool
  @available(iOS 6.0, *)
  subscript (idx: Int) -> AnyObject { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var reversedOrderedSet: NSOrderedSet { get }
  var array: [AnyObject] { get }
  var set: Set<NSObject> { get }
  func enumerateObjectsUsingBlock(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjectsWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexOfObject(object: AnyObject, inSortedRange range: NSRange, options opts: NSBinarySearchingOptions, usingComparator cmp: NSComparator) -> Int
  func sortedArrayUsingComparator(cmptr: NSComparator) -> [AnyObject]
  func sortedArrayWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator) -> [AnyObject]
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
@available(iOS 5.0, *)
class NSMutableOrderedSet : NSOrderedSet {
  func insertObject(object: AnyObject, atIndex idx: Int)
  func removeObjectAtIndex(idx: Int)
  func replaceObjectAtIndex(idx: Int, withObject object: AnyObject)
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
  func addObject(object: AnyObject)
  func addObjects(objects: UnsafePointer<AnyObject?>, count: Int)
  func addObjectsFromArray(array: [AnyObject])
  func exchangeObjectAtIndex(idx1: Int, withObjectAtIndex idx2: Int)
  func moveObjectsAtIndexes(indexes: NSIndexSet, toIndex idx: Int)
  func insertObjects(objects: [AnyObject], atIndexes indexes: NSIndexSet)
  func setObject(obj: AnyObject, atIndex idx: Int)
  @available(iOS 6.0, *)
  subscript (idx: Int) -> AnyObject
  func replaceObjectsInRange(range: NSRange, withObjects objects: UnsafePointer<AnyObject?>, count: Int)
  func replaceObjectsAtIndexes(indexes: NSIndexSet, withObjects objects: [AnyObject])
  func removeObjectsInRange(range: NSRange)
  func removeObjectsAtIndexes(indexes: NSIndexSet)
  func removeAllObjects()
  func removeObject(object: AnyObject)
  func removeObjectsInArray(array: [AnyObject])
  func intersectOrderedSet(other: NSOrderedSet)
  func minusOrderedSet(other: NSOrderedSet)
  func unionOrderedSet(other: NSOrderedSet)
  func intersectSet(other: Set<NSObject>)
  func minusSet(other: Set<NSObject>)
  func unionSet(other: Set<NSObject>)
  func sortUsingComparator(cmptr: NSComparator)
  func sortWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator)
  func sortRange(range: NSRange, options opts: NSSortOptions, usingComparator cmptr: NSComparator)
}
extension NSMutableOrderedSet {
}
@available(iOS 4.0, *)
class NSOrthography : NSObject, NSCopying, NSCoding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  @available(iOS 4.0, *)
  init(dominantScript script: String, languageMap map: [String : [String]])
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 4.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 4.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSOrthography {
  @available(iOS 4.0, *)
  func languagesForScript(script: String) -> [String]?
  @available(iOS 4.0, *)
  func dominantLanguageForScript(script: String) -> String?
  @available(iOS 4.0, *)
  var dominantLanguage: String { get }
  @available(iOS 4.0, *)
  var allScripts: [String] { get }
  @available(iOS 4.0, *)
  var allLanguages: [String] { get }
}
extension NSOrthography {
}
extension NSString {
  class func pathWithComponents(components: [String]) -> String
  var pathComponents: [String] { get }
  var absolutePath: Bool { get }
  var lastPathComponent: String { get }
  var stringByDeletingLastPathComponent: String { get }
  func stringByAppendingPathComponent(str: String) -> String
  var pathExtension: String { get }
  var stringByDeletingPathExtension: String { get }
  func stringByAppendingPathExtension(str: String) -> String?
  var stringByAbbreviatingWithTildeInPath: String { get }
  var stringByExpandingTildeInPath: String { get }
  var stringByStandardizingPath: String { get }
  var stringByResolvingSymlinksInPath: String { get }
  func stringsByAppendingPaths(paths: [String]) -> [String]
  func completePathIntoString(outputName: AutoreleasingUnsafeMutablePointer<NSString?>, caseSensitive flag: Bool, matchesIntoArray outputArray: AutoreleasingUnsafeMutablePointer<NSArray?>, filterTypes: [String]?) -> Int
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
  @available(iOS 4.0, *)
  case AutosavedInformationDirectory
  case DesktopDirectory
  case CachesDirectory
  case ApplicationSupportDirectory
  @available(iOS 2.0, *)
  case DownloadsDirectory
  @available(iOS 4.0, *)
  case InputMethodsDirectory
  @available(iOS 4.0, *)
  case MoviesDirectory
  @available(iOS 4.0, *)
  case MusicDirectory
  @available(iOS 4.0, *)
  case PicturesDirectory
  @available(iOS 4.0, *)
  case PrinterDescriptionDirectory
  @available(iOS 4.0, *)
  case SharedPublicDirectory
  @available(iOS 4.0, *)
  case PreferencePanesDirectory
  @available(iOS 4.0, *)
  case ItemReplacementDirectory
  case AllApplicationsDirectory
  case AllLibrariesDirectory
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
@available(iOS 9.0, *)
class NSPersonNameComponents : NSObject, NSCopying, NSSecureCoding {
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  @NSCopying var phoneticRepresentation: NSPersonNameComponents?
  init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
enum NSPersonNameComponentsFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Short
  case Medium
  case Long
  case Abbreviated
}
@available(iOS 9.0, *)
struct NSPersonNameComponentsFormatterOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Phonetic: NSPersonNameComponentsFormatterOptions { get }
}
@available(iOS 9.0, *)
class NSPersonNameComponentsFormatter : NSFormatter {
  var style: NSPersonNameComponentsFormatterStyle
  var phonetic: Bool
  class func localizedStringFromPersonNameComponents(components: NSPersonNameComponents, style nameFormatStyle: NSPersonNameComponentsFormatterStyle, options nameOptions: NSPersonNameComponentsFormatterOptions) -> String
  func stringFromPersonNameComponents(components: NSPersonNameComponents) -> String
  func annotatedStringFromPersonNameComponents(components: NSPersonNameComponents) -> NSAttributedString
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let NSPersonNameComponentKey: String
@available(iOS 9.0, *)
let NSPersonNameComponentGivenName: String
@available(iOS 9.0, *)
let NSPersonNameComponentFamilyName: String
@available(iOS 9.0, *)
let NSPersonNameComponentMiddleName: String
@available(iOS 9.0, *)
let NSPersonNameComponentPrefix: String
@available(iOS 9.0, *)
let NSPersonNameComponentSuffix: String
@available(iOS 9.0, *)
let NSPersonNameComponentNickname: String
@available(iOS 9.0, *)
let NSPersonNameComponentDelimiter: String
@available(iOS 6.0, *)
class NSPointerArray : NSObject, NSFastEnumeration, NSCopying, NSCoding {
  init(options: NSPointerFunctionsOptions)
  init(pointerFunctions functions: NSPointerFunctions)
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  func pointerAtIndex(index: Int) -> UnsafeMutablePointer<Void>
  func addPointer(pointer: UnsafeMutablePointer<Void>)
  func removePointerAtIndex(index: Int)
  func insertPointer(item: UnsafeMutablePointer<Void>, atIndex index: Int)
  func replacePointerAtIndex(index: Int, withPointer item: UnsafeMutablePointer<Void>)
  func compact()
  var count: Int
  convenience init()
  @available(iOS 6.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
  @available(iOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPointerArray {
  @available(iOS 6.0, *)
  class func strongObjectsPointerArray() -> NSPointerArray
  @available(iOS 6.0, *)
  class func weakObjectsPointerArray() -> NSPointerArray
  var allObjects: [AnyObject] { get }
}
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
struct NSPointerFunctionsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(iOS 6.0, *)
  static var StrongMemory: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var OpaqueMemory: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var MallocMemory: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var MachVirtualMemory: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var WeakMemory: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var ObjectPersonality: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var OpaquePersonality: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var ObjectPointerPersonality: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var CStringPersonality: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var StructPersonality: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var IntegerPersonality: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var CopyIn: NSPointerFunctionsOptions { get }
}
@available(iOS 6.0, *)
class NSPointerFunctions : NSObject, NSCopying {
  init(options: NSPointerFunctionsOptions)
  var hashFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Int)?
  var isEqualFunction: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> ObjCBool)?
  var sizeFunction: (@convention(c) (UnsafePointer<Void>) -> Int)?
  var descriptionFunction: (@convention(c) (UnsafePointer<Void>) -> String?)?
  var relinquishFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Void)?
  var acquireFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?, ObjCBool) -> UnsafeMutablePointer<Void>)?
  var usesStrongWriteBarrier: Bool
  var usesWeakReadAndWriteBarriers: Bool
  convenience init()
  @available(iOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
typealias NSSocketNativeHandle = Int32
let NSPortDidBecomeInvalidNotification: String
class NSPort : NSObject, NSCopying, NSCoding {
  func invalidate()
  var valid: Bool { get }
  func setDelegate(anObject: NSPortDelegate?)
  func delegate() -> NSPortDelegate?
  func scheduleInRunLoop(runLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(runLoop: NSRunLoop, forMode mode: String)
  var reservedSpaceLength: Int { get }
  func sendBeforeDate(limitDate: NSDate, components: NSMutableArray?, from receivePort: NSPort?, reserved headerSpaceReserved: Int) -> Bool
  func sendBeforeDate(limitDate: NSDate, msgid msgID: Int, components: NSMutableArray?, from receivePort: NSPort?, reserved headerSpaceReserved: Int) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSPortDelegate : NSObjectProtocol {
}
class NSMachPort : NSPort {
  class func portWithMachPort(machPort: UInt32) -> NSPort
  init(machPort: UInt32)
  func setDelegate(anObject: NSMachPortDelegate?)
  func delegate() -> NSMachPortDelegate?
  @available(iOS 2.0, *)
  class func portWithMachPort(machPort: UInt32, options f: NSMachPortOptions) -> NSPort
  @available(iOS 2.0, *)
  init(machPort: UInt32, options f: NSMachPortOptions)
  var machPort: UInt32 { get }
  func scheduleInRunLoop(runLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(runLoop: NSRunLoop, forMode mode: String)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 2.0, *)
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
@available(iOS 3.0, *)
class NSPredicate : NSObject, NSSecureCoding, NSCopying {
  /*not inherited*/ init(format predicateFormat: String, argumentArray arguments: [AnyObject]?)
  /*not inherited*/ init(format predicateFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(value: Bool)
  @available(iOS 4.0, *)
  /*not inherited*/ init(block: (AnyObject, [String : AnyObject]?) -> Bool)
  var predicateFormat: String { get }
  func predicateWithSubstitutionVariables(variables: [String : AnyObject]) -> Self
  func evaluateWithObject(object: AnyObject?) -> Bool
  @available(iOS 3.0, *)
  func evaluateWithObject(object: AnyObject?, substitutionVariables bindings: [String : AnyObject]?) -> Bool
  @available(iOS 7.0, *)
  func allowEvaluation()
  init()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 3.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
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
  func filteredArrayUsingPredicate(predicate: NSPredicate) -> [AnyObject]
}
extension NSMutableArray {
  func filterUsingPredicate(predicate: NSPredicate)
}
extension NSSet {
  @available(iOS 3.0, *)
  func filteredSetUsingPredicate(predicate: NSPredicate) -> Set<NSObject>
}
extension NSMutableSet {
  @available(iOS 3.0, *)
  func filterUsingPredicate(predicate: NSPredicate)
}
extension NSOrderedSet {
  @available(iOS 5.0, *)
  func filteredOrderedSetUsingPredicate(p: NSPredicate) -> NSOrderedSet
}
extension NSMutableOrderedSet {
  @available(iOS 5.0, *)
  func filterUsingPredicate(p: NSPredicate)
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
  @available(iOS, introduced=2.0, deprecated=8.0, message="-operatingSystem always returns NSMACHOperatingSystem, use -operatingSystemVersion or -isOperatingSystemAtLeastVersion: instead")
  func operatingSystem() -> Int
  @available(iOS, introduced=2.0, deprecated=8.0, message="-operatingSystemName always returns NSMACHOperatingSystem, use -operatingSystemVersionString instead")
  func operatingSystemName() -> String
  var operatingSystemVersionString: String { get }
  @available(iOS 8.0, *)
  var operatingSystemVersion: NSOperatingSystemVersion { get }
  @available(iOS 2.0, *)
  var processorCount: Int { get }
  @available(iOS 2.0, *)
  var activeProcessorCount: Int { get }
  @available(iOS 2.0, *)
  var physicalMemory: UInt64 { get }
  @available(iOS 8.0, *)
  func isOperatingSystemAtLeastVersion(version: NSOperatingSystemVersion) -> Bool
  @available(iOS 4.0, *)
  var systemUptime: NSTimeInterval { get }
  init()
}
@available(iOS 7.0, *)
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
  @available(iOS 7.0, *)
  func beginActivityWithOptions(options: NSActivityOptions, reason: String) -> NSObjectProtocol
  @available(iOS 7.0, *)
  func endActivity(activity: NSObjectProtocol)
  @available(iOS 7.0, *)
  func performActivityWithOptions(options: NSActivityOptions, reason: String, usingBlock block: () -> Void)
  @available(iOS 8.2, *)
  func performExpiringActivityWithReason(reason: String, usingBlock block: (Bool) -> Void)
}
extension NSProcessInfo {
}
extension NSProcessInfo {
  @available(iOS 9.0, *)
  var lowPowerModeEnabled: Bool { get }
}
@available(iOS 9.0, *)
let NSProcessInfoPowerStateDidChangeNotification: String
@available(iOS 7.0, *)
class NSProgress : NSObject {
  class func currentProgress() -> NSProgress?
  /*not inherited*/ init(totalUnitCount unitCount: Int64)
  @available(iOS 9.0, *)
  class func discreteProgressWithTotalUnitCount(unitCount: Int64) -> NSProgress
  @available(iOS 9.0, *)
  /*not inherited*/ init(totalUnitCount unitCount: Int64, parent: NSProgress, pendingUnitCount portionOfParentTotalUnitCount: Int64)
  init(parent parentProgressOrNil: NSProgress?, userInfo userInfoOrNil: [NSObject : AnyObject]?)
  func becomeCurrentWithPendingUnitCount(unitCount: Int64)
  func resignCurrent()
  @available(iOS 9.0, *)
  func addChild(child: NSProgress, withPendingUnitCount inUnitCount: Int64)
  var totalUnitCount: Int64
  var completedUnitCount: Int64
  var localizedDescription: String!
  var localizedAdditionalDescription: String!
  var cancellable: Bool
  var pausable: Bool
  var cancelled: Bool { get }
  var paused: Bool { get }
  var cancellationHandler: (() -> Void)?
  var pausingHandler: (() -> Void)?
  @available(iOS 9.0, *)
  var resumingHandler: (() -> Void)?
  func setUserInfoObject(objectOrNil: AnyObject?, forKey key: String)
  var indeterminate: Bool { get }
  var fractionCompleted: Double { get }
  func cancel()
  func pause()
  @available(iOS 9.0, *)
  func resume()
  var userInfo: [NSObject : AnyObject] { get }
  var kind: String?
  convenience init()
}
typealias NSProgressUnpublishingHandler = () -> Void
typealias NSProgressPublishingHandler = (NSProgress) -> NSProgressUnpublishingHandler?
protocol NSProgressReporting : NSObjectProtocol {
  @available(iOS 7.0, *)
  var progress: NSProgress { get }
}
@available(iOS 7.0, *)
let NSProgressEstimatedTimeRemainingKey: String
@available(iOS 7.0, *)
let NSProgressThroughputKey: String
@available(iOS 7.0, *)
let NSProgressKindFile: String
@available(iOS 7.0, *)
let NSProgressFileOperationKindKey: String
@available(iOS 7.0, *)
let NSProgressFileOperationKindDownloading: String
@available(iOS 7.0, *)
let NSProgressFileOperationKindDecompressingAfterDownloading: String
@available(iOS 7.0, *)
let NSProgressFileOperationKindReceiving: String
@available(iOS 7.0, *)
let NSProgressFileOperationKindCopying: String
@available(iOS 7.0, *)
let NSProgressFileURLKey: String
@available(iOS 7.0, *)
let NSProgressFileTotalCountKey: String
@available(iOS 7.0, *)
let NSProgressFileCompletedCountKey: String
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
  class func propertyList(plist: AnyObject, isValidForFormat format: NSPropertyListFormat) -> Bool
  @available(iOS 4.0, *)
  class func dataWithPropertyList(plist: AnyObject, format: NSPropertyListFormat, options opt: NSPropertyListWriteOptions) throws -> NSData
  @available(iOS 4.0, *)
  class func writePropertyList(plist: AnyObject, toStream stream: NSOutputStream, format: NSPropertyListFormat, options opt: NSPropertyListWriteOptions, error: NSErrorPointer) -> Int
  @available(iOS 4.0, *)
  class func propertyListWithData(data: NSData, options opt: NSPropertyListReadOptions, format: UnsafeMutablePointer<NSPropertyListFormat>) throws -> AnyObject
  @available(iOS 4.0, *)
  class func propertyListWithStream(stream: NSInputStream, options opt: NSPropertyListReadOptions, format: UnsafeMutablePointer<NSPropertyListFormat>) throws -> AnyObject
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use dataWithPropertyList:format:options:error: instead.")
  class func dataFromPropertyList(plist: AnyObject, format: NSPropertyListFormat, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> NSData?
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use propertyListWithData:options:format:error: instead.")
  class func propertyListFromData(data: NSData, mutabilityOption opt: NSPropertyListMutabilityOptions, format: UnsafeMutablePointer<NSPropertyListFormat>, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> AnyObject?
  init()
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
  class func respondsToSelector(aSelector: Selector) -> Bool
  class func description() -> String
  class func debugDescription() -> String
  func isEqual(object: AnyObject?) -> Bool
  class func isEqual(object: AnyObject?) -> Bool
  var hash: Int { get }
  var superclass: AnyClass? { get }
  func `self`() -> Self
  func performSelector(aSelector: Selector) -> Unmanaged<AnyObject>!
  class func performSelector(aSelector: Selector) -> Unmanaged<AnyObject>!
  func performSelector(aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  class func performSelector(aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  func performSelector(aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  class func performSelector(aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  func isProxy() -> Bool
  class func isProxy() -> Bool
  func isKindOfClass(aClass: AnyClass) -> Bool
  class func isKindOfClass(aClass: AnyClass) -> Bool
  func isMemberOfClass(aClass: AnyClass) -> Bool
  class func isMemberOfClass(aClass: AnyClass) -> Bool
  func conformsToProtocol(aProtocol: Protocol) -> Bool
  class func conformsToProtocol(aProtocol: Protocol) -> Bool
  func respondsToSelector(aSelector: Selector) -> Bool
}
struct _NSRange {
  var location: Int
  var length: Int
  init()
  init(location: Int, length: Int)
}

extension _NSRange {
  init(_ x: Range<Int>)
  @warn_unused_result
  func toRange() -> Range<Int>?
}

extension _NSRange : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}

extension _NSRange : _ObjectiveCBridgeable {
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
@available(iOS 4.0, *)
class NSRegularExpression : NSObject, NSCopying, NSCoding {
  init(pattern: String, options: NSRegularExpressionOptions) throws
  var pattern: String { get }
  var options: NSRegularExpressionOptions { get }
  var numberOfCaptureGroups: Int { get }
  class func escapedPatternForString(string: String) -> String
  convenience init()
  @available(iOS 4.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 4.0, *)
  func encodeWithCoder(aCoder: NSCoder)
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
  func enumerateMatchesInString(string: String, options: NSMatchingOptions, range: NSRange, usingBlock block: (NSTextCheckingResult?, NSMatchingFlags, UnsafeMutablePointer<ObjCBool>) -> Void)
  func matchesInString(string: String, options: NSMatchingOptions, range: NSRange) -> [NSTextCheckingResult]
  func numberOfMatchesInString(string: String, options: NSMatchingOptions, range: NSRange) -> Int
  func firstMatchInString(string: String, options: NSMatchingOptions, range: NSRange) -> NSTextCheckingResult?
  func rangeOfFirstMatchInString(string: String, options: NSMatchingOptions, range: NSRange) -> NSRange
}
extension NSRegularExpression {
  func stringByReplacingMatchesInString(string: String, options: NSMatchingOptions, range: NSRange, withTemplate templ: String) -> String
  func replaceMatchesInString(string: NSMutableString, options: NSMatchingOptions, range: NSRange, withTemplate templ: String) -> Int
  func replacementStringForResult(result: NSTextCheckingResult, inString string: String, offset: Int, template templ: String) -> String
  class func escapedTemplateForString(string: String) -> String
}
@available(iOS 4.0, *)
class NSDataDetector : NSRegularExpression {
  init(types checkingTypes: NSTextCheckingTypes) throws
  var checkingTypes: NSTextCheckingTypes { get }
  convenience init(pattern: String, options: NSRegularExpressionOptions) throws
  convenience init()
  init?(coder aDecoder: NSCoder)
}
let NSDefaultRunLoopMode: String
@available(iOS 2.0, *)
let NSRunLoopCommonModes: String
class NSRunLoop : NSObject {
  class func currentRunLoop() -> NSRunLoop
  @available(iOS 2.0, *)
  class func mainRunLoop() -> NSRunLoop
  var currentMode: String? { get }
  func getCFRunLoop() -> CFRunLoop
  func addTimer(timer: NSTimer, forMode mode: String)
  func addPort(aPort: NSPort, forMode mode: String)
  func removePort(aPort: NSPort, forMode mode: String)
  func limitDateForMode(mode: String) -> NSDate?
  func acceptInputForMode(mode: String, beforeDate limitDate: NSDate)
  init()
}
extension NSRunLoop {
  func run()
  func runUntilDate(limitDate: NSDate)
  func runMode(mode: String, beforeDate limitDate: NSDate) -> Bool
}

/**************** 	Delayed perform	 ******************/
extension NSObject {
  class func performSelector(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval, inModes modes: [String])
  func performSelector(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval, inModes modes: [String])
  class func performSelector(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval)
  func performSelector(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval)
  class func cancelPreviousPerformRequestsWithTarget(aTarget: AnyObject, selector aSelector: Selector, object anArgument: AnyObject?)
  class func cancelPreviousPerformRequestsWithTarget(aTarget: AnyObject)
}
extension NSRunLoop {
  func performSelector(aSelector: Selector, target: AnyObject, argument arg: AnyObject?, order: Int, modes: [String])
  func cancelPerformSelector(aSelector: Selector, target: AnyObject, argument arg: AnyObject?)
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
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSScanner {
  func scanInt(result: UnsafeMutablePointer<Int32>) -> Bool
  @available(iOS 2.0, *)
  func scanInteger(result: UnsafeMutablePointer<Int>) -> Bool
  func scanLongLong(result: UnsafeMutablePointer<Int64>) -> Bool
  @available(iOS 7.0, *)
  func scanUnsignedLongLong(result: UnsafeMutablePointer<UInt64>) -> Bool
  func scanFloat(result: UnsafeMutablePointer<Float>) -> Bool
  func scanDouble(result: UnsafeMutablePointer<Double>) -> Bool
  func scanHexInt(result: UnsafeMutablePointer<UInt32>) -> Bool
  @available(iOS 2.0, *)
  func scanHexLongLong(result: UnsafeMutablePointer<UInt64>) -> Bool
  @available(iOS 2.0, *)
  func scanHexFloat(result: UnsafeMutablePointer<Float>) -> Bool
  @available(iOS 2.0, *)
  func scanHexDouble(result: UnsafeMutablePointer<Double>) -> Bool
  func scanString(string: String, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanCharactersFromSet(set: NSCharacterSet, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToString(string: String, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToCharactersFromSet(set: NSCharacterSet, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  var atEnd: Bool { get }
  class func localizedScannerWithString(string: String) -> AnyObject
}

/****************	Immutable Set	****************/
class NSSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func member(object: AnyObject) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func containsObject(anObject: AnyObject) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func intersectsSet(otherSet: Set<NSObject>) -> Bool
  func isEqualToSet(otherSet: Set<NSObject>) -> Bool
  func isSubsetOfSet(otherSet: Set<NSObject>) -> Bool
  @available(iOS 2.0, *)
  func setByAddingObject(anObject: AnyObject) -> Set<NSObject>
  @available(iOS 2.0, *)
  func setByAddingObjectsFromSet(other: Set<NSObject>) -> Set<NSObject>
  @available(iOS 2.0, *)
  func setByAddingObjectsFromArray(other: [AnyObject]) -> Set<NSObject>
  @available(iOS 4.0, *)
  func enumerateObjectsUsingBlock(block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func objectsPassingTest(predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  @available(iOS 4.0, *)
  func objectsWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
}
extension NSSet {
  convenience init(object: AnyObject)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}

/****************	Mutable Set	****************/
class NSMutableSet : NSSet {
  func addObject(object: AnyObject)
  func removeObject(object: AnyObject)
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
  func addObjectsFromArray(array: [AnyObject])
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
  func countForObject(object: AnyObject) -> Int
  func objectEnumerator() -> NSEnumerator
  func addObject(object: AnyObject)
  func removeObject(object: AnyObject)
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
  @available(iOS 7.0, *)
  func allowEvaluation()
  @available(iOS 4.0, *)
  init(key: String?, ascending: Bool, comparator cmptr: NSComparator)
  @available(iOS 4.0, *)
  var comparator: NSComparator { get }
  func compareObject(object1: AnyObject, toObject object2: AnyObject) -> NSComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSSet {
  @available(iOS 4.0, *)
  func sortedArrayUsingDescriptors(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArrayUsingDescriptors(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableArray {
  func sortUsingDescriptors(sortDescriptors: [NSSortDescriptor])
}
extension NSOrderedSet {
  @available(iOS 5.0, *)
  func sortedArrayUsingDescriptors(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableOrderedSet {
  @available(iOS 5.0, *)
  func sortUsingDescriptors(sortDescriptors: [NSSortDescriptor])
}
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
  func scheduleInRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  var streamStatus: NSStreamStatus { get }
  @NSCopying var streamError: NSError? { get }
  init()
}
class NSInputStream : NSStream {
  func read(buffer: UnsafeMutablePointer<UInt8>, maxLength len: Int) -> Int
  func getBuffer(buffer: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, length len: UnsafeMutablePointer<Int>) -> Bool
  var hasBytesAvailable: Bool { get }
  init(data: NSData)
  @available(iOS 4.0, *)
  init?(URL url: NSURL)
  convenience init()
}
class NSOutputStream : NSStream {
  func write(buffer: UnsafePointer<UInt8>, maxLength len: Int) -> Int
  var hasSpaceAvailable: Bool { get }
  init(toMemory: ())
  init(toBuffer buffer: UnsafeMutablePointer<UInt8>, capacity: Int)
  @available(iOS 4.0, *)
  init?(URL url: NSURL, append shouldAppend: Bool)
  convenience init()
}
extension NSStream {
  @available(iOS 8.0, *)
  class func getStreamsToHostWithName(hostname: String, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<NSInputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<NSOutputStream?>)
}
extension NSStream {
  @available(iOS 8.0, *)
  class func getBoundStreamsWithBufferSize(bufferSize: Int, inputStream: AutoreleasingUnsafeMutablePointer<NSInputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<NSOutputStream?>)
}
extension NSInputStream {
  convenience init?(fileAtPath path: String)
}
extension NSOutputStream {
  convenience init?(toFileAtPath path: String, append shouldAppend: Bool)
  class func outputStreamToMemory() -> Self
}
protocol NSStreamDelegate : NSObjectProtocol {
  optional func stream(aStream: NSStream, handleEvent eventCode: NSStreamEvent)
}
@available(iOS 2.0, *)
let NSStreamSocketSecurityLevelKey: String
@available(iOS 2.0, *)
let NSStreamSocketSecurityLevelNone: String
@available(iOS 2.0, *)
let NSStreamSocketSecurityLevelSSLv2: String
@available(iOS 2.0, *)
let NSStreamSocketSecurityLevelSSLv3: String
@available(iOS 2.0, *)
let NSStreamSocketSecurityLevelTLSv1: String
@available(iOS 2.0, *)
let NSStreamSocketSecurityLevelNegotiatedSSL: String
@available(iOS 2.0, *)
let NSStreamSOCKSProxyConfigurationKey: String
@available(iOS 2.0, *)
let NSStreamSOCKSProxyHostKey: String
@available(iOS 2.0, *)
let NSStreamSOCKSProxyPortKey: String
@available(iOS 2.0, *)
let NSStreamSOCKSProxyVersionKey: String
@available(iOS 2.0, *)
let NSStreamSOCKSProxyUserKey: String
@available(iOS 2.0, *)
let NSStreamSOCKSProxyPasswordKey: String
@available(iOS 2.0, *)
let NSStreamSOCKSProxyVersion4: String
@available(iOS 2.0, *)
let NSStreamSOCKSProxyVersion5: String
@available(iOS 2.0, *)
let NSStreamDataWrittenToMemoryStreamKey: String
@available(iOS 2.0, *)
let NSStreamFileCurrentOffsetKey: String
@available(iOS 2.0, *)
let NSStreamSocketSSLErrorDomain: String
@available(iOS 2.0, *)
let NSStreamSOCKSErrorDomain: String
@available(iOS 4.0, *)
let NSStreamNetworkServiceType: String
@available(iOS 4.0, *)
let NSStreamNetworkServiceTypeVoIP: String
@available(iOS 5.0, *)
let NSStreamNetworkServiceTypeVideo: String
@available(iOS 5.0, *)
let NSStreamNetworkServiceTypeBackground: String
@available(iOS 5.0, *)
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
  @available(iOS 2.0, *)
  static var DiacriticInsensitiveSearch: NSStringCompareOptions { get }
  @available(iOS 2.0, *)
  static var WidthInsensitiveSearch: NSStringCompareOptions { get }
  @available(iOS 2.0, *)
  static var ForcedOrderingSearch: NSStringCompareOptions { get }
  @available(iOS 3.2, *)
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
  func characterAtIndex(index: Int) -> unichar
  init()
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
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
  func substringFromIndex(from: Int) -> String
  func substringToIndex(to: Int) -> String
  func substringWithRange(range: NSRange) -> String
  func getCharacters(buffer: UnsafeMutablePointer<unichar>, range: NSRange)
  func compare(string: String) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions, range compareRange: NSRange) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions, range compareRange: NSRange, locale: AnyObject?) -> NSComparisonResult
  func caseInsensitiveCompare(string: String) -> NSComparisonResult
  func localizedCompare(string: String) -> NSComparisonResult
  func localizedCaseInsensitiveCompare(string: String) -> NSComparisonResult
  @available(iOS 4.0, *)
  func localizedStandardCompare(string: String) -> NSComparisonResult
  func isEqualToString(aString: String) -> Bool
  func hasPrefix(str: String) -> Bool
  func hasSuffix(str: String) -> Bool
  func commonPrefixWithString(str: String, options mask: NSStringCompareOptions) -> String
  @available(iOS 8.0, *)
  func containsString(str: String) -> Bool
  @available(iOS 8.0, *)
  func localizedCaseInsensitiveContainsString(str: String) -> Bool
  @available(iOS 9.0, *)
  func localizedStandardContainsString(str: String) -> Bool
  @available(iOS 9.0, *)
  func localizedStandardRangeOfString(str: String) -> NSRange
  func rangeOfString(searchString: String) -> NSRange
  func rangeOfString(searchString: String, options mask: NSStringCompareOptions) -> NSRange
  func rangeOfString(searchString: String, options mask: NSStringCompareOptions, range searchRange: NSRange) -> NSRange
  @available(iOS 2.0, *)
  func rangeOfString(searchString: String, options mask: NSStringCompareOptions, range searchRange: NSRange, locale: NSLocale?) -> NSRange
  func rangeOfCharacterFromSet(searchSet: NSCharacterSet) -> NSRange
  func rangeOfCharacterFromSet(searchSet: NSCharacterSet, options mask: NSStringCompareOptions) -> NSRange
  func rangeOfCharacterFromSet(searchSet: NSCharacterSet, options mask: NSStringCompareOptions, range searchRange: NSRange) -> NSRange
  func rangeOfComposedCharacterSequenceAtIndex(index: Int) -> NSRange
  @available(iOS 2.0, *)
  func rangeOfComposedCharacterSequencesForRange(range: NSRange) -> NSRange
  func stringByAppendingString(aString: String) -> String
  var doubleValue: Double { get }
  var floatValue: Float { get }
  var intValue: Int32 { get }
  @available(iOS 2.0, *)
  var integerValue: Int { get }
  @available(iOS 2.0, *)
  var longLongValue: Int64 { get }
  @available(iOS 2.0, *)
  var boolValue: Bool { get }
  var uppercaseString: String { get }
  var lowercaseString: String { get }
  var capitalizedString: String { get }
  @available(iOS 9.0, *)
  var localizedUppercaseString: String { get }
  @available(iOS 9.0, *)
  var localizedLowercaseString: String { get }
  @available(iOS 9.0, *)
  var localizedCapitalizedString: String { get }
  @available(iOS 6.0, *)
  func uppercaseStringWithLocale(locale: NSLocale?) -> String
  @available(iOS 6.0, *)
  func lowercaseStringWithLocale(locale: NSLocale?) -> String
  @available(iOS 6.0, *)
  func capitalizedStringWithLocale(locale: NSLocale?) -> String
  func getLineStart(startPtr: UnsafeMutablePointer<Int>, end lineEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func lineRangeForRange(range: NSRange) -> NSRange
  func getParagraphStart(startPtr: UnsafeMutablePointer<Int>, end parEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func paragraphRangeForRange(range: NSRange) -> NSRange
  @available(iOS 4.0, *)
  func enumerateSubstringsInRange(range: NSRange, options opts: NSStringEnumerationOptions, usingBlock block: (String?, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateLinesUsingBlock(block: (String, UnsafeMutablePointer<ObjCBool>) -> Void)
  var UTF8String: UnsafePointer<Int8> { get }
  var fastestEncoding: UInt { get }
  var smallestEncoding: UInt { get }
  func dataUsingEncoding(encoding: UInt, allowLossyConversion lossy: Bool) -> NSData?
  func dataUsingEncoding(encoding: UInt) -> NSData?
  func canBeConvertedToEncoding(encoding: UInt) -> Bool
  func cStringUsingEncoding(encoding: UInt) -> UnsafePointer<Int8>
  func getCString(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferCount: Int, encoding: UInt) -> Bool
  func getBytes(buffer: UnsafeMutablePointer<Void>, maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>, encoding: UInt, options: NSStringEncodingConversionOptions, range: NSRange, remainingRange leftover: NSRangePointer) -> Bool
  func maximumLengthOfBytesUsingEncoding(enc: UInt) -> Int
  func lengthOfBytesUsingEncoding(enc: UInt) -> Int
  class func availableStringEncodings() -> UnsafePointer<UInt>
  class func localizedNameOfStringEncoding(encoding: UInt) -> String
  class func defaultCStringEncoding() -> UInt
  var decomposedStringWithCanonicalMapping: String { get }
  var precomposedStringWithCanonicalMapping: String { get }
  var decomposedStringWithCompatibilityMapping: String { get }
  var precomposedStringWithCompatibilityMapping: String { get }
  func componentsSeparatedByString(separator: String) -> [String]
  @available(iOS 2.0, *)
  func componentsSeparatedByCharactersInSet(separator: NSCharacterSet) -> [String]
  func stringByTrimmingCharactersInSet(set: NSCharacterSet) -> String
  func stringByPaddingToLength(newLength: Int, withString padString: String, startingAtIndex padIndex: Int) -> String
  @available(iOS 2.0, *)
  func stringByFoldingWithOptions(options: NSStringCompareOptions, locale: NSLocale?) -> String
  @available(iOS 2.0, *)
  func stringByReplacingOccurrencesOfString(target: String, withString replacement: String, options: NSStringCompareOptions, range searchRange: NSRange) -> String
  @available(iOS 2.0, *)
  func stringByReplacingOccurrencesOfString(target: String, withString replacement: String) -> String
  @available(iOS 2.0, *)
  func stringByReplacingCharactersInRange(range: NSRange, withString replacement: String) -> String
  @available(iOS 9.0, *)
  func stringByApplyingTransform(transform: String, reverse: Bool) -> String?
  func writeToURL(url: NSURL, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  var description: String { get }
  var hash: Int { get }
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
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
@available(iOS 9.0, *)
let NSStringTransformLatinToKatakana: String
@available(iOS 9.0, *)
let NSStringTransformLatinToHiragana: String
@available(iOS 9.0, *)
let NSStringTransformLatinToHangul: String
@available(iOS 9.0, *)
let NSStringTransformLatinToArabic: String
@available(iOS 9.0, *)
let NSStringTransformLatinToHebrew: String
@available(iOS 9.0, *)
let NSStringTransformLatinToThai: String
@available(iOS 9.0, *)
let NSStringTransformLatinToCyrillic: String
@available(iOS 9.0, *)
let NSStringTransformLatinToGreek: String
@available(iOS 9.0, *)
let NSStringTransformToLatin: String
@available(iOS 9.0, *)
let NSStringTransformMandarinToLatin: String
@available(iOS 9.0, *)
let NSStringTransformHiraganaToKatakana: String
@available(iOS 9.0, *)
let NSStringTransformFullwidthToHalfwidth: String
@available(iOS 9.0, *)
let NSStringTransformToXMLHex: String
@available(iOS 9.0, *)
let NSStringTransformToUnicodeName: String
@available(iOS 9.0, *)
let NSStringTransformStripCombiningMarks: String
@available(iOS 9.0, *)
let NSStringTransformStripDiacritics: String
extension NSString {
  @available(iOS 8.0, *)
  class func stringEncodingForData(data: NSData, encodingOptions opts: [String : AnyObject]?, convertedString string: AutoreleasingUnsafeMutablePointer<NSString?>, usedLossyConversion: UnsafeMutablePointer<ObjCBool>) -> UInt
}
@available(iOS 8.0, *)
let NSStringEncodingDetectionSuggestedEncodingsKey: String
@available(iOS 8.0, *)
let NSStringEncodingDetectionDisallowedEncodingsKey: String
@available(iOS 8.0, *)
let NSStringEncodingDetectionUseOnlySuggestedEncodingsKey: String
@available(iOS 8.0, *)
let NSStringEncodingDetectionAllowLossyKey: String
@available(iOS 8.0, *)
let NSStringEncodingDetectionFromWindowsKey: String
@available(iOS 8.0, *)
let NSStringEncodingDetectionLossySubstitutionKey: String
@available(iOS 8.0, *)
let NSStringEncodingDetectionLikelyLanguageKey: String
class NSMutableString : NSString {
  func replaceCharactersInRange(range: NSRange, withString aString: String)
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}

extension NSMutableString {
  func appendFormat(format: NSString, _ args: CVarArgType...)
}
extension NSMutableString {
  func insertString(aString: String, atIndex loc: Int)
  func deleteCharactersInRange(range: NSRange)
  func appendString(aString: String)
  func setString(aString: String)
  func replaceOccurrencesOfString(target: String, withString replacement: String, options: NSStringCompareOptions, range searchRange: NSRange) -> Int
  @available(iOS 9.0, *)
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
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
class NSConstantString : NSSimpleCString {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
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
  @available(iOS 4.0, *)
  static var RegularExpression: NSTextCheckingType { get }
  @available(iOS 4.0, *)
  static var PhoneNumber: NSTextCheckingType { get }
  @available(iOS 4.0, *)
  static var TransitInformation: NSTextCheckingType { get }
}
typealias NSTextCheckingTypes = UInt64
var NSTextCheckingAllSystemTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllCustomTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllTypes: NSTextCheckingTypes { get }
@available(iOS 4.0, *)
class NSTextCheckingResult : NSObject, NSCopying, NSCoding {
  var resultType: NSTextCheckingType { get }
  var range: NSRange { get }
  init()
  @available(iOS 4.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 4.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSTextCheckingResult {
  @NSCopying var orthography: NSOrthography? { get }
  var grammarDetails: [String]? { get }
  @NSCopying var date: NSDate? { get }
  @NSCopying var timeZone: NSTimeZone? { get }
  var duration: NSTimeInterval { get }
  @available(iOS 4.0, *)
  var components: [String : String]? { get }
  @NSCopying var URL: NSURL? { get }
  var replacementString: String? { get }
  @available(iOS 7.0, *)
  var alternativeStrings: [String]? { get }
  @available(iOS 4.0, *)
  @NSCopying var regularExpression: NSRegularExpression? { get }
  @available(iOS 4.0, *)
  var phoneNumber: String? { get }
  var addressComponents: [String : String]? { get }
  @available(iOS 4.0, *)
  var numberOfRanges: Int { get }
  @available(iOS 4.0, *)
  func rangeAtIndex(idx: Int) -> NSRange
  @available(iOS 5.0, *)
  func resultByAdjustingRangesWithOffset(offset: Int) -> NSTextCheckingResult
}
@available(iOS 4.0, *)
let NSTextCheckingNameKey: String
@available(iOS 4.0, *)
let NSTextCheckingJobTitleKey: String
@available(iOS 4.0, *)
let NSTextCheckingOrganizationKey: String
@available(iOS 4.0, *)
let NSTextCheckingStreetKey: String
@available(iOS 4.0, *)
let NSTextCheckingCityKey: String
@available(iOS 4.0, *)
let NSTextCheckingStateKey: String
@available(iOS 4.0, *)
let NSTextCheckingZIPKey: String
@available(iOS 4.0, *)
let NSTextCheckingCountryKey: String
@available(iOS 4.0, *)
let NSTextCheckingPhoneKey: String
@available(iOS 4.0, *)
let NSTextCheckingAirlineKey: String
@available(iOS 4.0, *)
let NSTextCheckingFlightKey: String
extension NSTextCheckingResult {
  class func orthographyCheckingResultWithRange(range: NSRange, orthography: NSOrthography) -> NSTextCheckingResult
  class func spellCheckingResultWithRange(range: NSRange) -> NSTextCheckingResult
  class func grammarCheckingResultWithRange(range: NSRange, details: [String]) -> NSTextCheckingResult
  class func dateCheckingResultWithRange(range: NSRange, date: NSDate) -> NSTextCheckingResult
  class func dateCheckingResultWithRange(range: NSRange, date: NSDate, timeZone: NSTimeZone, duration: NSTimeInterval) -> NSTextCheckingResult
  class func addressCheckingResultWithRange(range: NSRange, components: [String : String]) -> NSTextCheckingResult
  class func linkCheckingResultWithRange(range: NSRange, URL url: NSURL) -> NSTextCheckingResult
  class func quoteCheckingResultWithRange(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func dashCheckingResultWithRange(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func replacementCheckingResultWithRange(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func correctionCheckingResultWithRange(range: NSRange, replacementString: String) -> NSTextCheckingResult
  @available(iOS 7.0, *)
  class func correctionCheckingResultWithRange(range: NSRange, replacementString: String, alternativeStrings: [String]) -> NSTextCheckingResult
  @available(iOS 4.0, *)
  class func regularExpressionCheckingResultWithRanges(ranges: NSRangePointer, count: Int, regularExpression: NSRegularExpression) -> NSTextCheckingResult
  @available(iOS 4.0, *)
  class func phoneNumberCheckingResultWithRange(range: NSRange, phoneNumber: String) -> NSTextCheckingResult
  @available(iOS 4.0, *)
  class func transitInformationCheckingResultWithRange(range: NSRange, components: [String : String]) -> NSTextCheckingResult
}
class NSThread : NSObject {
  class func currentThread() -> NSThread
  class func detachNewThreadSelector(selector: Selector, toTarget target: AnyObject, withObject argument: AnyObject?)
  class func isMultiThreaded() -> Bool
  var threadDictionary: NSMutableDictionary { get }
  class func sleepUntilDate(date: NSDate)
  class func sleepForTimeInterval(ti: NSTimeInterval)
  class func exit()
  class func threadPriority() -> Double
  class func setThreadPriority(p: Double) -> Bool
  @available(iOS 4.0, *)
  var threadPriority: Double
  @available(iOS 8.0, *)
  var qualityOfService: NSQualityOfService
  @available(iOS 2.0, *)
  class func callStackReturnAddresses() -> [NSNumber]
  @available(iOS 4.0, *)
  class func callStackSymbols() -> [String]
  @available(iOS 2.0, *)
  var name: String?
  @available(iOS 2.0, *)
  var stackSize: Int
  @available(iOS 2.0, *)
  var isMainThread: Bool { get }
  @available(iOS 2.0, *)
  class func isMainThread() -> Bool
  @available(iOS 2.0, *)
  class func mainThread() -> NSThread
  @available(iOS 2.0, *)
  init()
  @available(iOS 2.0, *)
  convenience init(target: AnyObject, selector: Selector, object argument: AnyObject?)
  @available(iOS 2.0, *)
  var executing: Bool { get }
  @available(iOS 2.0, *)
  var finished: Bool { get }
  @available(iOS 2.0, *)
  var cancelled: Bool { get }
  @available(iOS 2.0, *)
  func cancel()
  @available(iOS 2.0, *)
  func start()
  @available(iOS 2.0, *)
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
  @available(iOS 2.0, *)
  class func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(iOS 2.0, *)
  func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(iOS 2.0, *)
  class func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(iOS 2.0, *)
  func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(iOS 2.0, *)
  class func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
  @available(iOS 2.0, *)
  func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
}
class NSTimeZone : NSObject, NSCopying, NSSecureCoding {
  var name: String { get }
  @NSCopying var data: NSData { get }
  func secondsFromGMTForDate(aDate: NSDate) -> Int
  func abbreviationForDate(aDate: NSDate) -> String?
  func isDaylightSavingTimeForDate(aDate: NSDate) -> Bool
  @available(iOS 2.0, *)
  func daylightSavingTimeOffsetForDate(aDate: NSDate) -> NSTimeInterval
  @available(iOS 2.0, *)
  func nextDaylightSavingTimeTransitionAfterDate(aDate: NSDate) -> NSDate?
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSTimeZone {
  class func systemTimeZone() -> NSTimeZone
  class func resetSystemTimeZone()
  class func defaultTimeZone() -> NSTimeZone
  class func setDefaultTimeZone(aTimeZone: NSTimeZone)
  class func localTimeZone() -> NSTimeZone
  class func knownTimeZoneNames() -> [String]
  class func abbreviationDictionary() -> [String : String]
  @available(iOS 4.0, *)
  class func setAbbreviationDictionary(dict: [String : String])
  @available(iOS 4.0, *)
  class func timeZoneDataVersion() -> String
  var secondsFromGMT: Int { get }
  var abbreviation: String? { get }
  var daylightSavingTime: Bool { get }
  @available(iOS 2.0, *)
  var daylightSavingTimeOffset: NSTimeInterval { get }
  @available(iOS 2.0, *)
  @NSCopying var nextDaylightSavingTimeTransition: NSDate? { get }
  var description: String { get }
  func isEqualToTimeZone(aTimeZone: NSTimeZone) -> Bool
  @available(iOS 2.0, *)
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
@available(iOS 2.0, *)
let NSSystemTimeZoneDidChangeNotification: String
class NSTimer : NSObject {
  /*not inherited*/ init(timeInterval ti: NSTimeInterval, invocation: NSInvocation, repeats yesOrNo: Bool)
  class func scheduledTimerWithTimeInterval(ti: NSTimeInterval, invocation: NSInvocation, repeats yesOrNo: Bool) -> NSTimer
  /*not inherited*/ init(timeInterval ti: NSTimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo: AnyObject?, repeats yesOrNo: Bool)
  class func scheduledTimerWithTimeInterval(ti: NSTimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo: AnyObject?, repeats yesOrNo: Bool) -> NSTimer
  init(fireDate date: NSDate, interval ti: NSTimeInterval, target t: AnyObject, selector s: Selector, userInfo ui: AnyObject?, repeats rep: Bool)
  func fire()
  @NSCopying var fireDate: NSDate
  var timeInterval: NSTimeInterval { get }
  @available(iOS 7.0, *)
  var tolerance: NSTimeInterval
  func invalidate()
  var valid: Bool { get }
  var userInfo: AnyObject? { get }
  convenience init()
}
class NSURL : NSObject, NSSecureCoding, NSCopying {
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme: String, host: String?, path: String)
  @available(iOS 9.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?)
  @available(iOS 9.0, *)
  init(fileURLWithPath path: String, relativeToURL baseURL: NSURL?)
  @available(iOS 2.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(iOS 9.0, *)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?) -> NSURL
  @available(iOS 9.0, *)
  class func fileURLWithPath(path: String, relativeToURL baseURL: NSURL?) -> NSURL
  @available(iOS 2.0, *)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool) -> NSURL
  class func fileURLWithPath(path: String) -> NSURL
  @available(iOS 7.0, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?)
  @available(iOS 7.0, *)
  class func fileURLWithFileSystemRepresentation(path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?) -> NSURL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeToURL baseURL: NSURL?)
  @available(iOS 9.0, *)
  init(dataRepresentation data: NSData, relativeToURL baseURL: NSURL?)
  @available(iOS 9.0, *)
  init(absoluteURLWithDataRepresentation data: NSData, relativeToURL baseURL: NSURL?)
  @available(iOS 9.0, *)
  class func absoluteURLWithDataRepresentation(data: NSData, relativeToURL baseURL: NSURL?) -> NSURL
  @available(iOS 9.0, *)
  @NSCopying var dataRepresentation: NSData { get }
  var absoluteString: String { get }
  var relativeString: String? { get }
  @NSCopying var baseURL: NSURL? { get }
  @NSCopying var absoluteURL: NSURL { get }
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
  @available(iOS 9.0, *)
  var hasDirectoryPath: Bool { get }
  @available(iOS 7.0, *)
  func getFileSystemRepresentation(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferLength: Int) -> Bool
  @available(iOS 7.0, *)
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  var fileURL: Bool { get }
  @NSCopying var standardizedURL: NSURL? { get }
  @available(iOS 4.0, *)
  func checkResourceIsReachableAndReturnError(error: NSErrorPointer) -> Bool
  @available(iOS 4.0, *)
  func isFileReferenceURL() -> Bool
  @available(iOS 4.0, *)
  func fileReferenceURL() -> NSURL?
  @available(iOS 4.0, *)
  @NSCopying var filePathURL: NSURL? { get }
  @available(iOS 4.0, *)
  func getResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(iOS 4.0, *)
  func resourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  @available(iOS 4.0, *)
  func setResourceValue(value: AnyObject?, forKey key: String) throws
  @available(iOS 4.0, *)
  func setResourceValues(keyedValues: [String : AnyObject]) throws
  @available(iOS 7.0, *)
  func removeCachedResourceValueForKey(key: String)
  @available(iOS 7.0, *)
  func removeAllCachedResourceValues()
  @available(iOS 7.0, *)
  func setTemporaryResourceValue(value: AnyObject?, forKey key: String)
  @available(iOS 4.0, *)
  func bookmarkDataWithOptions(options: NSURLBookmarkCreationOptions, includingResourceValuesForKeys keys: [String]?, relativeToURL relativeURL: NSURL?) throws -> NSData
  @available(iOS 4.0, *)
  convenience init(byResolvingBookmarkData bookmarkData: NSData, options: NSURLBookmarkResolutionOptions, relativeToURL relativeURL: NSURL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>) throws
  @available(iOS 4.0, *)
  class func resourceValuesForKeys(keys: [String], fromBookmarkData bookmarkData: NSData) -> [String : AnyObject]?
  @available(iOS 4.0, *)
  class func writeBookmarkData(bookmarkData: NSData, toURL bookmarkFileURL: NSURL, options: NSURLBookmarkFileCreationOptions) throws
  @available(iOS 4.0, *)
  class func bookmarkDataWithContentsOfURL(bookmarkFileURL: NSURL) throws -> NSData
  @available(iOS 8.0, *)
  convenience init(byResolvingAliasFileAtURL url: NSURL, options: NSURLBookmarkResolutionOptions) throws
  @available(iOS 8.0, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(iOS 8.0, *)
  func stopAccessingSecurityScopedResource()
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
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
@available(iOS 5.0, *)
let NSURLKeysOfUnsetValuesKey: String
@available(iOS 4.0, *)
let NSURLNameKey: String
@available(iOS 4.0, *)
let NSURLLocalizedNameKey: String
@available(iOS 4.0, *)
let NSURLIsRegularFileKey: String
@available(iOS 4.0, *)
let NSURLIsDirectoryKey: String
@available(iOS 4.0, *)
let NSURLIsSymbolicLinkKey: String
@available(iOS 4.0, *)
let NSURLIsVolumeKey: String
@available(iOS 4.0, *)
let NSURLIsPackageKey: String
@available(iOS 9.0, *)
let NSURLIsApplicationKey: String
@available(iOS 4.0, *)
let NSURLIsSystemImmutableKey: String
@available(iOS 4.0, *)
let NSURLIsUserImmutableKey: String
@available(iOS 4.0, *)
let NSURLIsHiddenKey: String
@available(iOS 4.0, *)
let NSURLHasHiddenExtensionKey: String
@available(iOS 4.0, *)
let NSURLCreationDateKey: String
@available(iOS 4.0, *)
let NSURLContentAccessDateKey: String
@available(iOS 4.0, *)
let NSURLContentModificationDateKey: String
@available(iOS 4.0, *)
let NSURLAttributeModificationDateKey: String
@available(iOS 4.0, *)
let NSURLLinkCountKey: String
@available(iOS 4.0, *)
let NSURLParentDirectoryURLKey: String
@available(iOS 4.0, *)
let NSURLVolumeURLKey: String
@available(iOS 4.0, *)
let NSURLTypeIdentifierKey: String
@available(iOS 4.0, *)
let NSURLLocalizedTypeDescriptionKey: String
@available(iOS 4.0, *)
let NSURLLabelNumberKey: String
@available(iOS 4.0, *)
let NSURLLabelColorKey: String
@available(iOS 4.0, *)
let NSURLLocalizedLabelKey: String
@available(iOS 4.0, *)
let NSURLEffectiveIconKey: String
@available(iOS 4.0, *)
let NSURLCustomIconKey: String
@available(iOS 5.0, *)
let NSURLFileResourceIdentifierKey: String
@available(iOS 5.0, *)
let NSURLVolumeIdentifierKey: String
@available(iOS 5.0, *)
let NSURLPreferredIOBlockSizeKey: String
@available(iOS 5.0, *)
let NSURLIsReadableKey: String
@available(iOS 5.0, *)
let NSURLIsWritableKey: String
@available(iOS 5.0, *)
let NSURLIsExecutableKey: String
@available(iOS 5.0, *)
let NSURLFileSecurityKey: String
@available(iOS 5.1, *)
let NSURLIsExcludedFromBackupKey: String
@available(iOS 6.0, *)
let NSURLPathKey: String
@available(iOS 5.0, *)
let NSURLIsMountTriggerKey: String
@available(iOS 8.0, *)
let NSURLGenerationIdentifierKey: String
@available(iOS 8.0, *)
let NSURLDocumentIdentifierKey: String
@available(iOS 8.0, *)
let NSURLAddedToDirectoryDateKey: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeKey: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeNamedPipe: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeCharacterSpecial: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeDirectory: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeBlockSpecial: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeRegular: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeSymbolicLink: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeSocket: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeUnknown: String
@available(iOS 8.0, *)
let NSURLThumbnailDictionaryKey: String
@available(iOS 8.0, *)
let NSThumbnail1024x1024SizeKey: String
@available(iOS 4.0, *)
let NSURLFileSizeKey: String
@available(iOS 4.0, *)
let NSURLFileAllocatedSizeKey: String
@available(iOS 5.0, *)
let NSURLTotalFileSizeKey: String
@available(iOS 5.0, *)
let NSURLTotalFileAllocatedSizeKey: String
@available(iOS 4.0, *)
let NSURLIsAliasFileKey: String
@available(iOS 9.0, *)
let NSURLFileProtectionKey: String
@available(iOS 9.0, *)
let NSURLFileProtectionNone: String
@available(iOS 9.0, *)
let NSURLFileProtectionComplete: String
@available(iOS 9.0, *)
let NSURLFileProtectionCompleteUnlessOpen: String
@available(iOS 9.0, *)
let NSURLFileProtectionCompleteUntilFirstUserAuthentication: String
@available(iOS 4.0, *)
let NSURLVolumeLocalizedFormatDescriptionKey: String
@available(iOS 4.0, *)
let NSURLVolumeTotalCapacityKey: String
@available(iOS 4.0, *)
let NSURLVolumeAvailableCapacityKey: String
@available(iOS 4.0, *)
let NSURLVolumeResourceCountKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsPersistentIDsKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsSymbolicLinksKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsHardLinksKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsJournalingKey: String
@available(iOS 4.0, *)
let NSURLVolumeIsJournalingKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsSparseFilesKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsZeroRunsKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsCaseSensitiveNamesKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsCasePreservedNamesKey: String
@available(iOS 5.0, *)
let NSURLVolumeSupportsRootDirectoryDatesKey: String
@available(iOS 5.0, *)
let NSURLVolumeSupportsVolumeSizesKey: String
@available(iOS 5.0, *)
let NSURLVolumeSupportsRenamingKey: String
@available(iOS 5.0, *)
let NSURLVolumeSupportsAdvisoryFileLockingKey: String
@available(iOS 5.0, *)
let NSURLVolumeSupportsExtendedSecurityKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsBrowsableKey: String
@available(iOS 5.0, *)
let NSURLVolumeMaximumFileSizeKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsEjectableKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsRemovableKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsInternalKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsAutomountedKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsLocalKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsReadOnlyKey: String
@available(iOS 5.0, *)
let NSURLVolumeCreationDateKey: String
@available(iOS 5.0, *)
let NSURLVolumeURLForRemountingKey: String
@available(iOS 5.0, *)
let NSURLVolumeUUIDStringKey: String
@available(iOS 5.0, *)
let NSURLVolumeNameKey: String
@available(iOS 5.0, *)
let NSURLVolumeLocalizedNameKey: String
@available(iOS 5.0, *)
let NSURLIsUbiquitousItemKey: String
@available(iOS 5.0, *)
let NSURLUbiquitousItemHasUnresolvedConflictsKey: String
@available(iOS 5.0, *)
let NSURLUbiquitousItemIsDownloadingKey: String
@available(iOS 5.0, *)
let NSURLUbiquitousItemIsUploadedKey: String
@available(iOS 5.0, *)
let NSURLUbiquitousItemIsUploadingKey: String
@available(iOS 7.0, *)
let NSURLUbiquitousItemDownloadingStatusKey: String
@available(iOS 7.0, *)
let NSURLUbiquitousItemDownloadingErrorKey: String
@available(iOS 7.0, *)
let NSURLUbiquitousItemUploadingErrorKey: String
@available(iOS 8.0, *)
let NSURLUbiquitousItemDownloadRequestedKey: String
@available(iOS 8.0, *)
let NSURLUbiquitousItemContainerDisplayNameKey: String
@available(iOS 7.0, *)
let NSURLUbiquitousItemDownloadingStatusNotDownloaded: String
@available(iOS 7.0, *)
let NSURLUbiquitousItemDownloadingStatusDownloaded: String
@available(iOS 7.0, *)
let NSURLUbiquitousItemDownloadingStatusCurrent: String
@available(iOS 4.0, *)
struct NSURLBookmarkCreationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MinimalBookmark: NSURLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: NSURLBookmarkCreationOptions { get }
}
@available(iOS 4.0, *)
struct NSURLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutUI: NSURLBookmarkResolutionOptions { get }
  static var WithoutMounting: NSURLBookmarkResolutionOptions { get }
}
typealias NSURLBookmarkFileCreationOptions = Int
extension NSURL {
  @available(iOS 8.0, *)
  func getPromisedItemResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(iOS 8.0, *)
  func promisedItemResourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  @available(iOS 8.0, *)
  func checkPromisedItemIsReachableAndReturnError(error: NSErrorPointer) -> Bool
}
@available(iOS 8.0, *)
class NSURLQueryItem : NSObject, NSSecureCoding, NSCopying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
  convenience init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 7.0, *)
class NSURLComponents : NSObject, NSCopying {
  init()
  init?(URL url: NSURL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  @NSCopying var URL: NSURL? { get }
  func URLRelativeToURL(baseURL: NSURL?) -> NSURL?
  @available(iOS 8.0, *)
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
  @available(iOS 9.0, *)
  var rangeOfScheme: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfUser: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfPassword: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfHost: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfPort: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfPath: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfQuery: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfFragment: NSRange { get }
  @available(iOS 8.0, *)
  var queryItems: [NSURLQueryItem]?
  @available(iOS 7.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSCharacterSet {
  @available(iOS 7.0, *)
  class func URLUserAllowedCharacterSet() -> NSCharacterSet
  @available(iOS 7.0, *)
  class func URLPasswordAllowedCharacterSet() -> NSCharacterSet
  @available(iOS 7.0, *)
  class func URLHostAllowedCharacterSet() -> NSCharacterSet
  @available(iOS 7.0, *)
  class func URLPathAllowedCharacterSet() -> NSCharacterSet
  @available(iOS 7.0, *)
  class func URLQueryAllowedCharacterSet() -> NSCharacterSet
  @available(iOS 7.0, *)
  class func URLFragmentAllowedCharacterSet() -> NSCharacterSet
}
extension NSString {
  @available(iOS 7.0, *)
  func stringByAddingPercentEncodingWithAllowedCharacters(allowedCharacters: NSCharacterSet) -> String?
  @available(iOS 7.0, *)
  var stringByRemovingPercentEncoding: String? { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func stringByAddingPercentEscapesUsingEncoding(enc: UInt) -> String?
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func stringByReplacingPercentEscapesUsingEncoding(enc: UInt) -> String?
}
extension NSURL {
  @available(iOS 4.0, *)
  class func fileURLWithPathComponents(components: [String]) -> NSURL?
  @available(iOS 4.0, *)
  var pathComponents: [String]? { get }
  @available(iOS 4.0, *)
  var lastPathComponent: String? { get }
  @available(iOS 4.0, *)
  var pathExtension: String? { get }
  @available(iOS 4.0, *)
  func URLByAppendingPathComponent(pathComponent: String) -> NSURL
  @available(iOS 5.0, *)
  func URLByAppendingPathComponent(pathComponent: String, isDirectory: Bool) -> NSURL
  @available(iOS 4.0, *)
  @NSCopying var URLByDeletingLastPathComponent: NSURL? { get }
  @available(iOS 4.0, *)
  func URLByAppendingPathExtension(pathExtension: String) -> NSURL
  @available(iOS 4.0, *)
  @NSCopying var URLByDeletingPathExtension: NSURL? { get }
  @available(iOS 4.0, *)
  @NSCopying var URLByStandardizingPath: NSURL? { get }
  @available(iOS 4.0, *)
  @NSCopying var URLByResolvingSymlinksInPath: NSURL? { get }
}
@available(iOS 5.0, *)
class NSFileSecurity : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 5.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 5.0, *)
  func encodeWithCoder(aCoder: NSCoder)
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
  func useCredential(credential: NSURLCredential, forAuthenticationChallenge challenge: NSURLAuthenticationChallenge)

  /*!
      @method continueWithoutCredentialForAuthenticationChallenge:
  */
  func continueWithoutCredentialForAuthenticationChallenge(challenge: NSURLAuthenticationChallenge)

  /*!
      @method cancelAuthenticationChallenge:
  */
  func cancelAuthenticationChallenge(challenge: NSURLAuthenticationChallenge)

  /*!
   @method performDefaultHandlingForAuthenticationChallenge:
   */
  optional func performDefaultHandlingForAuthenticationChallenge(challenge: NSURLAuthenticationChallenge)

  /*!
   @method rejectProtectionSpaceAndContinueWithChallenge:
   */
  optional func rejectProtectionSpaceAndContinueWithChallenge(challenge: NSURLAuthenticationChallenge)
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
  func encodeWithCoder(aCoder: NSCoder)
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
  init(response: NSURLResponse, data: NSData, userInfo: [NSObject : AnyObject]?, storagePolicy: NSURLCacheStoragePolicy)

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
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
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
  class func sharedURLCache() -> NSURLCache

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
  func cachedResponseForRequest(request: NSURLRequest) -> NSCachedURLResponse?

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
  func removeCachedResponseForRequest(request: NSURLRequest)

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
  @available(iOS 8.0, *)
  func removeCachedResponsesSinceDate(date: NSDate)

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
  @available(iOS 8.0, *)
  func storeCachedResponse(cachedResponse: NSCachedURLResponse, forDataTask dataTask: NSURLSessionDataTask)
  @available(iOS 8.0, *)
  func getCachedResponseForDataTask(dataTask: NSURLSessionDataTask, completionHandler: (NSCachedURLResponse?) -> Void)
  @available(iOS 8.0, *)
  func removeCachedResponseForDataTask(dataTask: NSURLSessionDataTask)
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
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: NSURLRequest, delegate: AnyObject?, startImmediately: Bool)
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: NSURLRequest, delegate: AnyObject?)
  @available(iOS 5.0, *)
  @NSCopying var originalRequest: NSURLRequest { get }
  @available(iOS 5.0, *)
  @NSCopying var currentRequest: NSURLRequest { get }
  @available(iOS 2.0, *)
  func start()
  func cancel()
  @available(iOS 2.0, *)
  func scheduleInRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  @available(iOS 2.0, *)
  func unscheduleFromRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  @available(iOS 5.0, *)
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
  class func canHandleRequest(request: NSURLRequest) -> Bool
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
  optional func connection(connection: NSURLConnection, willSendRequestForAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: NSURLProtectionSpace) -> Bool
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
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
  optional func connection(connection: NSURLConnection, willSendRequest request: NSURLRequest, redirectResponse response: NSURLResponse?) -> NSURLRequest?
  optional func connection(connection: NSURLConnection, didReceiveResponse response: NSURLResponse)
  optional func connection(connection: NSURLConnection, didReceiveData data: NSData)
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
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendSynchronousRequest(request: NSURLRequest, returningResponse response: AutoreleasingUnsafeMutablePointer<NSURLResponse?>) throws -> NSData
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
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
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
  @available(iOS 6.0, *)
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
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
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
  @available(iOS 3.0, *)
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
  @available(iOS 3.0, *)
  var certificates: [AnyObject] { get }
}
extension NSURLCredential {

  /*!
      @method initWithTrust:
      @abstract Initialize a new NSURLCredential which specifies that the specified trust has been accepted.
      @result the Initialized NSURLCredential
   */
  @available(iOS 3.0, *)
  init(trust: SecTrust)

  /*!
      @method credentialForTrust:
      @abstract Create a new NSURLCredential which specifies that a handshake has been trusted.
      @result The new autoreleased NSURLCredential
   */
  @available(iOS 3.0, *)
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
  class func sharedCredentialStorage() -> NSURLCredentialStorage

  /*!
      @method credentialsForProtectionSpace:
      @abstract Get a dictionary mapping usernames to credentials for the specified protection space.
      @param protectionSpace An NSURLProtectionSpace indicating the protection space for which to get credentials
      @result A dictionary where the keys are usernames and the values are the corresponding NSURLCredentials.
  */
  func credentialsForProtectionSpace(space: NSURLProtectionSpace) -> [String : NSURLCredential]?

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
  func removeCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)

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
  @available(iOS 7.0, *)
  func removeCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace, options: [String : AnyObject]?)

  /*!
      @method defaultCredentialForProtectionSpace:
      @abstract Get the default credential for the specified protection space.
      @param space The protection space for which to get the default credential.
  */
  func defaultCredentialForProtectionSpace(space: NSURLProtectionSpace) -> NSURLCredential?

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
  @available(iOS 8.0, *)
  func getCredentialsForProtectionSpace(protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: ([String : NSURLCredential]?) -> Void)
  @available(iOS 8.0, *)
  func setCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask)
  @available(iOS 8.0, *)
  func removeCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, options: [String : AnyObject]?, task: NSURLSessionTask)
  @available(iOS 8.0, *)
  func getDefaultCredentialForProtectionSpace(space: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: (NSURLCredential?) -> Void)
  @available(iOS 8.0, *)
  func setDefaultCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask)
}

/*!
    @const NSURLCredentialStorageChangedNotification
    @abstract This notification is sent on the main thread whenever
    the set of stored credentials changes.
*/
let NSURLCredentialStorageChangedNotification: String
@available(iOS 7.0, *)
let NSURLCredentialStorageRemoveSynchronizableCredentials: String
let NSURLErrorDomain: String

/*!
    @const NSURLErrorFailingURLErrorKey
    @abstract The NSError userInfo dictionary key used to store and retrieve the URL which caused a load to fail.
*/
@available(iOS 4.0, *)
let NSURLErrorFailingURLErrorKey: String

/*!
    @const NSURLErrorFailingURLStringErrorKey
    @abstract The NSError userInfo dictionary key used to store and retrieve the NSString object for the URL which caused a load to fail.
    @discussion This constant supersedes NSErrorFailingURLStringKey, which was deprecated in Mac OS X 10.6.  Both constants refer to the same value for backward-compatibility, but this symbol name has a better prefix.
*/
@available(iOS 4.0, *)
let NSURLErrorFailingURLStringErrorKey: String

/*!
    @const NSURLErrorFailingURLPeerTrustErrorKey
    @abstract The NSError userInfo dictionary key used to store and retrieve the SecTrustRef object representing the state of a failed SSL handshake.
 */
@available(iOS 4.0, *)
let NSURLErrorFailingURLPeerTrustErrorKey: String

/*!
    @const NSURLErrorBackgroundTaskCancelledReasonKey
    @abstract The NSError userInfo dictionary key used to store and retrieve the NSNumber corresponding to the reason why a background
	NSURLSessionTask was cancelled
 */
@available(iOS 8.0, *)
let NSURLErrorBackgroundTaskCancelledReasonKey: String
var NSURLErrorCancelledReasonUserForceQuitApplication: Int { get }
var NSURLErrorCancelledReasonBackgroundUpdatesDisabled: Int { get }
@available(iOS 8.0, *)
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
@available(iOS 9.0, *)
var NSURLErrorAppTransportSecurityRequiresSecureConnection: Int { get }
var NSURLErrorFileDoesNotExist: Int { get }
var NSURLErrorFileIsDirectory: Int { get }
var NSURLErrorNoPermissionsToReadFile: Int { get }
@available(iOS 2.0, *)
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
@available(iOS 3.0, *)
var NSURLErrorInternationalRoamingOff: Int { get }
@available(iOS 3.0, *)
var NSURLErrorCallIsActive: Int { get }
@available(iOS 3.0, *)
var NSURLErrorDataNotAllowed: Int { get }
@available(iOS 3.0, *)
var NSURLErrorRequestBodyStreamExhausted: Int { get }
@available(iOS 8.0, *)
var NSURLErrorBackgroundSessionRequiresSharedContainer: Int { get }
@available(iOS 8.0, *)
var NSURLErrorBackgroundSessionInUseByAnotherProcess: Int { get }
@available(iOS 8.0, *)
var NSURLErrorBackgroundSessionWasDisconnected: Int { get }

/*!
   @const NSURLProtectionSpaceHTTP
   @abstract The protocol for HTTP
*/
@available(iOS 2.0, *)
let NSURLProtectionSpaceHTTP: String

/*!
   @const NSURLProtectionSpaceHTTPS
   @abstract The protocol for HTTPS
*/
@available(iOS 2.0, *)
let NSURLProtectionSpaceHTTPS: String

/*!
   @const NSURLProtectionSpaceFTP
   @abstract The protocol for FTP
*/
@available(iOS 2.0, *)
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
@available(iOS 2.0, *)
let NSURLAuthenticationMethodNTLM: String

/*!
   @const NSURLAuthenticationMethodNegotiate
   @abstract Negotiate authentication.
*/
@available(iOS 2.0, *)
let NSURLAuthenticationMethodNegotiate: String

/*!
    @const NSURLAuthenticationMethodClientCertificate
    @abstract SSL Client certificate.  Applies to any protocol.
 */
@available(iOS 3.0, *)
let NSURLAuthenticationMethodClientCertificate: String

/*!
    @const NSURLAuthenticationMethodServerTrust
    @abstract SecTrustRef validation required.  Applies to any protocol.
 */
@available(iOS 3.0, *)
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
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
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
  @available(iOS 3.0, *)
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
  @available(iOS 3.0, *)
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
  func URLProtocol(protocol: NSURLProtocol, wasRedirectedToRequest request: NSURLRequest, redirectResponse: NSURLResponse)

  /*!
  @method URLProtocol:cachedResponseIsValid:
       @abstract Indicates to an NSURLProtocolClient that the protocol
       implementation has examined a cached response and has
       determined that it is valid.
       @param URLProtocol the NSURLProtocol object sending the message.
       @param cachedResponse the NSCachedURLResponse object that has
       examined and is valid.
       */
  func URLProtocol(protocol: NSURLProtocol, cachedResponseIsValid cachedResponse: NSCachedURLResponse)

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
  func URLProtocol(protocol: NSURLProtocol, didReceiveResponse response: NSURLResponse, cacheStoragePolicy policy: NSURLCacheStoragePolicy)

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
  func URLProtocol(protocol: NSURLProtocol, didLoadData data: NSData)

  /*!
  @method URLProtocolDidFinishLoading:
       @abstract Indicates to an NSURLProtocolClient that the protocol
       implementation has finished loading successfully.
       @param URLProtocol the NSURLProtocol object sending the message.
       */
  func URLProtocolDidFinishLoading(protocol: NSURLProtocol)

  /*!
              @method URLProtocol:didFailWithError:
   @abstract Indicates to an NSURLProtocolClient that the protocol
   implementation has failed to load successfully.
   @param URLProtocol the NSURLProtocol object sending the message.
   @param error The error that caused the load to fail.
   */
  func URLProtocol(protocol: NSURLProtocol, didFailWithError error: NSError)

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
  func URLProtocol(protocol: NSURLProtocol, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge)

  /*!
  @method URLProtocol:didCancelAuthenticationChallenge:
       @abstract Cancel authentication for the specified request
       @param protocol The protocol object cancelling authentication.
       @param challenge The authentication challenge.
       */
  func URLProtocol(protocol: NSURLProtocol, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
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
  class func canInitWithRequest(request: NSURLRequest) -> Bool

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
  class func canonicalRequestForRequest(request: NSURLRequest) -> NSURLRequest

  /*!
      @method requestIsCacheEquivalent:toRequest:
      @abstract Compares two requests for equivalence with regard to caching.
      @discussion Requests are considered euqivalent for cache purposes
      if and only if they would be handled by the same protocol AND that
      protocol declares them equivalent after performing 
      implementation-specific checks.
      @result YES if the two requests are cache-equivalent, NO otherwise.
  */
  class func requestIsCacheEquivalent(a: NSURLRequest, toRequest b: NSURLRequest) -> Bool

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
  class func propertyForKey(key: String, inRequest request: NSURLRequest) -> AnyObject?

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
  class func setProperty(value: AnyObject, forKey key: String, inRequest request: NSMutableURLRequest)

  /*!
      @method removePropertyForKey:inRequest:
      @abstract Remove any property stored under the given key
      @discussion Like setProperty:forKey:inRequest: above, the purpose of this
          method is to give protocol implementors the ability to store 
          protocol-specific information in an NSURLRequest
      @param key The key whose value should be removed
      @param request The request to be modified
  */
  class func removePropertyForKey(key: String, inRequest request: NSMutableURLRequest)

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
  @available(iOS 8.0, *)
  class func canInitWithTask(task: NSURLSessionTask) -> Bool
  @available(iOS 8.0, *)
  convenience init(task: NSURLSessionTask, cachedResponse: NSCachedURLResponse?, client: NSURLProtocolClient?)
  @available(iOS 8.0, *)
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
  convenience init(URL: NSURL)

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
  init(URL: NSURL, cachePolicy: NSURLRequestCachePolicy, timeoutInterval: NSTimeInterval)

  /*! 
      @method URL
      @abstract Returns the URL of the receiver. 
      @result The URL of the receiver. 
  */
  @NSCopying var URL: NSURL? { get }

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
  @available(iOS 4.0, *)
  var networkServiceType: NSURLRequestNetworkServiceType { get }

  /*! 
   @method allowsCellularAccess:
   @abstract returns whether a connection created with this request is allowed to use
   the built in cellular radios (if present).
   @result YES if the receiver is allowed to use the built in cellular radios to
   satify the request, NO otherwise.
   */
  @available(iOS 6.0, *)
  var allowsCellularAccess: Bool { get }
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
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
  @NSCopying var URL: NSURL?

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
  @available(iOS 4.0, *)
  var networkServiceType: NSURLRequestNetworkServiceType

  /*! 
   @method setAllowsCellularAccess
   @abstract sets whether a connection created with this request is allowed to use
   the built in cellular radios (if present).
   @param allow NO if the receiver should not be allowed to use the built in
   cellular radios to satisfy the request, YES otherwise.  The default is YES.
   */
  @available(iOS 6.0, *)
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
  convenience init(URL: NSURL)

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
  init(URL: NSURL, cachePolicy: NSURLRequestCachePolicy, timeoutInterval: NSTimeInterval)
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
  var HTTPMethod: String? { get }

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
  @NSCopying var HTTPBody: NSData? { get }

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
  var HTTPBodyStream: NSInputStream? { get }

  /*! 
      @method HTTPShouldHandleCookies
      @abstract Determine whether default cookie handling will happen for 
      this request.
      @discussion NOTE: This value is not used prior to 10.3
      @result YES if cookies will be sent with and set for this request; 
      otherwise NO.
  */
  var HTTPShouldHandleCookies: Bool { get }

  /*!
   @method HTTPShouldUsePipelining
   @abstract Reports whether the receiver is not expected to wait for the
   previous response before transmitting.
   @result YES if the receiver should transmit before the previous response
   is received.  NO if the receiver should wait for the previous response
   before transmitting.
   */
  @available(iOS 4.0, *)
  var HTTPShouldUsePipelining: Bool { get }
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
  var HTTPMethod: String

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
  @NSCopying var HTTPBody: NSData?

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
  var HTTPBodyStream: NSInputStream?

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
  var HTTPShouldHandleCookies: Bool

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
  @available(iOS 4.0, *)
  var HTTPShouldUsePipelining: Bool
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
  init(URL: NSURL, MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)

  /*! 
      @method URL
      @abstract Returns the URL of the receiver. 
      @result The URL of the receiver. 
  */
  @NSCopying var URL: NSURL? { get }

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
  var MIMEType: String? { get }

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
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
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
  @available(iOS 5.0, *)
  init?(URL url: NSURL, statusCode: Int, HTTPVersion: String?, headerFields: [String : String]?)

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
  init(URL: NSURL, MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 6.0, *)
class NSUUID : NSObject, NSCopying, NSSecureCoding {
  init()
  convenience init?(UUIDString string: String)
  convenience init(UUIDBytes bytes: UnsafePointer<UInt8>)
  func getUUIDBytes(uuid: UnsafeMutablePointer<UInt8>)
  var UUIDString: String { get }
  @available(iOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 6.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 5.0, *)
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
@available(iOS 5.0, *)
let NSUbiquitousKeyValueStoreDidChangeExternallyNotification: String
@available(iOS 5.0, *)
let NSUbiquitousKeyValueStoreChangeReasonKey: String
@available(iOS 5.0, *)
let NSUbiquitousKeyValueStoreChangedKeysKey: String
@available(iOS 5.0, *)
var NSUbiquitousKeyValueStoreServerChange: Int { get }
@available(iOS 5.0, *)
var NSUbiquitousKeyValueStoreInitialSyncChange: Int { get }
@available(iOS 5.0, *)
var NSUbiquitousKeyValueStoreQuotaViolationChange: Int { get }
@available(iOS 6.0, *)
var NSUbiquitousKeyValueStoreAccountChange: Int { get }
let NSUndoCloseGroupingRunLoopOrdering: Int
@available(iOS 3.0, *)
class NSUndoManager : NSObject {
  func beginUndoGrouping()
  func endUndoGrouping()
  var groupingLevel: Int { get }
  func disableUndoRegistration()
  func enableUndoRegistration()
  var undoRegistrationEnabled: Bool { get }
  var groupsByEvent: Bool
  var levelsOfUndo: Int
  var runLoopModes: [String]
  func undo()
  func redo()
  func undoNestedGroup()
  var canUndo: Bool { get }
  var canRedo: Bool { get }
  var undoing: Bool { get }
  var redoing: Bool { get }
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
  @available(iOS 9.0, *)
  func __registerUndoWithTarget(target: AnyObject, handler undoHandler: (AnyObject) -> Void)
  @available(iOS 5.0, *)
  func setActionIsDiscardable(discardable: Bool)
  @available(iOS 5.0, *)
  var undoActionIsDiscardable: Bool { get }
  @available(iOS 5.0, *)
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
@available(iOS 5.0, *)
let NSUndoManagerGroupIsDiscardableKey: String
@available(iOS 3.0, *)
let NSUndoManagerCheckpointNotification: String
@available(iOS 3.0, *)
let NSUndoManagerWillUndoChangeNotification: String
@available(iOS 3.0, *)
let NSUndoManagerWillRedoChangeNotification: String
@available(iOS 3.0, *)
let NSUndoManagerDidUndoChangeNotification: String
@available(iOS 3.0, *)
let NSUndoManagerDidRedoChangeNotification: String
@available(iOS 3.0, *)
let NSUndoManagerDidOpenUndoGroupNotification: String
@available(iOS 3.0, *)
let NSUndoManagerWillCloseUndoGroupNotification: String
@available(iOS 5.0, *)
let NSUndoManagerDidCloseUndoGroupNotification: String
@available(iOS 8.0, *)
class NSUserActivity : NSObject {
  init(activityType: String)
  init()
  var activityType: String { get }
  var title: String?
  var userInfo: [NSObject : AnyObject]?
  func addUserInfoEntriesFromDictionary(otherDictionary: [NSObject : AnyObject])
  @available(iOS 9.0, *)
  var requiredUserInfoKeys: Set<String>
  var needsSave: Bool
  @NSCopying var webpageURL: NSURL?
  @available(iOS 9.0, *)
  @NSCopying var expirationDate: NSDate
  @available(iOS 9.0, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak NSUserActivityDelegate?
  func becomeCurrent()
  @available(iOS 9.0, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreamsWithCompletionHandler(completionHandler: (NSInputStream?, NSOutputStream?, NSError?) -> Void)
  @available(iOS 9.0, *)
  var eligibleForHandoff: Bool
  @available(iOS 9.0, *)
  var eligibleForSearch: Bool
  @available(iOS 9.0, *)
  var eligibleForPublicIndexing: Bool
}
@available(iOS 8.0, *)
let NSUserActivityTypeBrowsingWeb: String
@available(iOS 8.0, *)
protocol NSUserActivityDelegate : NSObjectProtocol {
  optional func userActivityWillSave(userActivity: NSUserActivity)
  optional func userActivityWasContinued(userActivity: NSUserActivity)
  optional func userActivity(userActivity: NSUserActivity?, didReceiveInputStream inputStream: NSInputStream, outputStream: NSOutputStream)
}
let NSGlobalDomain: String
let NSArgumentDomain: String
let NSRegistrationDomain: String
class NSUserDefaults : NSObject {
  class func standardUserDefaults() -> NSUserDefaults
  class func resetStandardUserDefaults()
  convenience init()
  @available(iOS 7.0, *)
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
  @available(iOS 4.0, *)
  func URLForKey(defaultName: String) -> NSURL?
  func setInteger(value: Int, forKey defaultName: String)
  func setFloat(value: Float, forKey defaultName: String)
  func setDouble(value: Double, forKey defaultName: String)
  func setBool(value: Bool, forKey defaultName: String)
  @available(iOS 4.0, *)
  func setURL(url: NSURL?, forKey defaultName: String)
  func registerDefaults(registrationDictionary: [String : AnyObject])
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
class NSValue : NSObject, NSCopying, NSSecureCoding {
  func getValue(value: UnsafeMutablePointer<Void>)
  var objCType: UnsafePointer<Int8> { get }
  init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  init?(coder aDecoder: NSCoder)
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSValue {
  /*not inherited*/ init(_ value: UnsafePointer<Void>, withObjCType type: UnsafePointer<Int8>)
}
extension NSValue {
  /*not inherited*/ init(nonretainedObject anObject: AnyObject?)
  var nonretainedObjectValue: AnyObject? { get }
  /*not inherited*/ init(pointer: UnsafePointer<Void>)
  var pointerValue: UnsafeMutablePointer<Void> { get }
  func isEqualToValue(value: NSValue) -> Bool
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
  @available(iOS 2.0, *)
  init(integer value: Int)
  @available(iOS 2.0, *)
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
  @available(iOS 2.0, *)
  var integerValue: Int { get }
  @available(iOS 2.0, *)
  var unsignedIntegerValue: UInt { get }
  var stringValue: String { get }
  func compare(otherNumber: NSNumber) -> NSComparisonResult
  func isEqualToNumber(number: NSNumber) -> Bool
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
@available(iOS 3.0, *)
let NSNegateBooleanTransformerName: String
@available(iOS 3.0, *)
let NSIsNilTransformerName: String
@available(iOS 3.0, *)
let NSIsNotNilTransformerName: String
@available(iOS 3.0, *)
let NSUnarchiveFromDataTransformerName: String
@available(iOS 3.0, *)
let NSKeyedUnarchiveFromDataTransformerName: String
@available(iOS 3.0, *)
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
@available(iOS 8.0, *)
enum NSXMLParserExternalEntityResolvingPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ResolveExternalEntitiesNever
  case ResolveExternalEntitiesNoNetwork
  case ResolveExternalEntitiesSameOriginOnly
  case ResolveExternalEntitiesAlways
}
class NSXMLParser : NSObject {
  convenience init?(contentsOfURL url: NSURL)
  init(data: NSData)
  @available(iOS 5.0, *)
  convenience init(stream: NSInputStream)
  unowned(unsafe) var delegate: @sil_unmanaged NSXMLParserDelegate?
  var shouldProcessNamespaces: Bool
  var shouldReportNamespacePrefixes: Bool
  @available(iOS 8.0, *)
  var externalEntityResolvingPolicy: NSXMLParserExternalEntityResolvingPolicy
  @available(iOS 8.0, *)
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
  optional func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String])
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
@available(iOS 2.0, *)
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
func NSPageSize() -> Int
func NSLogPageSize() -> Int
func NSRoundUpToMultipleOfPageSize(bytes: Int) -> Int
func NSRoundDownToMultipleOfPageSize(bytes: Int) -> Int
func NSAllocateMemoryPages(bytes: Int) -> UnsafeMutablePointer<Void>
func NSDeallocateMemoryPages(ptr: UnsafeMutablePointer<Void>, _ bytes: Int)
func NSCopyMemoryPages(source: UnsafePointer<Void>, _ dest: UnsafeMutablePointer<Void>, _ bytes: Int)
