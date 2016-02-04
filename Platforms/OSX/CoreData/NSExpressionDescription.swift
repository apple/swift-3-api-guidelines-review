
@available(OSX 10.6, *)
class NSExpressionDescription : NSPropertyDescription {
  var expression: Expression?
  var expressionResultType: NSAttributeType
  init()
  init?(coder aDecoder: Coder)
}
