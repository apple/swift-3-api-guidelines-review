
class Locale : Object, Copying, SecureCoding {
  func object(forKey key: AnyObject) -> AnyObject?
  func displayName(forKey key: AnyObject, value: AnyObject) -> String?
  init(localeIdentifier string: String)
  init?(coder aDecoder: Coder)
  func copy(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(aCoder: Coder)
}
extension Locale {
  var localeIdentifier: String { get }
}
extension Locale {
  @available(iOS 2.0, *)
  class func autoupdatingCurrent() -> Locale
  class func current() -> Locale
  class func system() -> Locale
}
extension Locale {
  class func availableLocaleIdentifiers() -> [String]
  class func isoLanguageCodes() -> [String]
  class func isoCountryCodes() -> [String]
  class func isoCurrencyCodes() -> [String]
  @available(iOS 2.0, *)
  class func commonISOCurrencyCodes() -> [String]
  @available(iOS 2.0, *)
  class func preferredLanguages() -> [String]
  class func components(fromLocaleIdentifier string: String) -> [String : String]
  class func localeIdentifier(fromComponents dict: [String : String]) -> String
  class func canonicalLocaleIdentifier(from string: String) -> String
  class func canonicalLanguageIdentifier(from string: String) -> String
  @available(iOS 4.0, *)
  class func localeIdentifier(fromWindowsLocaleCode lcid: UInt32) -> String?
  @available(iOS 4.0, *)
  class func windowsLocaleCode(fromLocaleIdentifier localeIdentifier: String) -> UInt32
  @available(iOS 4.0, *)
  class func characterDirection(forLanguage isoLangCode: String) -> LocaleLanguageDirection
  @available(iOS 4.0, *)
  class func lineDirection(forLanguage isoLangCode: String) -> LocaleLanguageDirection
}
enum LocaleLanguageDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case leftToRight
  case rightToLeft
  case topToBottom
  case bottomToTop
}
@available(iOS 2.0, *)
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
@available(iOS 4.0, *)
let localeCollatorIdentifier: String
@available(iOS 4.0, *)
let localeQuotationBeginDelimiterKey: String
@available(iOS 4.0, *)
let localeQuotationEndDelimiterKey: String
@available(iOS 4.0, *)
let localeAlternateQuotationBeginDelimiterKey: String
@available(iOS 4.0, *)
let localeAlternateQuotationEndDelimiterKey: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierGregorian instead")
let gregorianCalendar: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierBuddhist instead")
let buddhistCalendar: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierChinese instead")
let chineseCalendar: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierHebrew instead")
let hebrewCalendar: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierIslamic instead")
let islamicCalendar: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierIslamicCivil instead")
let islamicCivilCalendar: String
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierJapanese instead")
let japaneseCalendar: String
@available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierRepublicOfChina instead")
let republicOfChinaCalendar: String
@available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierPersian instead")
let persianCalendar: String
@available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierIndian instead")
let indianCalendar: String
@available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierISO8601 instead")
let iso8601Calendar: String
