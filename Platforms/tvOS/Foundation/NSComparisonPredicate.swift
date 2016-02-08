
struct ComparisonPredicateOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var caseInsensitivePredicateOption: ComparisonPredicateOptions { get }
  static var diacriticInsensitivePredicateOption: ComparisonPredicateOptions { get }
  @available(tvOS 4.0, *)
  static var normalizedPredicateOption: ComparisonPredicateOptions { get }
}
enum ComparisonPredicateModifier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case directPredicateModifier
  case allPredicateModifier
  case anyPredicateModifier
}
enum PredicateOperatorType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case lessThanPredicateOperatorType
  case lessThanOrEqualToPredicateOperatorType
  case greaterThanPredicateOperatorType
  case greaterThanOrEqualToPredicateOperatorType
  case equalToPredicateOperatorType
  case notEqualToPredicateOperatorType
  case matchesPredicateOperatorType
  case likePredicateOperatorType
  case beginsWithPredicateOperatorType
  case endsWithPredicateOperatorType
  case inPredicateOperatorType
  case customSelectorPredicateOperatorType
  @available(tvOS 3.0, *)
  case containsPredicateOperatorType
  @available(tvOS 3.0, *)
  case betweenPredicateOperatorType
}
@available(tvOS 3.0, *)
class ComparisonPredicate : Predicate {
  init(leftExpression lhs: Expression, rightExpression rhs: Expression, modifier: ComparisonPredicateModifier, type: PredicateOperatorType, options: ComparisonPredicateOptions = [])
  init(leftExpression lhs: Expression, rightExpression rhs: Expression, customSelector selector: Selector)
  init?(coder: Coder)
  var predicateOperatorType: PredicateOperatorType { get }
  var comparisonPredicateModifier: ComparisonPredicateModifier { get }
  var leftExpression: Expression { get }
  var rightExpression: Expression { get }
  var customSelector: Selector { get }
  var options: ComparisonPredicateOptions { get }
  convenience init()
}
