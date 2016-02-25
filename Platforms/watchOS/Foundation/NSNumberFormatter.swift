
enum NSNumberFormatterBehavior : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_4
}
class NSNumberFormatter : NSFormatter {
  @available(watchOS 2.0, *)
  var formattingContext: NSFormattingContext
  func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFromNumber(_ number: NSNumber) -> String?
  func numberFromString(_ string: String) -> NSNumber?
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  var currencyGroupingSeparator: String!
  @available(watchOS 2.0, *)
  var lenient: Bool
  @available(watchOS 2.0, *)
  var usesSignificantDigits: Bool
  @available(watchOS 2.0, *)
  var minimumSignificantDigits: Int
  @available(watchOS 2.0, *)
  var maximumSignificantDigits: Int
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  case OrdinalStyle
  @available(watchOS 2.0, *)
  case CurrencyISOCodeStyle
  @available(watchOS 2.0, *)
  case CurrencyPluralStyle
  @available(watchOS 2.0, *)
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
