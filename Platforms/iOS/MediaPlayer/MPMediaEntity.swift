
typealias MPMediaEntityPersistentID = UInt64
@available(iOS 4.2, *)
class MPMediaEntity : Object, SecureCoding {
  class func canFilter(byProperty property: String) -> Bool
  @available(iOS 4.0, *)
  func enumerateValues(forProperties properties: Set<String>, using block: (String, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  subscript(key: AnyObject) -> AnyObject? { get }
  func value(forProperty property: String) -> AnyObject?
  @available(iOS 7.0, *)
  var persistentID: MPMediaEntityPersistentID { get }
  init()
  @available(iOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.2, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 4.2, *)
let MPMediaEntityPropertyPersistentID: String
