
@available(watchOS 2.0, *)
class CNContactRelation : Object, Copying, SecureCoding {
  init(name: String)
  var name: String { get }
  init()
  @available(watchOS 2.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
