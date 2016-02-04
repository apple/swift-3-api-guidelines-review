
@available(iOS 9.0, *)
class CSSearchableItemAttributeSet : NSObject, NSCopying, NSSecureCoding {
  init(itemContentType: String)
  init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CSLocalizedString : NSString {
  init(localizedStrings: [NSObject : AnyObject])
  func localizedString() -> String
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
@available(iOS 9.0, *)
class CSCustomAttributeKey : NSObject, NSCopying, NSSecureCoding {
  convenience init?(keyName: String)
  init?(keyName: String, searchable: Bool, searchableByDefault: Bool, unique: Bool, multiValued: Bool)
  var keyName: String { get }
  var searchable: Bool { get }
  var searchableByDefault: Bool { get }
  var unique: Bool { get }
  var multiValued: Bool { get }
  convenience init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension CSSearchableItemAttributeSet {
  func setValue(value: NSSecureCoding?, forCustomKey key: CSCustomAttributeKey)
  func valueForCustomKey(key: CSCustomAttributeKey) -> NSSecureCoding?
}
extension NSUserActivity {
  @available(iOS 9.0, *)
  @NSCopying var contentAttributeSet: CSSearchableItemAttributeSet?
}
