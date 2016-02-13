
enum ExpressionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case constantValueExpressionType
  case evaluatedObjectExpressionType
  case variableExpressionType
  case keyPathExpressionType
  case functionExpressionType
  @available(OSX 10.5, *)
  case unionSetExpressionType
  @available(OSX 10.5, *)
  case intersectSetExpressionType
  @available(OSX 10.5, *)
  case minusSetExpressionType
  @available(OSX 10.5, *)
  case subqueryExpressionType
  @available(OSX 10.5, *)
  case aggregateExpressionType
  @available(OSX 10.9, *)
  case anyKeyExpressionType
  case blockExpressionType
  @available(OSX 10.11, *)
  case conditionalExpressionType
}
@available(OSX 10.4, *)
class Expression : Object, SecureCoding, Copying {
  @available(OSX 10.6, *)
  /*not inherited*/ init(format expressionFormat: String, argumentArray arguments: [AnyObject])
  @available(OSX 10.6, *)
  /*not inherited*/ init(format expressionFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(forConstantValue obj: AnyObject?)
  class func forEvaluatedObject() -> Expression
  /*not inherited*/ init(forVariable string: String)
  /*not inherited*/ init(forKeyPath keyPath: String)
  /*not inherited*/ init(forFunction name: String, arguments parameters: [AnyObject])
  @available(OSX 10.5, *)
  /*not inherited*/ init(forAggregate subexpressions: [AnyObject])
  @available(OSX 10.5, *)
  /*not inherited*/ init(forUnionSet left: Expression, with right: Expression)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forIntersectSet left: Expression, with right: Expression)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forMinusSet left: Expression, with right: Expression)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forSubquery expression: Expression, usingIteratorVariable variable: String, predicate: AnyObject)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forFunction target: Expression, selectorName name: String, arguments parameters: [AnyObject]?)
  @available(OSX 10.9, *)
  class func forAnyKey() -> Expression
  @available(OSX 10.6, *)
  /*not inherited*/ init(for block: (AnyObject?, [AnyObject], MutableDictionary?) -> AnyObject, arguments: [Expression]?)
  @available(OSX 10.11, *)
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
  @available(OSX 10.5, *)
  var collection: AnyObject { get }
  @available(OSX 10.5, *)
  @NSCopying var predicate: Predicate { get }
  @available(OSX 10.5, *)
  @NSCopying var left: Expression { get }
  @available(OSX 10.5, *)
  @NSCopying var right: Expression { get }
  @available(OSX 10.11, *)
  @NSCopying var trueExpression: Expression { get }
  @available(OSX 10.11, *)
  @NSCopying var falseExpression: Expression { get }
  @available(OSX 10.6, *)
  var expressionBlock: (AnyObject?, [AnyObject], MutableDictionary?) -> AnyObject { get }
  func expressionValue(object: AnyObject?, context: MutableDictionary?) -> AnyObject
  @available(OSX 10.9, *)
  func allowEvaluation()
  convenience init()
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encode(aCoder: Coder)
  @available(OSX 10.4, *)
  func copy(zone: Zone = nil) -> AnyObject
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
