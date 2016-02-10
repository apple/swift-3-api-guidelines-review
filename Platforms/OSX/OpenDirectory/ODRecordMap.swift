
@available(OSX 10.9, *)
class ODRecordMap : Object {
  @available(OSX 10.9, *)
  var native: String!
  @available(OSX 10.9, *)
  var odPredicate: [Object : AnyObject]!
  @available(OSX 10.9, *)
  var attributes: [Object : AnyObject]! { get }
  @available(OSX 10.9, *)
  var standardAttributeTypes: [AnyObject]! { get }
  @available(OSX 10.9, *)
  func attributeMap(forStandardAttribute standardAttribute: String!) -> ODAttributeMap!
  @available(OSX 10.9, *)
  func setAttributeMap(attributeMap: ODAttributeMap!, forStandardAttribute standardAttribute: String!)
  init()
}
