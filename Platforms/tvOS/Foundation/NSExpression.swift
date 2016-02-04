
enum NSExpressionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ConstantValueExpressionType
  case EvaluatedObjectExpressionType
  case VariableExpressionType
  case KeyPathExpressionType
  case FunctionExpressionType
  @available(tvOS 3.0, *)
  case UnionSetExpressionType
  @available(tvOS 3.0, *)
  case IntersectSetExpressionType
  @available(tvOS 3.0, *)
  case MinusSetExpressionType
  @available(tvOS 3.0, *)
  case SubqueryExpressionType
  @available(tvOS 3.0, *)
  case AggregateExpressionType
  @available(tvOS 7.0, *)
  case AnyKeyExpressionType
  case BlockExpressionType
  @available(tvOS 9.0, *)
  case ConditionalExpressionType
}
@available(tvOS 3.0, *)
class NSExpression : NSObject, NSSecureCoding, NSCopying {
  @available(tvOS 4.0, *)
  /*not inherited*/ init(format expressionFormat: String, argumentArray arguments: [AnyObject])
  @available(tvOS 4.0, *)
  /*not inherited*/ init(format expressionFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(forConstantValue obj: AnyObject?)
  class func expressionForEvaluatedObject() -> NSExpression
  /*not inherited*/ init(forVariable string: String)
  /*not inherited*/ init(forKeyPath keyPath: String)
  /*not inherited*/ init(forFunction name: String, arguments parameters: [AnyObject])
  @available(tvOS 3.0, *)
  /*not inherited*/ init(forAggregate subexpressions: [AnyObject])
  @available(tvOS 3.0, *)
  /*not inherited*/ init(forUnionSet left: NSExpression, with right: NSExpression)
  @available(tvOS 3.0, *)
  /*not inherited*/ init(forIntersectSet left: NSExpression, with right: NSExpression)
  @available(tvOS 3.0, *)
  /*not inherited*/ init(forMinusSet left: NSExpression, with right: NSExpression)
  @available(tvOS 3.0, *)
  /*not inherited*/ init(forSubquery expression: NSExpression, usingIteratorVariable variable: String, predicate: AnyObject)
  @available(tvOS 3.0, *)
  /*not inherited*/ init(forFunction target: NSExpression, selectorName name: String, arguments parameters: [AnyObject]?)
  @available(tvOS 7.0, *)
  class func expressionForAnyKey() -> NSExpression
  @available(tvOS 4.0, *)
  /*not inherited*/ init(forBlock block: (AnyObject?, [AnyObject], NSMutableDictionary?) -> AnyObject, arguments: [NSExpression]?)
  @available(tvOS 9.0, *)
  /*not inherited*/ init(forConditional predicate: NSPredicate, trueExpression: NSExpression, falseExpression: NSExpression)
  init(expressionType type: NSExpressionType)
  init?(coder: NSCoder)
  var expressionType: NSExpressionType { get }
  var constantValue: AnyObject { get }
  var keyPath: String { get }
  var function: String { get }
  var variable: String { get }
  @NSCopying var operand: NSExpression { get }
  var arguments: [NSExpression]? { get }
  @available(tvOS 3.0, *)
  var collection: AnyObject { get }
  @available(tvOS 3.0, *)
  @NSCopying var predicate: NSPredicate { get }
  @available(tvOS 3.0, *)
  @NSCopying var leftExpression: NSExpression { get }
  @available(tvOS 3.0, *)
  @NSCopying var rightExpression: NSExpression { get }
  @available(tvOS 9.0, *)
  @NSCopying var trueExpression: NSExpression { get }
  @available(tvOS 9.0, *)
  @NSCopying var falseExpression: NSExpression { get }
  @available(tvOS 4.0, *)
  var expressionBlock: (AnyObject?, [AnyObject], NSMutableDictionary?) -> AnyObject { get }
  func expressionValueWithObject(object: AnyObject?, context: NSMutableDictionary?) -> AnyObject
  @available(tvOS 7.0, *)
  func allowEvaluation()
  convenience init()
  @available(tvOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 3.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(tvOS 3.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

extension NSExpression {
  convenience init(format expressionFormat: String, _ args: CVarArgType...)
}
struct _expressionFlags {
  var _evaluationBlocked: UInt32
  var _reservedExpressionFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedExpressionFlags: UInt32)
}
