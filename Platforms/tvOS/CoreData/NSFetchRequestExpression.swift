
let NSFetchRequestExpressionType: NSExpressionType
@available(tvOS 3.0, *)
class NSFetchRequestExpression : NSExpression {
  class func expressionForFetch(fetch: NSExpression, context: NSExpression, countOnly countFlag: Bool) -> NSExpression
  var requestExpression: NSExpression { get }
  var contextExpression: NSExpression { get }
  var countOnlyRequest: Bool { get }
  init(expressionType type: NSExpressionType)
  init?(coder: NSCoder)
  convenience init()
}
struct _fetchExpressionFlags {
  var isCountOnly: UInt32
  var _RESERVED: UInt32
  init()
  init(isCountOnly: UInt32, _RESERVED: UInt32)
}
