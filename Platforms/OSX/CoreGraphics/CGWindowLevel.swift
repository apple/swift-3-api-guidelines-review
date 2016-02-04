
enum CGWindowLevelKey : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case BaseWindowLevelKey
  case MinimumWindowLevelKey
  case DesktopWindowLevelKey
  case BackstopMenuLevelKey
  case NormalWindowLevelKey
  case FloatingWindowLevelKey
  case TornOffMenuWindowLevelKey
  case DockWindowLevelKey
  case MainMenuWindowLevelKey
  case StatusWindowLevelKey
  case ModalPanelWindowLevelKey
  case PopUpMenuWindowLevelKey
  case DraggingWindowLevelKey
  case ScreenSaverWindowLevelKey
  case MaximumWindowLevelKey
  case OverlayWindowLevelKey
  case HelpWindowLevelKey
  case UtilityWindowLevelKey
  case DesktopIconWindowLevelKey
  case CursorWindowLevelKey
  case AssistiveTechHighWindowLevelKey
  case NumberOfWindowLevelKeys
}
typealias CGWindowLevel = Int32
@available(OSX 10.0, *)
func CGWindowLevelForKey(key: CGWindowLevelKey) -> CGWindowLevel
var kCGNumReservedWindowLevels: Int32 { get }
