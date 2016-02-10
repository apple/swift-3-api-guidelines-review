
@available(iOS 3.0, *)
class MPMediaLibrary : Object, SecureCoding {
  class func defaultMediaLibrary() -> MPMediaLibrary
  var lastModifiedDate: Date { get }
  func beginGeneratingLibraryChangeNotifications()
  func endGeneratingLibraryChangeNotifications()
  init()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let MPMediaLibraryDidChangeNotification: String
