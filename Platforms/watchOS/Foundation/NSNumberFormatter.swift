
enum NumberFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case behaviorDefault
  case behavior10_4
}
class NumberFormatter : Formatter {
  @available(watchOS 2.0, *)
  var formattingContext: FormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, for string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFrom(number: Number) -> String?
  func number(from string: String) -> Number?
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  var currencyGroupingSeparator: String!
  @available(watchOS 2.0, *)
  var isLenient: Bool
  @available(watchOS 2.0, *)
  var usesSignificantDigits: Bool
  @available(watchOS 2.0, *)
  var minimumSignificantDigits: Int
  @available(watchOS 2.0, *)
  var maximumSignificantDigits: Int
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  case ordinalStyle
  @available(watchOS 2.0, *)
  case currencyISOCodeStyle
  @available(watchOS 2.0, *)
  case currencyPluralStyle
  @available(watchOS 2.0, *)
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
