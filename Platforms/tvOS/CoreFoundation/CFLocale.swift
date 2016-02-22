
class CFLocale {
}
func CFLocaleGetTypeID() -> CFTypeID
func CFLocaleGetSystem() -> CFLocale!
func CFLocaleCopyCurrent() -> CFLocale!
func CFLocaleCopyAvailableLocaleIdentifiers() -> CFArray!
func CFLocaleCopyISOLanguageCodes() -> CFArray!
func CFLocaleCopyISOCountryCodes() -> CFArray!
func CFLocaleCopyISOCurrencyCodes() -> CFArray!
@available(tvOS 2.0, *)
func CFLocaleCopyCommonISOCurrencyCodes() -> CFArray!
@available(tvOS 2.0, *)
func CFLocaleCopyPreferredLanguages() -> CFArray!
func CFLocaleCreateCanonicalLanguageIdentifierFromString(_ allocator: CFAllocator!, _ localeIdentifier: CFString!) -> CFString!
func CFLocaleCreateCanonicalLocaleIdentifierFromString(_ allocator: CFAllocator!, _ localeIdentifier: CFString!) -> CFString!
func CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(_ allocator: CFAllocator!, _ lcode: LangCode, _ rcode: RegionCode) -> CFString!
@available(tvOS 4.0, *)
func CFLocaleCreateLocaleIdentifierFromWindowsLocaleCode(_ allocator: CFAllocator!, _ lcid: UInt32) -> CFString!
@available(tvOS 4.0, *)
func CFLocaleGetWindowsLocaleCodeFromLocaleIdentifier(_ localeIdentifier: CFString!) -> UInt32
enum CFLocaleLanguageDirection : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case unknown
  case leftToRight
  case rightToLeft
  case topToBottom
  case bottomToTop
}
@available(tvOS 4.0, *)
func CFLocaleGetLanguageCharacterDirection(_ isoLangCode: CFString!) -> CFLocaleLanguageDirection
@available(tvOS 4.0, *)
func CFLocaleGetLanguageLineDirection(_ isoLangCode: CFString!) -> CFLocaleLanguageDirection
func CFLocaleCreateComponentsFromLocaleIdentifier(_ allocator: CFAllocator!, _ localeID: CFString!) -> CFDictionary!
func CFLocaleCreateLocaleIdentifierFromComponents(_ allocator: CFAllocator!, _ dictionary: CFDictionary!) -> CFString!
func CFLocaleCreate(_ allocator: CFAllocator!, _ localeIdentifier: CFString!) -> CFLocale!
func CFLocaleCreateCopy(_ allocator: CFAllocator!, _ locale: CFLocale!) -> CFLocale!
func CFLocaleGetIdentifier(_ locale: CFLocale!) -> CFString!
func CFLocaleGetValue(_ locale: CFLocale!, _ key: CFString!) -> CFTypeRef!
func CFLocaleCopyDisplayNameForPropertyValue(_ displayLocale: CFLocale!, _ key: CFString!, _ value: CFString!) -> CFString!
@available(tvOS 2.0, *)
let kCFLocaleCurrentLocaleDidChangeNotification: CFString!
let kCFLocaleIdentifier: CFString!
let kCFLocaleLanguageCode: CFString!
let kCFLocaleCountryCode: CFString!
let kCFLocaleScriptCode: CFString!
let kCFLocaleVariantCode: CFString!
let kCFLocaleExemplarCharacterSet: CFString!
let kCFLocaleCalendarIdentifier: CFString!
let kCFLocaleCalendar: CFString!
let kCFLocaleCollationIdentifier: CFString!
let kCFLocaleUsesMetricSystem: CFString!
let kCFLocaleMeasurementSystem: CFString!
let kCFLocaleDecimalSeparator: CFString!
let kCFLocaleGroupingSeparator: CFString!
let kCFLocaleCurrencySymbol: CFString!
let kCFLocaleCurrencyCode: CFString!
@available(tvOS 4.0, *)
let kCFLocaleCollatorIdentifier: CFString!
@available(tvOS 4.0, *)
let kCFLocaleQuotationBeginDelimiterKey: CFString!
@available(tvOS 4.0, *)
let kCFLocaleQuotationEndDelimiterKey: CFString!
@available(tvOS 4.0, *)
let kCFLocaleAlternateQuotationBeginDelimiterKey: CFString!
@available(tvOS 4.0, *)
let kCFLocaleAlternateQuotationEndDelimiterKey: CFString!
let kCFGregorianCalendar: CFString!
let kCFBuddhistCalendar: CFString!
let kCFChineseCalendar: CFString!
let kCFHebrewCalendar: CFString!
let kCFIslamicCalendar: CFString!
let kCFIslamicCivilCalendar: CFString!
let kCFJapaneseCalendar: CFString!
@available(tvOS 4.0, *)
let kCFRepublicOfChinaCalendar: CFString!
@available(tvOS 4.0, *)
let kCFPersianCalendar: CFString!
@available(tvOS 4.0, *)
let kCFIndianCalendar: CFString!
@available(tvOS 4.0, *)
let kCFISO8601Calendar: CFString!
@available(tvOS 8.0, *)
let kCFIslamicTabularCalendar: CFString!
@available(tvOS 8.0, *)
let kCFIslamicUmmAlQuraCalendar: CFString!
