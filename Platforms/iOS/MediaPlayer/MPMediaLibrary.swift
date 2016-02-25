
@available(iOS 3.0, *)
class MPMediaLibrary : NSObject, NSSecureCoding {
  class func defaultMediaLibrary() -> MPMediaLibrary
  var lastModifiedDate: NSDate { get }
  func beginGeneratingLibraryChangeNotifications()
  func endGeneratingLibraryChangeNotifications()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let MPMediaLibraryDidChangeNotification: String
