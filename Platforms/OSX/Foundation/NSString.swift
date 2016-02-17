
typealias unichar = UInt16
struct StringCompareOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var caseInsensitiveSearch: StringCompareOptions { get }
  static var literalSearch: StringCompareOptions { get }
  static var backwardsSearch: StringCompareOptions { get }
  static var anchoredSearch: StringCompareOptions { get }
  static var numericSearch: StringCompareOptions { get }
  @available(OSX 10.5, *)
  static var diacriticInsensitiveSearch: StringCompareOptions { get }
  @available(OSX 10.5, *)
  static var widthInsensitiveSearch: StringCompareOptions { get }
  @available(OSX 10.5, *)
  static var forcedOrderingSearch: StringCompareOptions { get }
  @available(OSX 10.7, *)
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
  func copy(with zone: Zone = nil) -> AnyObject
  func mutableCopy(with zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
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
  func substring(with range: NSRange) -> String
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
  func isEqual(to aString: String) -> Bool
  func hasPrefix(str: String) -> Bool
  func hasSuffix(str: String) -> Bool
  func commonPrefix(with str: String, options mask: StringCompareOptions = []) -> String
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
  func rangeOfCharacter(from searchSet: CharacterSet) -> NSRange
  func rangeOfCharacter(from searchSet: CharacterSet, options mask: StringCompareOptions = []) -> NSRange
  func rangeOfCharacter(from searchSet: CharacterSet, options mask: StringCompareOptions = [], range searchRange: NSRange) -> NSRange
  func rangeOfComposedCharacterSequence(at index: Int) -> NSRange
  @available(OSX 10.5, *)
  func rangeOfComposedCharacterSequences(for range: NSRange) -> NSRange
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
  func uppercaseString(with locale: Locale?) -> String
  @available(OSX 10.8, *)
  func lowercaseString(with locale: Locale?) -> String
  @available(OSX 10.8, *)
  func capitalizedString(with locale: Locale?) -> String
  func getLineStart(startPtr: UnsafeMutablePointer<Int>, end lineEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, for range: NSRange)
  func lineRange(for range: NSRange) -> NSRange
  func getParagraphStart(startPtr: UnsafeMutablePointer<Int>, end parEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, for range: NSRange)
  func paragraphRange(for range: NSRange) -> NSRange
  @available(OSX 10.6, *)
  func enumerateSubstrings(in range: NSRange, options opts: StringEnumerationOptions = [], using block: (String?, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
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
  @available(OSX 10.5, *)
  func componentsSeparatedByCharacters(in separator: CharacterSet) -> [String]
  func trimmingCharacters(in set: CharacterSet) -> String
  func padding(toLength newLength: Int, with padString: String, startingAt padIndex: Int) -> String
  @available(OSX 10.5, *)
  func folding(options: StringCompareOptions = [], locale: Locale?) -> String
  @available(OSX 10.5, *)
  func replacingOccurrencesOf(target: String, with replacement: String, options: StringCompareOptions = [], range searchRange: NSRange) -> String
  @available(OSX 10.5, *)
  func replacingOccurrencesOf(target: String, with replacement: String) -> String
  @available(OSX 10.5, *)
  func replacingCharacters(in range: NSRange, with replacement: String) -> String
  @available(OSX 10.11, *)
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
  class func stringEncoding(for data: Data, encodingOptions opts: [String : AnyObject]? = [:], convertedString string: AutoreleasingUnsafeMutablePointer<NSString?>, usedLossyConversion: UnsafeMutablePointer<ObjCBool>) -> UInt
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
