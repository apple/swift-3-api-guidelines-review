
enum NumberFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case behaviorDefault
  case behavior10_0
  case behavior10_4
}
class NumberFormatter : Formatter {
  @available(OSX 10.10, *)
  var formattingContext: FormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFrom(number: Number) -> String?
  func numberFrom(string: String) -> Number?
  @available(OSX 10.6, *)
  class func localizedStringFrom(num: Number, number nstyle: NumberFormatterStyle) -> String
  class func defaultFormatterBehavior() -> NumberFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: NumberFormatterBehavior)
  var numberStyle: NumberFormatterStyle
  @NSCopying var locale: Locale!
  var generatesDecimalNumbers: Bool
  var formatterBehavior: NumberFormatterBehavior
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
  @NSCopying var multiplier: Number?
  var formatWidth: Int
  var paddingCharacter: String!
  var paddingPosition: NumberFormatterPadPosition
  var roundingMode: NumberFormatterRoundingMode
  @NSCopying var roundingIncrement: Number!
  var minimumIntegerDigits: Int
  var maximumIntegerDigits: Int
  var minimumFractionDigits: Int
  var maximumFractionDigits: Int
  @NSCopying var minimum: Number?
  @NSCopying var maximum: Number?
  @available(OSX 10.5, *)
  var currencyGroupingSeparator: String!
  @available(OSX 10.5, *)
  var isLenient: Bool
  @available(OSX 10.5, *)
  var usesSignificantDigits: Bool
  @available(OSX 10.5, *)
  var minimumSignificantDigits: Int
  @available(OSX 10.5, *)
  var maximumSignificantDigits: Int
  @available(OSX 10.5, *)
  var isPartialStringValidationEnabled: Bool
  init()
  init?(coder aDecoder: Coder)
}
enum NumberFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noStyle
  case decimalStyle
  case currencyStyle
  case percentStyle
  case scientificStyle
  case spellOutStyle
  @available(OSX 10.11, *)
  case ordinalStyle
  @available(OSX 10.11, *)
  case currencyISOCodeStyle
  @available(OSX 10.11, *)
  case currencyPluralStyle
  @available(OSX 10.11, *)
  case currencyAccountingStyle
}
enum NumberFormatterPadPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case beforePrefix
  case afterPrefix
  case beforeSuffix
  case afterSuffix
}
enum NumberFormatterRoundingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case roundCeiling
  case roundFloor
  case roundDown
  case roundUp
  case roundHalfEven
  case roundHalfDown
  case roundHalfUp
}
extension NumberFormatter {
  var hasThousandSeparators: Bool
  var thousandSeparator: String!
  var localizesFormat: Bool
  var format: String
  @NSCopying var attributedStringForZero: AttributedString
  @NSCopying var attributedStringForNil: AttributedString
  @NSCopying var attributedStringForNotANumber: AttributedString
  @NSCopying var roundingBehavior: DecimalNumberHandler
}
