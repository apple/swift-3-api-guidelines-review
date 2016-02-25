
@available(OSX 10.5, *)
class NSPredicateEditorRowTemplate : NSObject, NSCoding, NSCopying {
  func matchForPredicate(_ predicate: NSPredicate) -> Double
  var templateViews: [NSView] { get }
  func setPredicate(_ predicate: NSPredicate)
  func predicateWithSubpredicates(_ subpredicates: [NSPredicate]?) -> NSPredicate
  func displayableSubpredicatesOfPredicate(_ predicate: NSPredicate) -> [NSPredicate]?
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
  class func templatesWithAttributeKeyPaths(_ keyPaths: [String], inEntityDescription entityDescription: NSEntityDescription) -> [NSPredicateEditorRowTemplate]
  @available(OSX 10.5, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
