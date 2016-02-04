
@available(OSX 10.5, *)
class NSPredicateEditorRowTemplate : NSObject, NSCoding, NSCopying {
  func matchForPredicate(predicate: NSPredicate) -> Double
  var templateViews: [NSView] { get }
  func setPredicate(predicate: NSPredicate)
  func predicateWithSubpredicates(subpredicates: [NSPredicate]?) -> NSPredicate
  func displayableSubpredicatesOfPredicate(predicate: NSPredicate) -> [NSPredicate]?
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
  class func templatesWithAttributeKeyPaths(keyPaths: [String], inEntityDescription entityDescription: NSEntityDescription) -> [NSPredicateEditorRowTemplate]
  init()
  @available(OSX 10.5, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
