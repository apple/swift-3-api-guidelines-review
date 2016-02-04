
@available(tvOS 3.0, *)
class NSExpressionDescription : NSPropertyDescription {
  var expression: Expression?
  var expressionResultType: NSAttributeType
  init()
  init?(coder aDecoder: Coder)
}
