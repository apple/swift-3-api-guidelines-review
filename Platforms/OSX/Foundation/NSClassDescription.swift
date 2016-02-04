
class NSClassDescription : NSObject {
  class func registerClassDescription(description: NSClassDescription, forClass aClass: AnyClass)
  class func invalidateClassDescriptionCache()
  /*not inherited*/ init?(forClass aClass: AnyClass)
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  func inverseForRelationshipKey(relationshipKey: String) -> String?
  init()
}
extension NSObject {
  @NSCopying var classDescription: NSClassDescription { get }
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  class func inverseForRelationshipKey(relationshipKey: String) -> String?
  func inverseForRelationshipKey(relationshipKey: String) -> String?
  class func classDescription() -> NSClassDescription
  class func attributeKeys() -> [String]
  class func toOneRelationshipKeys() -> [String]
  class func toManyRelationshipKeys() -> [String]
}
let NSClassDescriptionNeededForClassNotification: String
