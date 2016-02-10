
class NSColorList : Object, SecureCoding {
  class func availableColorLists() -> [NSColorList]
  /*not inherited*/ init?(named name: String)
  init(name: String)
  init?(name: String, fromFile path: String?)
  var name: String? { get }
  func setColor(color: NSColor, forKey key: String)
  func insert(color: NSColor, key: String, at loc: Int)
  func removeColor(key key: String)
  func color(withKey key: String) -> NSColor?
  var allKeys: [String] { get }
  var isEditable: Bool { get }
  func write(toFile path: String?) -> Bool
  func removeFile()
  init()
  class func supportsSecureCoding() -> Bool
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct _colorListFlags {
  var colorsLoaded: UInt32
  var editable: UInt32
  var hasDeviceSpecificLists: UInt32
  var dirty: UInt32
  var hasFrozen: UInt32
  var notificationsDisabled: UInt32
  var hasAttemptedLoadingBundleForDirectory: UInt32
  var isProfileBased: UInt32
  init()
  init(colorsLoaded: UInt32, editable: UInt32, hasDeviceSpecificLists: UInt32, dirty: UInt32, hasFrozen: UInt32, notificationsDisabled: UInt32, hasAttemptedLoadingBundleForDirectory: UInt32, isProfileBased: UInt32)
}
let NSColorListDidChangeNotification: String
