
typealias unichar = UInt16
struct NSStringCompareOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var caseInsensitiveSearch: NSStringCompareOptions { get }
  static var literalSearch: NSStringCompareOptions { get }
  static var backwardsSearch: NSStringCompareOptions { get }
  static var anchoredSearch: NSStringCompareOptions { get }
  static var numericSearch: NSStringCompareOptions { get }
  @available(OSX 10.5, *)
  static var diacriticInsensitiveSearch: NSStringCompareOptions { get }
  @available(OSX 10.5, *)
  static var widthInsensitiveSearch: NSStringCompareOptions { get }
  @available(OSX 10.5, *)
  static var forcedOrderingSearch: NSStringCompareOptions { get }
  @available(OSX 10.7, *)
  static var regularExpressionSearch: NSStringCompareOptions { get }
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
  static var allowLossy: NSStringEncodingConversionOptions { get }
  static var externalRepresentation: NSStringEncodingConversionOptions { get }
}
class NSString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  func character(at index: Int) -> unichar
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
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
  func substring(from from: Int) -> String
  func substring(to to: Int) -> String
  func substring(with range: NSRange) -> String
  func getCharacters(_ buffer: UnsafeMutablePointer<unichar>, range range: NSRange)
  func compare(_ string: String) -> NSComparisonResult
  func compare(_ string: String, options mask: NSStringCompareOptions = []) -> NSComparisonResult
  func compare(_ string: String, options mask: NSStringCompareOptions = [], range compareRange: NSRange) -> NSComparisonResult
  func compare(_ string: String, options mask: NSStringCompareOptions = [], range compareRange: NSRange, locale locale: AnyObject?) -> NSComparisonResult
  func caseInsensitiveCompare(_ string: String) -> NSComparisonResult
  func localizedCompare(_ string: String) -> NSComparisonResult
  func localizedCaseInsensitiveCompare(_ string: String) -> NSComparisonResult
  @available(OSX 10.6, *)
  func localizedStandardCompare(_ string: String) -> NSComparisonResult
  func isEqual(to aString: String) -> Bool
  func hasPrefix(_ str: String) -> Bool
  func hasSuffix(_ str: String) -> Bool
  func commonPrefix(with str: String, options mask: NSStringCompareOptions = []) -> String
  @available(OSX 10.10, *)
  func contains(_ str: String) -> Bool
  @available(OSX 10.10, *)
  func localizedCaseInsensitiveContains(_ str: String) -> Bool
  @available(OSX 10.11, *)
  func localizedStandardContains(_ str: String) -> Bool
  @available(OSX 10.11, *)
  func localizedStandardRange(of str: String) -> NSRange
  func range(of searchString: String) -> NSRange
  func range(of searchString: String, options mask: NSStringCompareOptions = []) -> NSRange
  func range(of searchString: String, options mask: NSStringCompareOptions = [], range searchRange: NSRange) -> NSRange
  @available(OSX 10.5, *)
  func range(of searchString: String, options mask: NSStringCompareOptions = [], range searchRange: NSRange, locale locale: NSLocale?) -> NSRange
  func rangeOfCharacter(from searchSet: NSCharacterSet) -> NSRange
  func rangeOfCharacter(from searchSet: NSCharacterSet, options mask: NSStringCompareOptions = []) -> NSRange
  func rangeOfCharacter(from searchSet: NSCharacterSet, options mask: NSStringCompareOptions = [], range searchRange: NSRange) -> NSRange
  func rangeOfComposedCharacterSequence(at index: Int) -> NSRange
  @available(OSX 10.5, *)
  func rangeOfComposedCharacterSequences(for range: NSRange) -> NSRange
  func appending(_ aString: String) -> String
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
  func uppercaseString(with locale: NSLocale?) -> String
  @available(OSX 10.8, *)
  func lowercaseString(with locale: NSLocale?) -> String
  @available(OSX 10.8, *)
  func capitalizedString(with locale: NSLocale?) -> String
  func getLineStart(_ startPtr: UnsafeMutablePointer<Int>, end lineEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, for range: NSRange)
  func lineRange(for range: NSRange) -> NSRange
  func getParagraphStart(_ startPtr: UnsafeMutablePointer<Int>, end parEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, for range: NSRange)
  func paragraphRange(for range: NSRange) -> NSRange
  @available(OSX 10.6, *)
  func enumerateSubstrings(in range: NSRange, options opts: NSStringEnumerationOptions = [], using block: (String?, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateLines(_ block: (String, UnsafeMutablePointer<ObjCBool>) -> Void)
  var utf8String: UnsafePointer<Int8> { get }
  var fastestEncoding: UInt { get }
  var smallestEncoding: UInt { get }
  func data(usingEncoding encoding: UInt, allowLossyConversion lossy: Bool) -> NSData?
  func data(usingEncoding encoding: UInt) -> NSData?
  func canBeConverted(toEncoding encoding: UInt) -> Bool
  func cString(usingEncoding encoding: UInt) -> UnsafePointer<Int8>
  func getCString(_ buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferCount: Int, encoding encoding: UInt) -> Bool
  func getBytes(_ buffer: UnsafeMutablePointer<Void>, maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>, encoding encoding: UInt, options options: NSStringEncodingConversionOptions = [], range range: NSRange, remaining leftover: NSRangePointer) -> Bool
  func maximumLengthOfBytes(usingEncoding enc: UInt) -> Int
  func lengthOfBytes(usingEncoding enc: UInt) -> Int
  class func availableStringEncodings() -> UnsafePointer<UInt>
  class func localizedName(ofStringEncoding encoding: UInt) -> String
  class func defaultCStringEncoding() -> UInt
  var decomposedStringWithCanonicalMapping: String { get }
  var precomposedStringWithCanonicalMapping: String { get }
  var decomposedStringWithCompatibilityMapping: String { get }
  var precomposedStringWithCompatibilityMapping: String { get }
  func componentsSeparated(by separator: String) -> [String]
  @available(OSX 10.5, *)
  func componentsSeparatedByCharacters(in separator: NSCharacterSet) -> [String]
  func trimmingCharacters(in set: NSCharacterSet) -> String
  func padding(toLength newLength: Int, with padString: String, startingAt padIndex: Int) -> String
  @available(OSX 10.5, *)
  func folding(_ options: NSStringCompareOptions = [], locale locale: NSLocale?) -> String
  @available(OSX 10.5, *)
  func replacingOccurrences(of target: String, with replacement: String, options options: NSStringCompareOptions = [], range searchRange: NSRange) -> String
  @available(OSX 10.5, *)
  func replacingOccurrences(of target: String, with replacement: String) -> String
  @available(OSX 10.5, *)
  func replacingCharacters(in range: NSRange, with replacement: String) -> String
  @available(OSX 10.11, *)
  func applyingTransform(_ transform: String, reverse reverse: Bool) -> String?
  func write(to url: NSURL, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  func write(toFile path: String, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters characters: UnsafePointer<unichar>, length length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format format: String, arguments argList: CVaListPointer)
  convenience init(format format: String, locale locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data data: NSData, encoding encoding: UInt)
  convenience init?(bytes bytes: UnsafePointer<Void>, length len: Int, encoding encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding encoding: UInt)
  convenience init(contentsOf url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
struct NSStringEnumerationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var byLines: NSStringEnumerationOptions { get }
  static var byParagraphs: NSStringEnumerationOptions { get }
  static var byComposedCharacterSequences: NSStringEnumerationOptions { get }
  static var byWords: NSStringEnumerationOptions { get }
  static var bySentences: NSStringEnumerationOptions { get }
  static var reverse: NSStringEnumerationOptions { get }
  static var substringNotRequired: NSStringEnumerationOptions { get }
  static var localized: NSStringEnumerationOptions { get }
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
  class func stringEncoding(for data: NSData, encodingOptions opts: [String : AnyObject]? = [:], convertedString string: AutoreleasingUnsafeMutablePointer<NSString?>, usedLossyConversion usedLossyConversion: UnsafeMutablePointer<ObjCBool>) -> UInt
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
  func replaceCharacters(in range: NSRange, with aString: String)
}

extension NSMutableString {
  func appendFormat(_ format: NSString, _ args: CVarArgType...)
}
extension NSMutableString {
  func insert(_ aString: String, at loc: Int)
  func deleteCharacters(in range: NSRange)
  func append(_ aString: String)
  func setString(_ aString: String)
  func replaceOccurrences(of target: String, with replacement: String, options options: NSStringCompareOptions = [], range searchRange: NSRange) -> Int
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
