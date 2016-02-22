
@available(OSX 10.5, *)
class NSPredicateEditorRowTemplate : NSObject, NSCoding, NSCopying {
  func match(for predicate: NSPredicate) -> Double
  var templateViews: [NSView] { get }
  func setPredicate(predicate: NSPredicate)
  func predicate(withSubpredicates subpredicates: [NSPredicate]?) -> NSPredicate
  func displayableSubpredicatesOf(predicate: NSPredicate) -> [NSPredicate]?
  init(leftExpressions: [NSExpression], rightExpressions: [NSExpression], modifier: NSComparisonPredicateModifier, operators: [NSNumber], options: Int)
  init(leftExpressions: [NSExpression], rightExpressionAttributeType attributeType: NSAttributeType, modifier: NSComparisonPredicateModifier, operators: [NSNumber], options: Int)
  init(compoundTypes: [NSNumber])
  var leftExpressions: [NSExpression]? { get }
  var rightExpressions: [NSExpression]? { get }
  var rightExpressionAttributeType: NSAttributeType { get }
  var modifier: NSComparisonPredicateModifier { get }
  var operators: [NSNumber]? { get }
  var options: Int { get }
  var compoundTypes: [NSNumber]? { get }
  class func templates(withAttributeKeyPaths keyPaths: [String], in entityDescription: NSEntityDescription) -> [NSPredicateEditorRowTemplate]
  init()
  @available(OSX 10.5, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
