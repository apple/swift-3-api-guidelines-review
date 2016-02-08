
enum UISearchBarIcon : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case search
}
@available(tvOS 7.0, *)
enum UISearchBarStyle : UInt {
  init?(rawValue: UInt)
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
  var tintColor: UIColor!
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
  var inputAccessoryView: UIView?
  @available(tvOS 5.0, *)
  var backgroundImage: UIImage?
  @available(tvOS 5.0, *)
  var scopeBarBackgroundImage: UIImage?
  @available(tvOS 7.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(tvOS 7.0, *)
  func backgroundImageFor(barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setSearchFieldBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState)
  @available(tvOS 5.0, *)
  func searchFieldBackgroundImageFor(state: UIControlState) -> UIImage?
  @available(tvOS 5.0, *)
  func setImage(iconImage: UIImage?, forSearchBarIcon icon: UISearchBarIcon, state: UIControlState)
  @available(tvOS 5.0, *)
  func imageFor(icon: UISearchBarIcon, state: UIControlState) -> UIImage?
  @available(tvOS 5.0, *)
  func setScopeBarButtonBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState)
  @available(tvOS 5.0, *)
  func scopeBarButtonBackgroundImageFor(state: UIControlState) -> UIImage?
  @available(tvOS 5.0, *)
  func setScopeBarButtonDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  @available(tvOS 5.0, *)
  func scopeBarButtonDividerImageFor(leftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState) -> UIImage?
  @available(tvOS 5.0, *)
  func setScopeBarButtonTitleTextAttributes(attributes: [String : AnyObject]? = [:], forState state: UIControlState)
  @available(tvOS 5.0, *)
  func scopeBarButtonTitleTextAttributesFor(state: UIControlState) -> [String : AnyObject]?
  @available(tvOS 5.0, *)
  var searchFieldBackgroundPositionAdjustment: UIOffset
  @available(tvOS 5.0, *)
  var searchTextPositionAdjustment: UIOffset
  @available(tvOS 5.0, *)
  func setPositionAdjustment(adjustment: UIOffset, forSearchBarIcon icon: UISearchBarIcon)
  @available(tvOS 5.0, *)
  func positionAdjustmentFor(icon: UISearchBarIcon) -> UIOffset
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
  optional func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool
  @available(tvOS 2.0, *)
  optional func searchBarTextDidBeginEditing(searchBar: UISearchBar)
  @available(tvOS 2.0, *)
  optional func searchBarShouldEndEditing(searchBar: UISearchBar) -> Bool
  @available(tvOS 2.0, *)
  optional func searchBarTextDidEndEditing(searchBar: UISearchBar)
  @available(tvOS 2.0, *)
  optional func searchBar(searchBar: UISearchBar, textDidChange searchText: String)
  @available(tvOS 3.0, *)
  optional func searchBar(searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(tvOS 2.0, *)
  optional func searchBarSearchButtonClicked(searchBar: UISearchBar)
  @available(tvOS 3.0, *)
  optional func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
}
