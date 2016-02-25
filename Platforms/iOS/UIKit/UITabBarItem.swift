
enum UITabBarSystemItem : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case More
  case Favorites
  case Featured
  case TopRated
  case Recents
  case Contacts
  case History
  case Bookmarks
  case Search
  case Downloads
  case MostRecent
  case MostViewed
}
@available(iOS 2.0, *)
class UITabBarItem : UIBarItem {
  convenience init(title title: String?, image image: UIImage?, tag tag: Int)
  @available(iOS 7.0, *)
  convenience init(title title: String?, image image: UIImage?, selectedImage selectedImage: UIImage?)
  convenience init(tabBarSystemItem systemItem: UITabBarSystemItem, tag tag: Int)
  @available(iOS 7.0, *)
  var selectedImage: UIImage?
  var badgeValue: String?
  @available(iOS 5.0, *)
  var titlePositionAdjustment: UIOffset
}
