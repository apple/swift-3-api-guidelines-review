
@available(watchOS 2.0, *)
class CNContactRelation : NSObject, NSCopying, NSSecureCoding {
  init(name: String)
  var name: String { get }
  init()
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
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
