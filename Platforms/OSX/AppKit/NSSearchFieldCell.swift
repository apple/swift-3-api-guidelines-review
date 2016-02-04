
var NSSearchFieldRecentsTitleMenuItemTag: Int32 { get }
var NSSearchFieldRecentsMenuItemTag: Int32 { get }
var NSSearchFieldClearRecentsMenuItemTag: Int32 { get }
var NSSearchFieldNoRecentsMenuItemTag: Int32 { get }
class NSSearchFieldCell : NSTextFieldCell {
  var searchButtonCell: NSButtonCell?
  var cancelButtonCell: NSButtonCell?
  func resetSearchButtonCell()
  func resetCancelButtonCell()
  func searchTextRectForBounds(rect: Rect) -> Rect
  func searchButtonRectForBounds(rect: Rect) -> Rect
  func cancelButtonRectForBounds(rect: Rect) -> Rect
  var searchMenuTemplate: NSMenu?
  var sendsWholeSearchString: Bool
  var maximumRecents: Int
  var recentSearches: [String]!
  var recentsAutosaveName: String?
  var sendsSearchStringImmediately: Bool
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
struct __sfFlags {
  var sendsWholeSearchString: UInt32
  var maximumRecents: UInt32
  var cancelVisible: UInt32
  var reserved2: UInt32
  var disableText: UInt32
  var menuTracking: UInt32
  var deferredUpdate: UInt32
  var sendsImmediately: UInt32
  var centeredLook: UInt32
  var renderingCentered: UInt32
  var becomeTransition: UInt32
  var resignTransition: UInt32
  var subclassOverridesRectForSearchButtonWhenCentered: UInt32
  var subclassOverridesRectForSearchTextWhenCentered: UInt32
  var subclassOverridesRectForCancelButtonWhenCentered: UInt32
  var resumeEditingOnCancel: UInt32
  var reserved: UInt32
  init()
  init(sendsWholeSearchString: UInt32, maximumRecents: UInt32, cancelVisible: UInt32, reserved2: UInt32, disableText: UInt32, menuTracking: UInt32, deferredUpdate: UInt32, sendsImmediately: UInt32, centeredLook: UInt32, renderingCentered: UInt32, becomeTransition: UInt32, resignTransition: UInt32, subclassOverridesRectForSearchButtonWhenCentered: UInt32, subclassOverridesRectForSearchTextWhenCentered: UInt32, subclassOverridesRectForCancelButtonWhenCentered: UInt32, resumeEditingOnCancel: UInt32, reserved: UInt32)
}
