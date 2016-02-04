
class ClassDescription : Object {
  class func register(description: ClassDescription, forClass aClass: AnyClass)
  class func invalidateClassDescriptionCache()
  /*not inherited*/ init?(forClass aClass: AnyClass)
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  func inverseForRelationshipKey(relationshipKey: String) -> String?
  init()
}
extension Object {
  @NSCopying var classDescription: ClassDescription { get }
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  class func inverseForRelationshipKey(relationshipKey: String) -> String?
  func inverseForRelationshipKey(relationshipKey: String) -> String?
  class func classDescription() -> ClassDescription
  class func attributeKeys() -> [String]
  class func toOneRelationshipKeys() -> [String]
  class func toManyRelationshipKeys() -> [String]
}
let classDescriptionNeededForClassNotification: String
