
@available(watchOS 2.0, *)
class NSExpressionDescription : NSPropertyDescription {
  var expression: Expression?
  var expressionResultType: NSAttributeType
  init()
  init?(coder aDecoder: Coder)
}
