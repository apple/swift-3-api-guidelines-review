
enum UISearchBarIcon : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Search
  case Clear
  case Bookmark
  case ResultsList
}
@available(iOS 7.0, *)
enum UISearchBarStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Prominent
  case Minimal
}
@available(iOS 2.0, *)
class UISearchBar : UIView, UIBarPositioning, UITextInputTraits {
  convenience init()
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
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
  var isSearchResultsButtonSelected: Bool
  @available(iOS 3.0, *)
  func setShowsCancelButton(showsCancelButton: Bool, animated: Bool)
  @available(iOS 9.0, *)
  var inputAssistantItem: UITextInputAssistantItem { get }
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 7.0, *)
  var searchBarStyle: UISearchBarStyle
  @available(iOS 3.0, *)
  var isTranslucent: Bool
  @available(iOS 3.0, *)
  var scopeButtonTitles: [String]?
  @available(iOS 3.0, *)
  var selectedScopeButtonIndex: Int
  @available(iOS 3.0, *)
  var showsScopeBar: Bool
  var inputAccessoryView: UIView?
  @available(iOS 5.0, *)
  var backgroundImage: UIImage?
  @available(iOS 5.0, *)
  var scopeBarBackgroundImage: UIImage?
  @available(iOS 7.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 7.0, *)
  func backgroundImageFor(barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setSearchFieldBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func searchFieldBackgroundImageFor(state: UIControlState) -> UIImage?
  @available(iOS 5.0, *)
  func setImage(iconImage: UIImage?, forSearchBarIcon icon: UISearchBarIcon, state: UIControlState)
  @available(iOS 5.0, *)
  func imageFor(icon: UISearchBarIcon, state: UIControlState) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func scopeBarButtonBackgroundImageFor(state: UIControlState) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  @available(iOS 5.0, *)
  func scopeBarButtonDividerImageFor(leftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonTitleTextAttributes(attributes: [String : AnyObject]? = [:], forState state: UIControlState)
  @available(iOS 5.0, *)
  func scopeBarButtonTitleTextAttributesFor(state: UIControlState) -> [String : AnyObject]?
  @available(iOS 5.0, *)
  var searchFieldBackgroundPositionAdjustment: UIOffset
  @available(iOS 5.0, *)
  var searchTextPositionAdjustment: UIOffset
  @available(iOS 5.0, *)
  func setPositionAdjustment(adjustment: UIOffset, forSearchBarIcon icon: UISearchBarIcon)
  @available(iOS 5.0, *)
  func positionAdjustmentFor(icon: UISearchBarIcon) -> UIOffset
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
  var isSecureTextEntry: Bool
}
protocol UISearchBarDelegate : UIBarPositioningDelegate {
  @available(iOS 2.0, *)
  optional func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarTextDidBeginEditing(searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarShouldEndEditing(searchBar: UISearchBar) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarTextDidEndEditing(searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBar(searchBar: UISearchBar, textDidChange searchText: String)
  @available(iOS 3.0, *)
  optional func searchBar(searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarSearchButtonClicked(searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarBookmarkButtonClicked(searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarCancelButtonClicked(searchBar: UISearchBar)
  @available(iOS 3.2, *)
  optional func searchBarResultsListButtonClicked(searchBar: UISearchBar)
  @available(iOS 3.0, *)
  optional func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
}
