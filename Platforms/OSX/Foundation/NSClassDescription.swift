
class ClassDescription : Object {
  class func register(description: ClassDescription, for aClass: AnyClass)
  class func invalidateClassDescriptionCache()
  /*not inherited*/ init?(for aClass: AnyClass)
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  func inverse(forRelationshipKey relationshipKey: String) -> String?
  init()
}
extension Object {
  @NSCopying var classDescription: ClassDescription { get }
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  class func inverse(forRelationshipKey relationshipKey: String) -> String?
  func inverse(forRelationshipKey relationshipKey: String) -> String?
  class func classDescription() -> ClassDescription
  class func attributeKeys() -> [String]
  class func toOneRelationshipKeys() -> [String]
  class func toManyRelationshipKeys() -> [String]
}
let classDescriptionNeededForClassNotification: String
