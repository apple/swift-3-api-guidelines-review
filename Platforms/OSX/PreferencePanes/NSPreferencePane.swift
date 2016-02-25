
enum NSPreferencePaneUnselectReply : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case UnselectCancel
  case UnselectNow
  case UnselectLater
}
let NSPreferencePaneDoUnselectNotification: String
let NSPreferencePaneCancelUnselectNotification: String
let NSPrefPaneHelpMenuInfoPListKey: String
let NSPrefPaneHelpMenuTitleKey: String
let NSPrefPaneHelpMenuAnchorKey: String
class NSPreferencePane : NSObject {
  init(bundle bundle: NSBundle)
  var bundle: NSBundle { get }
  func loadMainView() -> NSView
  func mainViewDidLoad()
  var mainNibName: String { get }
  func assignMainView()
  func willSelect()
  func didSelect()
  var shouldUnselect: NSPreferencePaneUnselectReply { get }
  func replyToShouldUnselect(_ shouldUnselect: Bool)
  func willUnselect()
  func didUnselect()
  var mainView: NSView
  var initialKeyView: NSView?
  var firstKeyView: NSView?
  var lastKeyView: NSView?
  var autoSaveTextFields: Bool { get }
  var selected: Bool { get }
  func updateHelpMenuWithArray(_ inArrayOfMenuItems: [[String : String]]?)
}
