
class NSClassDescription : NSObject {
  class func registerClassDescription(_ description: NSClassDescription, forClass aClass: AnyClass)
  class func invalidateClassDescriptionCache()
  /*not inherited*/ init?(forClass aClass: AnyClass)
}
extension NSObject {
  @NSCopying var classDescription: NSClassDescription { get }
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  class func inverseForRelationshipKey(_ relationshipKey: String) -> String?
  func inverseForRelationshipKey(_ relationshipKey: String) -> String?
  class func classDescription() -> NSClassDescription
  class func attributeKeys() -> [String]
  class func toOneRelationshipKeys() -> [String]
  class func toManyRelationshipKeys() -> [String]
}
let NSClassDescriptionNeededForClassNotification: String
