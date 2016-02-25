
typealias unichar = UInt16
struct NSStringCompareOptions : OptionSetType {
  init(rawValue rawValue: UInt)
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
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var AllowLossy: NSStringEncodingConversionOptions { get }
  static var ExternalRepresentation: NSStringEncodingConversionOptions { get }
}
class NSString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  func characterAtIndex(_ index: Int) -> unichar
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
}

extension NSString : StringLiteralConvertible {
}

extension NSString {
  convenience init(format format: NSString, _ args: CVarArgType...)
  convenience init(format format: NSString, locale locale: NSLocale?, _ args: CVarArgType...)
  @warn_unused_result
  class func localizedStringWithFormat(_ format: NSString, _ args: CVarArgType...) -> Self
  @warn_unused_result
  func stringByAppendingFormat(_ format: NSString, _ args: CVarArgType...) -> NSString
}

extension NSString {
  @objc(_swiftInitWithString_NSString:) convenience init(string aString: NSString)
}

extension NSString : CustomPlaygroundQuickLookable {
}
extension NSString {
  func substringFromIndex(_ from: Int) -> String
  func substringToIndex(_ to: Int) -> String
  func substringWithRange(_ range: NSRange) -> String
  func getCharacters(_ buffer: UnsafeMutablePointer<unichar>, range range: NSRange)
  func compare(_ string: String) -> NSComparisonResult
  func compare(_ string: String, options mask: NSStringCompareOptions) -> NSComparisonResult
  func compare(_ string: String, options mask: NSStringCompareOptions, range compareRange: NSRange) -> NSComparisonResult
  func compare(_ string: String, options mask: NSStringCompareOptions, range compareRange: NSRange, locale locale: AnyObject?) -> NSComparisonResult
  func caseInsensitiveCompare(_ string: String) -> NSComparisonResult
  func localizedCompare(_ string: String) -> NSComparisonResult
  func localizedCaseInsensitiveCompare(_ string: String) -> NSComparisonResult
  @available(OSX 10.6, *)
  func localizedStandardCompare(_ string: String) -> NSComparisonResult
  func isEqualToString(_ aString: String) -> Bool
  func hasPrefix(_ str: String) -> Bool
  func hasSuffix(_ str: String) -> Bool
  func commonPrefixWithString(_ str: String, options mask: NSStringCompareOptions) -> String
  @available(OSX 10.10, *)
  func containsString(_ str: String) -> Bool
  @available(OSX 10.10, *)
  func localizedCaseInsensitiveContainsString(_ str: String) -> Bool
  @available(OSX 10.11, *)
  func localizedStandardContainsString(_ str: String) -> Bool
  @available(OSX 10.11, *)
  func localizedStandardRangeOfString(_ str: String) -> NSRange
  func rangeOfString(_ searchString: String) -> NSRange
  func rangeOfString(_ searchString: String, options mask: NSStringCompareOptions) -> NSRange
  func rangeOfString(_ searchString: String, options mask: NSStringCompareOptions, range searchRange: NSRange) -> NSRange
  @available(OSX 10.5, *)
  func rangeOfString(_ searchString: String, options mask: NSStringCompareOptions, range searchRange: NSRange, locale locale: NSLocale?) -> NSRange
  func rangeOfCharacterFromSet(_ searchSet: NSCharacterSet) -> NSRange
  func rangeOfCharacterFromSet(_ searchSet: NSCharacterSet, options mask: NSStringCompareOptions) -> NSRange
  func rangeOfCharacterFromSet(_ searchSet: NSCharacterSet, options mask: NSStringCompareOptions, range searchRange: NSRange) -> NSRange
  func rangeOfComposedCharacterSequenceAtIndex(_ index: Int) -> NSRange
  @available(OSX 10.5, *)
  func rangeOfComposedCharacterSequencesForRange(_ range: NSRange) -> NSRange
  func stringByAppendingString(_ aString: String) -> String
  var doubleValue: Double { get }
  var floatValue: Float { get }
  var intValue: Int32 { get }
  @available(OSX 10.5, *)
  var integerValue: Int { get }
  @available(OSX 10.5, *)
  var longLongValue: Int64 { get }
  @available(OSX 10.5, *)
  var boolValue: Bool { get }
  var uppercaseString: String { get }
  var lowercaseString: String { get }
  var capitalizedString: String { get }
  @available(OSX 10.11, *)
  var localizedUppercaseString: String { get }
  @available(OSX 10.11, *)
  var localizedLowercaseString: String { get }
  @available(OSX 10.11, *)
  var localizedCapitalizedString: String { get }
  @available(OSX 10.8, *)
  func uppercaseStringWithLocale(_ locale: NSLocale?) -> String
  @available(OSX 10.8, *)
  func lowercaseStringWithLocale(_ locale: NSLocale?) -> String
  @available(OSX 10.8, *)
  func capitalizedStringWithLocale(_ locale: NSLocale?) -> String
  func getLineStart(_ startPtr: UnsafeMutablePointer<Int>, end lineEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func lineRangeForRange(_ range: NSRange) -> NSRange
  func getParagraphStart(_ startPtr: UnsafeMutablePointer<Int>, end parEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func paragraphRangeForRange(_ range: NSRange) -> NSRange
  @available(OSX 10.6, *)
  func enumerateSubstringsInRange(_ range: NSRange, options opts: NSStringEnumerationOptions, usingBlock block: (String?, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateLinesUsingBlock(_ block: (String, UnsafeMutablePointer<ObjCBool>) -> Void)
  var UTF8String: UnsafePointer<Int8> { get }
  var fastestEncoding: UInt { get }
  var smallestEncoding: UInt { get }
  func dataUsingEncoding(_ encoding: UInt, allowLossyConversion lossy: Bool) -> NSData?
  func dataUsingEncoding(_ encoding: UInt) -> NSData?
  func canBeConvertedToEncoding(_ encoding: UInt) -> Bool
  func cStringUsingEncoding(_ encoding: UInt) -> UnsafePointer<Int8>
  func getCString(_ buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferCount: Int, encoding encoding: UInt) -> Bool
  func getBytes(_ buffer: UnsafeMutablePointer<Void>, maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>, encoding encoding: UInt, options options: NSStringEncodingConversionOptions, range range: NSRange, remainingRange leftover: NSRangePointer) -> Bool
  func maximumLengthOfBytesUsingEncoding(_ enc: UInt) -> Int
  func lengthOfBytesUsingEncoding(_ enc: UInt) -> Int
  class func availableStringEncodings() -> UnsafePointer<UInt>
  class func localizedNameOfStringEncoding(_ encoding: UInt) -> String
  class func defaultCStringEncoding() -> UInt
  var decomposedStringWithCanonicalMapping: String { get }
  var precomposedStringWithCanonicalMapping: String { get }
  var decomposedStringWithCompatibilityMapping: String { get }
  var precomposedStringWithCompatibilityMapping: String { get }
  func componentsSeparatedByString(_ separator: String) -> [String]
  @available(OSX 10.5, *)
  func componentsSeparatedByCharactersInSet(_ separator: NSCharacterSet) -> [String]
  func stringByTrimmingCharactersInSet(_ set: NSCharacterSet) -> String
  func stringByPaddingToLength(_ newLength: Int, withString padString: String, startingAtIndex padIndex: Int) -> String
  @available(OSX 10.5, *)
  func stringByFoldingWithOptions(_ options: NSStringCompareOptions, locale locale: NSLocale?) -> String
  @available(OSX 10.5, *)
  func stringByReplacingOccurrencesOfString(_ target: String, withString replacement: String, options options: NSStringCompareOptions, range searchRange: NSRange) -> String
  @available(OSX 10.5, *)
  func stringByReplacingOccurrencesOfString(_ target: String, withString replacement: String) -> String
  @available(OSX 10.5, *)
  func stringByReplacingCharactersInRange(_ range: NSRange, withString replacement: String) -> String
  @available(OSX 10.11, *)
  func stringByApplyingTransform(_ transform: String, reverse reverse: Bool) -> String?
  func writeToURL(_ url: NSURL, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  func writeToFile(_ path: String, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters characters: UnsafePointer<unichar>, length length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format format: String, arguments argList: CVaListPointer)
  convenience init(format format: String, locale locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data data: NSData, encoding encoding: UInt)
  convenience init?(bytes bytes: UnsafePointer<Void>, length len: Int, encoding encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
struct NSStringEnumerationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
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
  class func stringEncodingForData(_ data: NSData, encodingOptions opts: [String : AnyObject]?, convertedString string: AutoreleasingUnsafeMutablePointer<NSString?>, usedLossyConversion usedLossyConversion: UnsafeMutablePointer<ObjCBool>) -> UInt
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
  func replaceCharactersInRange(_ range: NSRange, withString aString: String)
}

extension NSMutableString {
  func appendFormat(_ format: NSString, _ args: CVarArgType...)
}
extension NSMutableString {
  func insertString(_ aString: String, atIndex loc: Int)
  func deleteCharactersInRange(_ range: NSRange)
  func appendString(_ aString: String)
  func setString(_ aString: String)
  func replaceOccurrencesOfString(_ target: String, withString replacement: String, options options: NSStringCompareOptions, range searchRange: NSRange) -> Int
  @available(OSX 10.11, *)
  func applyTransform(_ transform: String, reverse reverse: Bool, range range: NSRange, updatedRange resultingRange: NSRangePointer) -> Bool
  init(capacity capacity: Int)
}
let NSCharacterConversionException: String
let NSParseErrorException: String
extension NSString {
  func propertyList() -> AnyObject
  func propertyListFromStringsFileFormat() -> [NSObject : AnyObject]?
}
extension NSString {
  func getCharacters(_ buffer: UnsafeMutablePointer<unichar>)
}
var NSProprietaryStringEncoding: UInt { get }
class NSSimpleCString : NSString {
}
class NSConstantString : NSSimpleCString {
}
