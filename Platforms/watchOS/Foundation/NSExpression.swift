
enum ExpressionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case constantValueExpressionType
  case evaluatedObjectExpressionType
  case variableExpressionType
  case keyPathExpressionType
  case functionExpressionType
  @available(watchOS 2.0, *)
  case unionSetExpressionType
  @available(watchOS 2.0, *)
  case intersectSetExpressionType
  @available(watchOS 2.0, *)
  case minusSetExpressionType
  @available(watchOS 2.0, *)
  case subqueryExpressionType
  @available(watchOS 2.0, *)
  case aggregateExpressionType
  @available(watchOS 2.0, *)
  case anyKeyExpressionType
  case blockExpressionType
  @available(watchOS 2.0, *)
  case conditionalExpressionType
}
@available(watchOS 2.0, *)
class Expression : Object, SecureCoding, Copying {
  @available(watchOS 2.0, *)
  /*not inherited*/ init(format expressionFormat: String, argumentArray arguments: [AnyObject])
  @available(watchOS 2.0, *)
  /*not inherited*/ init(format expressionFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(forConstantValue obj: AnyObject?)
  class func forEvaluatedObject() -> Expression
  /*not inherited*/ init(forVariable string: String)
  /*not inherited*/ init(forKeyPath keyPath: String)
  /*not inherited*/ init(forFunction name: String, arguments parameters: [AnyObject])
  @available(watchOS 2.0, *)
  /*not inherited*/ init(forAggregate subexpressions: [AnyObject])
  @available(watchOS 2.0, *)
  /*not inherited*/ init(forUnionSet left: Expression, with right: Expression)
  @available(watchOS 2.0, *)
  /*not inherited*/ init(forIntersectSet left: Expression, with right: Expression)
  @available(watchOS 2.0, *)
  /*not inherited*/ init(forMinusSet left: Expression, with right: Expression)
  @available(watchOS 2.0, *)
  /*not inherited*/ init(forSubquery expression: Expression, usingIteratorVariable variable: String, predicate: AnyObject)
  @available(watchOS 2.0, *)
  /*not inherited*/ init(forFunction target: Expression, selectorName name: String, arguments parameters: [AnyObject]?)
  @available(watchOS 2.0, *)
  class func forAnyKey() -> Expression
  @available(watchOS 2.0, *)
  /*not inherited*/ init(forBlock block: (AnyObject?, [AnyObject], MutableDictionary?) -> AnyObject, arguments: [Expression]?)
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  var collection: AnyObject { get }
  @available(watchOS 2.0, *)
  @NSCopying var predicate: Predicate { get }
  @available(watchOS 2.0, *)
  @NSCopying var left: Expression { get }
  @available(watchOS 2.0, *)
  @NSCopying var right: Expression { get }
  @available(watchOS 2.0, *)
  @NSCopying var trueExpression: Expression { get }
  @available(watchOS 2.0, *)
  @NSCopying var falseExpression: Expression { get }
  @available(watchOS 2.0, *)
  var expressionBlock: (AnyObject?, [AnyObject], MutableDictionary?) -> AnyObject { get }
  func expressionValue(withObject object: AnyObject?, context: MutableDictionary?) -> AnyObject
  @available(watchOS 2.0, *)
  func allowEvaluation()
  convenience init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(withCoder aCoder: Coder)
  @available(watchOS 2.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
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
