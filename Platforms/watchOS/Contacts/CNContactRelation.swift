
@available(watchOS 2.0, *)
class CNContactRelation : NSObject, NSCopying, NSSecureCoding {
  init(name name: String)
  var name: String { get }
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
let CNLabelContactRelationFather: String
@available(watchOS 2.0, *)
let CNLabelContactRelationMother: String
@available(watchOS 2.0, *)
let CNLabelContactRelationParent: String
@available(watchOS 2.0, *)
let CNLabelContactRelationBrother: String
@available(watchOS 2.0, *)
let CNLabelContactRelationSister: String
@available(watchOS 2.0, *)
let CNLabelContactRelationChild: String
@available(watchOS 2.0, *)
let CNLabelContactRelationFriend: String
@available(watchOS 2.0, *)
let CNLabelContactRelationSpouse: String
@available(watchOS 2.0, *)
let CNLabelContactRelationPartner: String
@available(watchOS 2.0, *)
let CNLabelContactRelationAssistant: String
@available(watchOS 2.0, *)
let CNLabelContactRelationManager: String
