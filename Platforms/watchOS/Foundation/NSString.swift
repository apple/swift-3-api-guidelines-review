
typealias unichar = UInt16
struct StringCompareOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var caseInsensitiveSearch: StringCompareOptions { get }
  static var literalSearch: StringCompareOptions { get }
  static var backwardsSearch: StringCompareOptions { get }
  static var anchoredSearch: StringCompareOptions { get }
  static var numericSearch: StringCompareOptions { get }
  @available(watchOS 2.0, *)
  static var diacriticInsensitiveSearch: StringCompareOptions { get }
  @available(watchOS 2.0, *)
  static var widthInsensitiveSearch: StringCompareOptions { get }
  @available(watchOS 2.0, *)
  static var forcedOrderingSearch: StringCompareOptions { get }
  @available(watchOS 2.0, *)
  static var regularExpressionSearch: StringCompareOptions { get }
}
var asciiStringEncoding: UInt { get }
var nextstepStringEncoding: UInt { get }
var japaneseEUCStringEncoding: UInt { get }
var utf8StringEncoding: UInt { get }
var isoLatin1StringEncoding: UInt { get }
var symbolStringEncoding: UInt { get }
var nonLossyASCIIStringEncoding: UInt { get }
var shiftJISStringEncoding: UInt { get }
var isoLatin2StringEncoding: UInt { get }
var unicodeStringEncoding: UInt { get }
var windowsCP1251StringEncoding: UInt { get }
var windowsCP1252StringEncoding: UInt { get }
var windowsCP1253StringEncoding: UInt { get }
var windowsCP1254StringEncoding: UInt { get }
var windowsCP1250StringEncoding: UInt { get }
var iso2022JPStringEncoding: UInt { get }
var macOSRomanStringEncoding: UInt { get }
var utf16StringEncoding: UInt { get }
var utf16BigEndianStringEncoding: UInt { get }
var utf16LittleEndianStringEncoding: UInt { get }
var utf32StringEncoding: UInt { get }
var utf32BigEndianStringEncoding: UInt { get }
var utf32LittleEndianStringEncoding: UInt { get }
struct StringEncodingConversionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var allowLossy: StringEncodingConversionOptions { get }
  static var externalRepresentation: StringEncodingConversionOptions { get }
}
class NSString : Object, Copying, MutableCopying, SecureCoding {
  var length: Int { get }
  func character(at index: Int) -> unichar
  init()
  init?(coder aDecoder: Coder)
  func copy(zone: Zone = nil) -> AnyObject
  func mutableCopy(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(aCoder: Coder)
}

extension NSString : StringLiteralConvertible {
  required convenience init(unicodeScalarLiteral value: StaticString)
  required convenience init(extendedGraphemeClusterLiteral value: StaticString)
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
  @objc(_swiftInitWithString_NSString:) convenience init(string aString: NSString)
}

extension NSString : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
extension NSString {
  func substring(from from: Int) -> String
  func substring(to to: Int) -> String
  func substring(range: NSRange) -> String
  func getCharacters(buffer: UnsafeMutablePointer<unichar>, range: NSRange)
  func compare(string: String) -> ComparisonResult
  func compare(string: String, options mask: StringCompareOptions = []) -> ComparisonResult
  func compare(string: String, options mask: StringCompareOptions = [], range compareRange: NSRange) -> ComparisonResult
  func compare(string: String, options mask: StringCompareOptions = [], range compareRange: NSRange, locale: AnyObject?) -> ComparisonResult
  func caseInsensitiveCompare(string: String) -> ComparisonResult
  func localizedCompare(string: String) -> ComparisonResult
  func localizedCaseInsensitiveCompare(string: String) -> ComparisonResult
  @available(watchOS 2.0, *)
  func localizedStandardCompare(string: String) -> ComparisonResult
  func isEqual(to aString: String) -> Bool
  func hasPrefix(str: String) -> Bool
  func hasSuffix(str: String) -> Bool
  func commonPrefix(str: String, options mask: StringCompareOptions = []) -> String
  @available(watchOS 2.0, *)
  func contains(str: String) -> Bool
  @available(watchOS 2.0, *)
  func localizedCaseInsensitiveContains(str: String) -> Bool
  @available(watchOS 2.0, *)
  func localizedStandardContains(str: String) -> Bool
  @available(watchOS 2.0, *)
  func localizedStandardRangeOf(str: String) -> NSRange
  func rangeOf(searchString: String) -> NSRange
  func rangeOf(searchString: String, options mask: StringCompareOptions = []) -> NSRange
  func rangeOf(searchString: String, options mask: StringCompareOptions = [], range searchRange: NSRange) -> NSRange
  @available(watchOS 2.0, *)
  func rangeOf(searchString: String, options mask: StringCompareOptions = [], range searchRange: NSRange, locale: Locale?) -> NSRange
  func rangeOfCharacter(from searchSet: CharacterSet) -> NSRange
  func rangeOfCharacter(from searchSet: CharacterSet, options mask: StringCompareOptions = []) -> NSRange
  func rangeOfCharacter(from searchSet: CharacterSet, options mask: StringCompareOptions = [], range searchRange: NSRange) -> NSRange
  func rangeOfComposedCharacterSequence(at index: Int) -> NSRange
  @available(watchOS 2.0, *)
  func rangeOfComposedCharacterSequences(for range: NSRange) -> NSRange
  func appending(aString: String) -> String
  var doubleValue: Double { get }
  var floatValue: Float { get }
  var intValue: Int32 { get }
  @available(watchOS 2.0, *)
  var integerValue: Int { get }
  @available(watchOS 2.0, *)
  var longLongValue: Int64 { get }
  @available(watchOS 2.0, *)
  var boolValue: Bool { get }
  var uppercase: String { get }
  var lowercase: String { get }
  var capitalized: String { get }
  @available(watchOS 2.0, *)
  var localizedUppercase: String { get }
  @available(watchOS 2.0, *)
  var localizedLowercase: String { get }
  @available(watchOS 2.0, *)
  var localizedCapitalized: String { get }
  @available(watchOS 2.0, *)
  func uppercaseString(locale: Locale?) -> String
  @available(watchOS 2.0, *)
  func lowercaseString(locale: Locale?) -> String
  @available(watchOS 2.0, *)
  func capitalizedString(locale: Locale?) -> String
  func getLineStart(startPtr: UnsafeMutablePointer<Int>, end lineEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, for range: NSRange)
  func lineRange(for range: NSRange) -> NSRange
  func getParagraphStart(startPtr: UnsafeMutablePointer<Int>, end parEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, for range: NSRange)
  func paragraphRange(for range: NSRange) -> NSRange
  @available(watchOS 2.0, *)
  func enumerateSubstrings(in range: NSRange, options opts: StringEnumerationOptions = [], using block: (String?, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateLines(block: (String, UnsafeMutablePointer<ObjCBool>) -> Void)
  var utf8String: UnsafePointer<Int8> { get }
  var fastestEncoding: UInt { get }
  var smallestEncoding: UInt { get }
  func data(usingEncoding encoding: UInt, allowLossyConversion lossy: Bool) -> Data?
  func data(usingEncoding encoding: UInt) -> Data?
  func canBeConverted(toEncoding encoding: UInt) -> Bool
  func cString(usingEncoding encoding: UInt) -> UnsafePointer<Int8>
  func getCString(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferCount: Int, encoding: UInt) -> Bool
  func getBytes(buffer: UnsafeMutablePointer<Void>, maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>, encoding: UInt, options: StringEncodingConversionOptions = [], range: NSRange, remaining leftover: RangePointer) -> Bool
  func maximumLengthOfBytes(usingEncoding enc: UInt) -> Int
  func lengthOfBytes(usingEncoding enc: UInt) -> Int
  class func availableStringEncodings() -> UnsafePointer<UInt>
  class func localizedNameOf(stringEncoding encoding: UInt) -> String
  class func defaultCStringEncoding() -> UInt
  var decomposedStringWithCanonicalMapping: String { get }
  var precomposedStringWithCanonicalMapping: String { get }
  var decomposedStringWithCompatibilityMapping: String { get }
  var precomposedStringWithCompatibilityMapping: String { get }
  func componentsSeparated(by separator: String) -> [String]
  @available(watchOS 2.0, *)
  func componentsSeparatedByCharacters(in separator: CharacterSet) -> [String]
  func trimmingCharacters(in set: CharacterSet) -> String
  func padding(toLength newLength: Int, with padString: String, startingAt padIndex: Int) -> String
  @available(watchOS 2.0, *)
  func folding(options: StringCompareOptions = [], locale: Locale?) -> String
  @available(watchOS 2.0, *)
  func replacingOccurrencesOf(target: String, with replacement: String, options: StringCompareOptions = [], range searchRange: NSRange) -> String
  @available(watchOS 2.0, *)
  func replacingOccurrencesOf(target: String, with replacement: String) -> String
  @available(watchOS 2.0, *)
  func replacingCharacters(in range: NSRange, with replacement: String) -> String
  @available(watchOS 2.0, *)
  func applyingTransform(transform: String, reverse: Bool) -> String?
  func write(to url: URL, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  func write(toFile path: String, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
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
  static var byLines: StringEnumerationOptions { get }
  static var byParagraphs: StringEnumerationOptions { get }
  static var byComposedCharacterSequences: StringEnumerationOptions { get }
  static var byWords: StringEnumerationOptions { get }
  static var bySentences: StringEnumerationOptions { get }
  static var reverse: StringEnumerationOptions { get }
  static var substringNotRequired: StringEnumerationOptions { get }
  static var localized: StringEnumerationOptions { get }
}
@available(watchOS 2.0, *)
let stringTransformLatinToKatakana: String
@available(watchOS 2.0, *)
let stringTransformLatinToHiragana: String
@available(watchOS 2.0, *)
let stringTransformLatinToHangul: String
@available(watchOS 2.0, *)
let stringTransformLatinToArabic: String
@available(watchOS 2.0, *)
let stringTransformLatinToHebrew: String
@available(watchOS 2.0, *)
let stringTransformLatinToThai: String
@available(watchOS 2.0, *)
let stringTransformLatinToCyrillic: String
@available(watchOS 2.0, *)
let stringTransformLatinToGreek: String
@available(watchOS 2.0, *)
let stringTransformToLatin: String
@available(watchOS 2.0, *)
let stringTransformMandarinToLatin: String
@available(watchOS 2.0, *)
let stringTransformHiraganaToKatakana: String
@available(watchOS 2.0, *)
let stringTransformFullwidthToHalfwidth: String
@available(watchOS 2.0, *)
let stringTransformToXMLHex: String
@available(watchOS 2.0, *)
let stringTransformToUnicodeName: String
@available(watchOS 2.0, *)
let stringTransformStripCombiningMarks: String
@available(watchOS 2.0, *)
let stringTransformStripDiacritics: String
extension NSString {
  @available(watchOS 2.0, *)
  class func stringEncoding(for data: Data, encodingOptions opts: [String : AnyObject]? = [:], convertedString string: AutoreleasingUnsafeMutablePointer<NSString?>, usedLossyConversion: UnsafeMutablePointer<ObjCBool>) -> UInt
}
@available(watchOS 2.0, *)
let stringEncodingDetectionSuggestedEncodingsKey: String
@available(watchOS 2.0, *)
let stringEncodingDetectionDisallowedEncodingsKey: String
@available(watchOS 2.0, *)
let stringEncodingDetectionUseOnlySuggestedEncodingsKey: String
@available(watchOS 2.0, *)
let stringEncodingDetectionAllowLossyKey: String
@available(watchOS 2.0, *)
let stringEncodingDetectionFromWindowsKey: String
@available(watchOS 2.0, *)
let stringEncodingDetectionLossySubstitutionKey: String
@available(watchOS 2.0, *)
let stringEncodingDetectionLikelyLanguageKey: String
class MutableString : NSString {
  func replaceCharacters(in range: NSRange, with aString: String)
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
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOfFile path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOf url: URL)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<Int8>, length: Int, freeWhenDone freeBuffer: Bool)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>, length: Int)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>)
}

extension MutableString {
  func appendFormat(format: NSString, _ args: CVarArgType...)
}
extension MutableString {
  func insert(aString: String, at loc: Int)
  func deleteCharacters(in range: NSRange)
  func append(aString: String)
  func setString(aString: String)
  func replaceOccurrencesOf(target: String, with replacement: String, options: StringCompareOptions = [], range searchRange: NSRange) -> Int
  @available(watchOS 2.0, *)
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
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func cString() -> UnsafePointer<Int8>
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func lossyCString() -> UnsafePointer<Int8>
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func cStringLength() -> Int
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func getCString(bytes: UnsafeMutablePointer<Int8>)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func getCString(bytes: UnsafeMutablePointer<Int8>, maxLength: Int)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func getCString(bytes: UnsafeMutablePointer<Int8>, maxLength: Int, range aRange: NSRange, remaining leftoverRange: RangePointer)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func write(to url: URL, atomically: Bool) -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOfFile path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOf url: URL)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  class func string(contentsOfFile path: String) -> AnyObject?
  @available(watchOS, introduced=2.0, deprecated=2.0)
  class func string(contentsOf url: URL) -> AnyObject?
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<Int8>, length: Int, freeWhenDone freeBuffer: Bool)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>, length: Int)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  class func string(cString bytes: UnsafePointer<Int8>, length: Int) -> AnyObject?
  @available(watchOS, introduced=2.0, deprecated=2.0)
  class func string(cString bytes: UnsafePointer<Int8>) -> AnyObject?
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
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOfFile path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOf url: URL)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<Int8>, length: Int, freeWhenDone freeBuffer: Bool)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>, length: Int)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>)
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
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOfFile path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOf url: URL)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<Int8>, length: Int, freeWhenDone freeBuffer: Bool)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>, length: Int)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>)
}
var _NSConstantStringClassReference: UnsafeMutablePointer<Void>
