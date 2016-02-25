
struct NSComparisonPredicateOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitivePredicateOption: NSComparisonPredicateOptions { get }
  static var DiacriticInsensitivePredicateOption: NSComparisonPredicateOptions { get }
  @available(tvOS 4.0, *)
  static var NormalizedPredicateOption: NSComparisonPredicateOptions { get }
}
enum NSComparisonPredicateModifier : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case DirectPredicateModifier
  case AllPredicateModifier
  case AnyPredicateModifier
}
enum NSPredicateOperatorType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case LessThanPredicateOperatorType
  case LessThanOrEqualToPredicateOperatorType
  case GreaterThanPredicateOperatorType
  case GreaterThanOrEqualToPredicateOperatorType
  case EqualToPredicateOperatorType
  case NotEqualToPredicateOperatorType
  case MatchesPredicateOperatorType
  case LikePredicateOperatorType
  case BeginsWithPredicateOperatorType
  case EndsWithPredicateOperatorType
  case InPredicateOperatorType
  case CustomSelectorPredicateOperatorType
  @available(tvOS 3.0, *)
  case ContainsPredicateOperatorType
  @available(tvOS 3.0, *)
  case BetweenPredicateOperatorType
}
@available(tvOS 3.0, *)
class NSComparisonPredicate : NSPredicate {
  init(leftExpression lhs: NSExpression, rightExpression rhs: NSExpression, modifier modifier: NSComparisonPredicateModifier, type type: NSPredicateOperatorType, options options: NSComparisonPredicateOptions)
  init(leftExpression lhs: NSExpression, rightExpression rhs: NSExpression, customSelector selector: Selector)
  var predicateOperatorType: NSPredicateOperatorType { get }
  var comparisonPredicateModifier: NSComparisonPredicateModifier { get }
  var leftExpression: NSExpression { get }
  var rightExpression: NSExpression { get }
  var customSelector: Selector { get }
  var options: NSComparisonPredicateOptions { get }
}
