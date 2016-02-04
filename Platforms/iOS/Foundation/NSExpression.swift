
enum ExpressionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ConstantValueExpressionType
  case EvaluatedObjectExpressionType
  case VariableExpressionType
  case KeyPathExpressionType
  case FunctionExpressionType
  @available(iOS 3.0, *)
  case UnionSetExpressionType
  @available(iOS 3.0, *)
  case IntersectSetExpressionType
  @available(iOS 3.0, *)
  case MinusSetExpressionType
  @available(iOS 3.0, *)
  case SubqueryExpressionType
  @available(iOS 3.0, *)
  case AggregateExpressionType
  @available(iOS 7.0, *)
  case AnyKeyExpressionType
  case BlockExpressionType
  @available(iOS 9.0, *)
  case ConditionalExpressionType
}
@available(iOS 3.0, *)
class Expression : Object, SecureCoding, Copying {
  @available(iOS 4.0, *)
  /*not inherited*/ init(format expressionFormat: String, argumentArray arguments: [AnyObject])
  @available(iOS 4.0, *)
  /*not inherited*/ init(format expressionFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(forConstantValue obj: AnyObject?)
  class func forEvaluatedObject() -> Expression
  /*not inherited*/ init(forVariable string: String)
  /*not inherited*/ init(forKeyPath keyPath: String)
  /*not inherited*/ init(forFunction name: String, arguments parameters: [AnyObject])
  @available(iOS 3.0, *)
  /*not inherited*/ init(forAggregate subexpressions: [AnyObject])
  @available(iOS 3.0, *)
  /*not inherited*/ init(forUnionSet left: Expression, with right: Expression)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forIntersectSet left: Expression, with right: Expression)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forMinusSet left: Expression, with right: Expression)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forSubquery expression: Expression, usingIteratorVariable variable: String, predicate: AnyObject)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forFunction target: Expression, selectorName name: String, arguments parameters: [AnyObject]?)
  @available(iOS 7.0, *)
  class func forAnyKey() -> Expression
  @available(iOS 4.0, *)
  /*not inherited*/ init(forBlock block: (AnyObject?, [AnyObject], MutableDictionary?) -> AnyObject, arguments: [Expression]?)
  @available(iOS 9.0, *)
  /*not inherited*/ init(forConditional predicate: Predicate, trueExpression: Expression, falseExpression: Expression)
  init(expressionType type: ExpressionType)
  init?(coder: Coder)
  var expressionType: ExpressionType { get }
  var constantValue: AnyObject { get }
  var keyPath: String { get }
  var function: String { get }
  var variable: String { get }
  @NSCopying var operand: Expression { get }
  var arguments: [Expression]? { get }
  @available(iOS 3.0, *)
  var collection: AnyObject { get }
  @available(iOS 3.0, *)
  @NSCopying var predicate: Predicate { get }
  @available(iOS 3.0, *)
  @NSCopying var left: Expression { get }
  @available(iOS 3.0, *)
  @NSCopying var right: Expression { get }
  @available(iOS 9.0, *)
  @NSCopying var trueExpression: Expression { get }
  @available(iOS 9.0, *)
  @NSCopying var falseExpression: Expression { get }
  @available(iOS 4.0, *)
  var expressionBlock: (AnyObject?, [AnyObject], MutableDictionary?) -> AnyObject { get }
  func expressionValueWith(object: AnyObject?, context: MutableDictionary?) -> AnyObject
  @available(iOS 7.0, *)
  func allowEvaluation()
  convenience init()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encodeWith(aCoder: Coder)
  @available(iOS 3.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}

extension Expression {
  convenience init(format expressionFormat: String, _ args: CVarArgType...)
}
struct _expressionFlags {
  var _evaluationBlocked: UInt32
  var _reservedExpressionFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedExpressionFlags: UInt32)
}
