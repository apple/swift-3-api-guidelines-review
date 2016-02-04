
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
  @available(OSX 10.5, *)
  class func autoupdatingCurrentLocale() -> NSLocale
  class func currentLocale() -> NSLocale
  class func systemLocale() -> NSLocale
}
extension NSLocale {
  class func availableLocaleIdentifiers() -> [String]
  class func ISOLanguageCodes() -> [String]
  class func ISOCountryCodes() -> [String]
  class func ISOCurrencyCodes() -> [String]
  @available(OSX 10.5, *)
  class func commonISOCurrencyCodes() -> [String]
  @available(OSX 10.5, *)
  class func preferredLanguages() -> [String]
  class func componentsFromLocaleIdentifier(string: String) -> [String : String]
  class func localeIdentifierFromComponents(dict: [String : String]) -> String
  class func canonicalLocaleIdentifierFromString(string: String) -> String
  class func canonicalLanguageIdentifierFromString(string: String) -> String
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
