
@available(iOS 9.0, *)
class CSSearchableItemAttributeSet : NSObject, NSCopying, NSSecureCoding {
  init(itemContentType itemContentType: String)
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CSLocalizedString : NSString {
  init(localizedStrings localizedStrings: [NSObject : AnyObject])
  func localizedString() -> String
}
@available(iOS 9.0, *)
class CSCustomAttributeKey : NSObject, NSCopying, NSSecureCoding {
  convenience init?(keyName keyName: String)
  init?(keyName keyName: String, searchable searchable: Bool, searchableByDefault searchableByDefault: Bool, unique unique: Bool, multiValued multiValued: Bool)
  var keyName: String { get }
  var searchable: Bool { get }
  var searchableByDefault: Bool { get }
  var unique: Bool { get }
  var multiValued: Bool { get }
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension CSSearchableItemAttributeSet {
  func setValue(_ value: NSSecureCoding?, forCustomKey key: CSCustomAttributeKey)
  func valueForCustomKey(_ key: CSCustomAttributeKey) -> NSSecureCoding?
}
extension NSUserActivity {
  @available(iOS 9.0, *)
  @NSCopying var contentAttributeSet: CSSearchableItemAttributeSet?
}
