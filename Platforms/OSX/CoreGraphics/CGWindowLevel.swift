
enum CGWindowLevelKey : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case baseWindowLevelKey
  case minimumWindowLevelKey
  case desktopWindowLevelKey
  case backstopMenuLevelKey
  case normalWindowLevelKey
  case floatingWindowLevelKey
  case tornOffMenuWindowLevelKey
  case dockWindowLevelKey
  case mainMenuWindowLevelKey
  case statusWindowLevelKey
  case modalPanelWindowLevelKey
  case popUpMenuWindowLevelKey
  case draggingWindowLevelKey
  case screenSaverWindowLevelKey
  case maximumWindowLevelKey
  case overlayWindowLevelKey
  case helpWindowLevelKey
  case utilityWindowLevelKey
  case desktopIconWindowLevelKey
  case cursorWindowLevelKey
  case assistiveTechHighWindowLevelKey
  case numberOfWindowLevelKeys
}
typealias CGWindowLevel = Int32
@available(OSX 10.0, *)
func CGWindowLevelForKey(_ key: CGWindowLevelKey) -> CGWindowLevel
var kCGNumReservedWindowLevels: Int32 { get }
