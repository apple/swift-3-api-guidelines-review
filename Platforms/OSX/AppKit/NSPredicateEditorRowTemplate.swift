
@available(OSX 10.5, *)
class NSPredicateEditorRowTemplate : Object, Coding, Copying {
  func match(forPredicate predicate: Predicate) -> Double
  var templateViews: [NSView] { get }
  func setPredicate(predicate: Predicate)
  func predicate(withSubpredicates subpredicates: [Predicate]?) -> Predicate
  func displayableSubpredicates(of predicate: Predicate) -> [Predicate]?
  init(leftExpressions: [Expression], rightExpressions: [Expression], modifier: ComparisonPredicateModifier, operators: [Number], options: Int)
  init(leftExpressions: [Expression], rightExpressionAttributeType attributeType: NSAttributeType, modifier: ComparisonPredicateModifier, operators: [Number], options: Int)
  init(compoundTypes: [Number])
  var leftExpressions: [Expression]? { get }
  var rightExpressions: [Expression]? { get }
  var rightExpressionAttributeType: NSAttributeType { get }
  var modifier: ComparisonPredicateModifier { get }
  var operators: [Number]? { get }
  var options: Int { get }
  var compoundTypes: [Number]? { get }
  class func templates(withAttributeKeyPaths keyPaths: [String], in entityDescription: NSEntityDescription) -> [NSPredicateEditorRowTemplate]
  init()
  @available(OSX 10.5, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.5, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
