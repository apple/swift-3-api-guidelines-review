
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
let iso8601Calendar: String
