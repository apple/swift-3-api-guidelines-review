
enum UISearchBarIcon : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case search
}
@available(tvOS 7.0, *)
enum UISearchBarStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case prominent
  case minimal
}
@available(tvOS 2.0, *)
class UISearchBar : UIView, UIBarPositioning, UITextInputTraits {
  weak var delegate: @sil_weak UISearchBarDelegate?
  var text: String?
  var prompt: String?
  var placeholder: String?
  @available(tvOS 7.0, *)
  var barTintColor: UIColor?
  @available(tvOS 7.0, *)
  var searchBarStyle: UISearchBarStyle
  @available(tvOS 3.0, *)
  var isTranslucent: Bool
  @available(tvOS 3.0, *)
  var scopeButtonTitles: [String]?
  @available(tvOS 3.0, *)
  var selectedScopeButtonIndex: Int
  @available(tvOS 3.0, *)
  var showsScopeBar: Bool
  @available(tvOS 5.0, *)
  var backgroundImage: UIImage?
  @available(tvOS 5.0, *)
  var scopeBarBackgroundImage: UIImage?
  @available(tvOS 7.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics barMetrics: UIBarMetrics)
  @available(tvOS 7.0, *)
  func backgroundImage(for barPosition: UIBarPosition, barMetrics barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setSearchFieldBackgroundImage(_ backgroundImage: UIImage?, for state: UIControlState)
  @available(tvOS 5.0, *)
  func searchFieldBackgroundImage(for state: UIControlState) -> UIImage?
  @available(tvOS 5.0, *)
  func setImage(_ iconImage: UIImage?, for icon: UISearchBarIcon, state state: UIControlState)
  @available(tvOS 5.0, *)
  func image(for icon: UISearchBarIcon, state state: UIControlState) -> UIImage?
  @available(tvOS 5.0, *)
  func setScopeBarButtonBackgroundImage(_ backgroundImage: UIImage?, for state: UIControlState)
  @available(tvOS 5.0, *)
  func scopeBarButtonBackgroundImage(for state: UIControlState) -> UIImage?
  @available(tvOS 5.0, *)
  func setScopeBarButtonDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  @available(tvOS 5.0, *)
  func scopeBarButtonDividerImage(forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState) -> UIImage?
  @available(tvOS 5.0, *)
  func setScopeBarButtonTitleTextAttributes(_ attributes: [String : AnyObject]?, for state: UIControlState)
  @available(tvOS 5.0, *)
  func scopeBarButtonTitleTextAttributes(for state: UIControlState) -> [String : AnyObject]?
  @available(tvOS 5.0, *)
  var searchFieldBackgroundPositionAdjustment: UIOffset
  @available(tvOS 5.0, *)
  var searchTextPositionAdjustment: UIOffset
  @available(tvOS 5.0, *)
  func setPositionAdjustment(_ adjustment: UIOffset, for icon: UISearchBarIcon)
  @available(tvOS 5.0, *)
  func positionAdjustment(for icon: UISearchBarIcon) -> UIOffset
  @available(tvOS 7.0, *)
  var barPosition: UIBarPosition { get }
  @available(tvOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(tvOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(tvOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(tvOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(tvOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(tvOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(tvOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(tvOS 2.0, *)
  var isSecureTextEntry: Bool
}
protocol UISearchBarDelegate : UIBarPositioningDelegate {
  @available(tvOS 2.0, *)
  optional func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool
  @available(tvOS 2.0, *)
  optional func searchBarTextDidBeginEditing(_ searchBar: UISearchBar)
  @available(tvOS 2.0, *)
  optional func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool
  @available(tvOS 2.0, *)
  optional func searchBarTextDidEndEditing(_ searchBar: UISearchBar)
  @available(tvOS 2.0, *)
  optional func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
  @available(tvOS 3.0, *)
  optional func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(tvOS 2.0, *)
  optional func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
  @available(tvOS 3.0, *)
  optional func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
}
