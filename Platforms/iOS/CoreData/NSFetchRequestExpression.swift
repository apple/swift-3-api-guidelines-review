
let NSFetchRequestExpressionType: ExpressionType
@available(iOS 3.0, *)
class NSFetchRequestExpression : Expression {
  class func expressionForFetch(fetch: Expression, context: Expression, countOnly countFlag: Bool) -> Expression
  var requestExpression: Expression { get }
  var contextExpression: Expression { get }
  var isCountOnlyRequest: Bool { get }
  init(expressionType type: ExpressionType)
  init?(coder: Coder)
  convenience init()
}
struct _fetchExpressionFlags {
  var isCountOnly: UInt32
  var _RESERVED: UInt32
  init()
  init(isCountOnly: UInt32, _RESERVED: UInt32)
}
