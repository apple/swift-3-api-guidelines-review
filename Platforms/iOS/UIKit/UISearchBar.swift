
enum UISearchBarIcon : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Search
  case Clear
  case Bookmark
  case ResultsList
}
@available(iOS 7.0, *)
enum UISearchBarStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Prominent
  case Minimal
}
@available(iOS 2.0, *)
class UISearchBar : UIView, UIBarPositioning, UITextInputTraits {
  var barStyle: UIBarStyle
  weak var delegate: @sil_weak UISearchBarDelegate?
  var text: String?
  var prompt: String?
  var placeholder: String?
  var showsBookmarkButton: Bool
  var showsCancelButton: Bool
  @available(iOS 3.2, *)
  var showsSearchResultsButton: Bool
  @available(iOS 3.2, *)
  var searchResultsButtonSelected: Bool
  @available(iOS 3.0, *)
  func setShowsCancelButton(_ showsCancelButton: Bool, animated animated: Bool)
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 7.0, *)
  var searchBarStyle: UISearchBarStyle
  @available(iOS 3.0, *)
  var translucent: Bool
  @available(iOS 3.0, *)
  var scopeButtonTitles: [String]?
  @available(iOS 3.0, *)
  var selectedScopeButtonIndex: Int
  @available(iOS 3.0, *)
  var showsScopeBar: Bool
  @available(iOS 5.0, *)
  var backgroundImage: UIImage?
  @available(iOS 5.0, *)
  var scopeBarBackgroundImage: UIImage?
  @available(iOS 7.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics barMetrics: UIBarMetrics)
  @available(iOS 7.0, *)
  func backgroundImageForBarPosition(_ barPosition: UIBarPosition, barMetrics barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setSearchFieldBackgroundImage(_ backgroundImage: UIImage?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func searchFieldBackgroundImageForState(_ state: UIControlState) -> UIImage?
  @available(iOS 5.0, *)
  func setImage(_ iconImage: UIImage?, forSearchBarIcon icon: UISearchBarIcon, state state: UIControlState)
  @available(iOS 5.0, *)
  func imageForSearchBarIcon(_ icon: UISearchBarIcon, state state: UIControlState) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonBackgroundImage(_ backgroundImage: UIImage?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func scopeBarButtonBackgroundImageForState(_ state: UIControlState) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  @available(iOS 5.0, *)
  func scopeBarButtonDividerImageForLeftSegmentState(_ leftState: UIControlState, rightSegmentState rightState: UIControlState) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonTitleTextAttributes(_ attributes: [String : AnyObject]?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func scopeBarButtonTitleTextAttributesForState(_ state: UIControlState) -> [String : AnyObject]?
  @available(iOS 5.0, *)
  var searchFieldBackgroundPositionAdjustment: UIOffset
  @available(iOS 5.0, *)
  var searchTextPositionAdjustment: UIOffset
  @available(iOS 5.0, *)
  func setPositionAdjustment(_ adjustment: UIOffset, forSearchBarIcon icon: UISearchBarIcon)
  @available(iOS 5.0, *)
  func positionAdjustmentForSearchBarIcon(_ icon: UISearchBarIcon) -> UIOffset
  @available(iOS 7.0, *)
  var barPosition: UIBarPosition { get }
  @available(iOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(iOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(iOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(iOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(iOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(iOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(iOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(iOS 2.0, *)
  var secureTextEntry: Bool
}
protocol UISearchBarDelegate : UIBarPositioningDelegate {
  @available(iOS 2.0, *)
  optional func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarTextDidBeginEditing(_ searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarTextDidEndEditing(_ searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
  @available(iOS 3.0, *)
  optional func searchBar(_ searchBar: UISearchBar, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarCancelButtonClicked(_ searchBar: UISearchBar)
  @available(iOS 3.2, *)
  optional func searchBarResultsListButtonClicked(_ searchBar: UISearchBar)
  @available(iOS 3.0, *)
  optional func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
}
