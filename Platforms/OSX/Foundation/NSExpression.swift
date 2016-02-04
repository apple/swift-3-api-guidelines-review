
enum NSExpressionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ConstantValueExpressionType
  case EvaluatedObjectExpressionType
  case VariableExpressionType
  case KeyPathExpressionType
  case FunctionExpressionType
  @available(OSX 10.5, *)
  case UnionSetExpressionType
  @available(OSX 10.5, *)
  case IntersectSetExpressionType
  @available(OSX 10.5, *)
  case MinusSetExpressionType
  @available(OSX 10.5, *)
  case SubqueryExpressionType
  @available(OSX 10.5, *)
  case AggregateExpressionType
  @available(OSX 10.9, *)
  case AnyKeyExpressionType
  case BlockExpressionType
  @available(OSX 10.11, *)
  case ConditionalExpressionType
}
@available(OSX 10.4, *)
class NSExpression : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.6, *)
  /*not inherited*/ init(format expressionFormat: String, argumentArray arguments: [AnyObject])
  @available(OSX 10.6, *)
  /*not inherited*/ init(format expressionFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(forConstantValue obj: AnyObject?)
  class func expressionForEvaluatedObject() -> NSExpression
  /*not inherited*/ init(forVariable string: String)
  /*not inherited*/ init(forKeyPath keyPath: String)
  /*not inherited*/ init(forFunction name: String, arguments parameters: [AnyObject])
  @available(OSX 10.5, *)
  /*not inherited*/ init(forAggregate subexpressions: [AnyObject])
  @available(OSX 10.5, *)
  /*not inherited*/ init(forUnionSet left: NSExpression, with right: NSExpression)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forIntersectSet left: NSExpression, with right: NSExpression)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forMinusSet left: NSExpression, with right: NSExpression)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forSubquery expression: NSExpression, usingIteratorVariable variable: String, predicate: AnyObject)
  @available(OSX 10.5, *)
  /*not inherited*/ init(forFunction target: NSExpression, selectorName name: String, arguments parameters: [AnyObject]?)
  @available(OSX 10.9, *)
  class func expressionForAnyKey() -> NSExpression
  @available(OSX 10.6, *)
  /*not inherited*/ init(forBlock block: (AnyObject?, [AnyObject], NSMutableDictionary?) -> AnyObject, arguments: [NSExpression]?)
  @available(OSX 10.11, *)
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
  @available(OSX 10.5, *)
  var collection: AnyObject { get }
  @available(OSX 10.5, *)
  @NSCopying var predicate: NSPredicate { get }
  @available(OSX 10.5, *)
  @NSCopying var leftExpression: NSExpression { get }
  @available(OSX 10.5, *)
  @NSCopying var rightExpression: NSExpression { get }
  @available(OSX 10.11, *)
  @NSCopying var trueExpression: NSExpression { get }
  @available(OSX 10.11, *)
  @NSCopying var falseExpression: NSExpression { get }
  @available(OSX 10.6, *)
  var expressionBlock: (AnyObject?, [AnyObject], NSMutableDictionary?) -> AnyObject { get }
  func expressionValueWithObject(object: AnyObject?, context: NSMutableDictionary?) -> AnyObject
  @available(OSX 10.9, *)
  func allowEvaluation()
  convenience init()
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(OSX 10.4, *)
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
