
@available(OSX 10.5, *)
class NSPredicateEditorRowTemplate : NSObject, NSCoding, NSCopying {
  func match(for predicate: NSPredicate) -> Double
  var templateViews: [NSView] { get }
  func setPredicate(_ predicate: NSPredicate)
  func predicate(withSubpredicates subpredicates: [NSPredicate]?) -> NSPredicate
  func displayableSubpredicates(of predicate: NSPredicate) -> [NSPredicate]?
  init(leftExpressions leftExpressions: [NSExpression], rightExpressions rightExpressions: [NSExpression], modifier modifier: NSComparisonPredicateModifier, operators operators: [NSNumber], options options: Int)
  init(leftExpressions leftExpressions: [NSExpression], rightExpressionAttributeType attributeType: NSAttributeType, modifier modifier: NSComparisonPredicateModifier, operators operators: [NSNumber], options options: Int)
  init(compoundTypes compoundTypes: [NSNumber])
  var leftExpressions: [NSExpression]? { get }
  var rightExpressions: [NSExpression]? { get }
  var rightExpressionAttributeType: NSAttributeType { get }
  var modifier: NSComparisonPredicateModifier { get }
  var operators: [NSNumber]? { get }
  var options: Int { get }
  var compoundTypes: [NSNumber]? { get }
  class func templates(withAttributeKeyPaths keyPaths: [String], in entityDescription: NSEntityDescription) -> [NSPredicateEditorRowTemplate]
  @available(OSX 10.5, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
