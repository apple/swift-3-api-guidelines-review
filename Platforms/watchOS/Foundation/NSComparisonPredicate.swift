
struct NSComparisonPredicateOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitivePredicateOption: NSComparisonPredicateOptions { get }
  static var DiacriticInsensitivePredicateOption: NSComparisonPredicateOptions { get }
  @available(watchOS 2.0, *)
  static var NormalizedPredicateOption: NSComparisonPredicateOptions { get }
}
enum NSComparisonPredicateModifier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DirectPredicateModifier
  case AllPredicateModifier
  case AnyPredicateModifier
}
enum NSPredicateOperatorType : UInt {
  init?(rawValue: UInt)
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
  @available(watchOS 2.0, *)
  case ContainsPredicateOperatorType
  @available(watchOS 2.0, *)
  case BetweenPredicateOperatorType
}
@available(watchOS 2.0, *)
class NSComparisonPredicate : NSPredicate {
  init(leftExpression lhs: NSExpression, rightExpression rhs: NSExpression, modifier: NSComparisonPredicateModifier, type: NSPredicateOperatorType, options: NSComparisonPredicateOptions)
  init(leftExpression lhs: NSExpression, rightExpression rhs: NSExpression, customSelector selector: Selector)
  init?(coder: NSCoder)
  var predicateOperatorType: NSPredicateOperatorType { get }
  var comparisonPredicateModifier: NSComparisonPredicateModifier { get }
  var leftExpression: NSExpression { get }
  var rightExpression: NSExpression { get }
  var customSelector: Selector { get }
  var options: NSComparisonPredicateOptions { get }
  convenience init()
}
