
class NSColorList : NSObject, NSSecureCoding {
  class func availableColorLists() -> [NSColorList]
  /*not inherited*/ init?(named name: String)
  init(name: String)
  init?(name: String, fromFile path: String?)
  var name: String? { get }
  func setColor(color: NSColor, forKey key: String)
  func insertColor(color: NSColor, key: String, atIndex loc: Int)
  func removeColorWithKey(key: String)
  func colorWithKey(key: String) -> NSColor?
  var allKeys: [String] { get }
  var editable: Bool { get }
  func writeToFile(path: String?) -> Bool
  func removeFile()
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
