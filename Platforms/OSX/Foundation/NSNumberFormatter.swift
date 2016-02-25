
enum NSNumberFormatterBehavior : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_0
  case Behavior10_4
}
class NSNumberFormatter : NSFormatter {
  @available(OSX 10.10, *)
  var formattingContext: NSFormattingContext
  func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFromNumber(_ number: NSNumber) -> String?
  func numberFromString(_ string: String) -> NSNumber?
  @available(OSX 10.6, *)
  class func localizedStringFromNumber(_ num: NSNumber, numberStyle nstyle: NSNumberFormatterStyle) -> String
  class func defaultFormatterBehavior() -> NSNumberFormatterBehavior
  class func setDefaultFormatterBehavior(_ behavior: NSNumberFormatterBehavior)
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
  @available(OSX 10.5, *)
  var currencyGroupingSeparator: String!
  @available(OSX 10.5, *)
  var lenient: Bool
  @available(OSX 10.5, *)
  var usesSignificantDigits: Bool
  @available(OSX 10.5, *)
  var minimumSignificantDigits: Int
  @available(OSX 10.5, *)
  var maximumSignificantDigits: Int
  @available(OSX 10.5, *)
  var partialStringValidationEnabled: Bool
}
enum NSNumberFormatterStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case DecimalStyle
  case CurrencyStyle
  case PercentStyle
  case ScientificStyle
  case SpellOutStyle
  @available(OSX 10.11, *)
  case OrdinalStyle
  @available(OSX 10.11, *)
  case CurrencyISOCodeStyle
  @available(OSX 10.11, *)
  case CurrencyPluralStyle
  @available(OSX 10.11, *)
  case CurrencyAccountingStyle
}
enum NSNumberFormatterPadPosition : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case BeforePrefix
  case AfterPrefix
  case BeforeSuffix
  case AfterSuffix
}
enum NSNumberFormatterRoundingMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case RoundCeiling
  case RoundFloor
  case RoundDown
  case RoundUp
  case RoundHalfEven
  case RoundHalfDown
  case RoundHalfUp
}
extension NSNumberFormatter {
  var hasThousandSeparators: Bool
  var thousandSeparator: String!
  var localizesFormat: Bool
  var format: String
  @NSCopying var attributedStringForZero: NSAttributedString
  @NSCopying var attributedStringForNil: NSAttributedString
  @NSCopying var attributedStringForNotANumber: NSAttributedString
  @NSCopying var roundingBehavior: NSDecimalNumberHandler
}
