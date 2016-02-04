
@available(OSX 10.11, *)
class CNContactRelation : Object, Copying, SecureCoding {
  init(name: String)
  var name: String { get }
  init()
  @available(OSX 10.11, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.11, *)
let CNLabelContactRelationFather: String
@available(OSX 10.11, *)
let CNLabelContactRelationMother: String
@available(OSX 10.11, *)
let CNLabelContactRelationParent: String
@available(OSX 10.11, *)
let CNLabelContactRelationBrother: String
@available(OSX 10.11, *)
let CNLabelContactRelationSister: String
@available(OSX 10.11, *)
let CNLabelContactRelationChild: String
@available(OSX 10.11, *)
let CNLabelContactRelationFriend: String
@available(OSX 10.11, *)
let CNLabelContactRelationSpouse: String
@available(OSX 10.11, *)
let CNLabelContactRelationPartner: String
@available(OSX 10.11, *)
let CNLabelContactRelationAssistant: String
@available(OSX 10.11, *)
let CNLabelContactRelationManager: String
