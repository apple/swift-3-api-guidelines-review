
class CFNumberFormatter {
}
@available(*, deprecated, renamed="CFNumberFormatter")
typealias CFNumberFormatterRef = CFNumberFormatter
func CFNumberFormatterGetTypeID() -> CFTypeID
enum CFNumberFormatterStyle : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case NoStyle
  case DecimalStyle
  case CurrencyStyle
  case PercentStyle
  case ScientificStyle
  case SpellOutStyle
  @available(tvOS 9.0, *)
  case OrdinalStyle
  @available(tvOS 9.0, *)
  case CurrencyISOCodeStyle
  @available(tvOS 9.0, *)
  case CurrencyPluralStyle
  @available(tvOS 9.0, *)
  case CurrencyAccountingStyle
}
func CFNumberFormatterCreate(_ allocator: CFAllocator!, _ locale: CFLocale!, _ style: CFNumberFormatterStyle) -> CFNumberFormatter!
func CFNumberFormatterGetLocale(_ formatter: CFNumberFormatter!) -> CFLocale!
func CFNumberFormatterGetStyle(_ formatter: CFNumberFormatter!) -> CFNumberFormatterStyle
func CFNumberFormatterGetFormat(_ formatter: CFNumberFormatter!) -> CFString!
func CFNumberFormatterSetFormat(_ formatter: CFNumberFormatter!, _ formatString: CFString!)
func CFNumberFormatterCreateStringWithNumber(_ allocator: CFAllocator!, _ formatter: CFNumberFormatter!, _ number: CFNumber!) -> CFString!
func CFNumberFormatterCreateStringWithValue(_ allocator: CFAllocator!, _ formatter: CFNumberFormatter!, _ numberType: CFNumberType, _ valuePtr: UnsafePointer<Void>) -> CFString!
struct CFNumberFormatterOptionFlags : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var ParseIntegersOnly: CFNumberFormatterOptionFlags { get }
}
func CFNumberFormatterCreateNumberFromString(_ allocator: CFAllocator!, _ formatter: CFNumberFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>, _ options: CFOptionFlags) -> CFNumber!
func CFNumberFormatterGetValueFromString(_ formatter: CFNumberFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>, _ numberType: CFNumberType, _ valuePtr: UnsafeMutablePointer<Void>) -> Bool
func CFNumberFormatterSetProperty(_ formatter: CFNumberFormatter!, _ key: CFString!, _ value: CFTypeRef!)
func CFNumberFormatterCopyProperty(_ formatter: CFNumberFormatter!, _ key: CFString!) -> CFTypeRef!
let kCFNumberFormatterCurrencyCode: CFString!
let kCFNumberFormatterDecimalSeparator: CFString!
let kCFNumberFormatterCurrencyDecimalSeparator: CFString!
let kCFNumberFormatterAlwaysShowDecimalSeparator: CFString!
let kCFNumberFormatterGroupingSeparator: CFString!
let kCFNumberFormatterUseGroupingSeparator: CFString!
let kCFNumberFormatterPercentSymbol: CFString!
let kCFNumberFormatterZeroSymbol: CFString!
let kCFNumberFormatterNaNSymbol: CFString!
let kCFNumberFormatterInfinitySymbol: CFString!
let kCFNumberFormatterMinusSign: CFString!
let kCFNumberFormatterPlusSign: CFString!
let kCFNumberFormatterCurrencySymbol: CFString!
let kCFNumberFormatterExponentSymbol: CFString!
let kCFNumberFormatterMinIntegerDigits: CFString!
let kCFNumberFormatterMaxIntegerDigits: CFString!
let kCFNumberFormatterMinFractionDigits: CFString!
let kCFNumberFormatterMaxFractionDigits: CFString!
let kCFNumberFormatterGroupingSize: CFString!
let kCFNumberFormatterSecondaryGroupingSize: CFString!
let kCFNumberFormatterRoundingMode: CFString!
let kCFNumberFormatterRoundingIncrement: CFString!
let kCFNumberFormatterFormatWidth: CFString!
let kCFNumberFormatterPaddingPosition: CFString!
let kCFNumberFormatterPaddingCharacter: CFString!
let kCFNumberFormatterDefaultFormat: CFString!
let kCFNumberFormatterMultiplier: CFString!
let kCFNumberFormatterPositivePrefix: CFString!
let kCFNumberFormatterPositiveSuffix: CFString!
let kCFNumberFormatterNegativePrefix: CFString!
let kCFNumberFormatterNegativeSuffix: CFString!
let kCFNumberFormatterPerMillSymbol: CFString!
let kCFNumberFormatterInternationalCurrencySymbol: CFString!
@available(tvOS 2.0, *)
let kCFNumberFormatterCurrencyGroupingSeparator: CFString!
@available(tvOS 2.0, *)
let kCFNumberFormatterIsLenient: CFString!
@available(tvOS 2.0, *)
let kCFNumberFormatterUseSignificantDigits: CFString!
@available(tvOS 2.0, *)
let kCFNumberFormatterMinSignificantDigits: CFString!
@available(tvOS 2.0, *)
let kCFNumberFormatterMaxSignificantDigits: CFString!
enum CFNumberFormatterRoundingMode : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case RoundCeiling
  case RoundFloor
  case RoundDown
  case RoundUp
  case RoundHalfEven
  case RoundHalfDown
  case RoundHalfUp
}
enum CFNumberFormatterPadPosition : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case BeforePrefix
  case AfterPrefix
  case BeforeSuffix
  case AfterSuffix
}
func CFNumberFormatterGetDecimalInfoForCurrencyCode(_ currencyCode: CFString!, _ defaultFractionDigits: UnsafeMutablePointer<Int32>, _ roundingIncrement: UnsafeMutablePointer<Double>) -> Bool
