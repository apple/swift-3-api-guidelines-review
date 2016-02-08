
enum NSToolbarDisplayMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case iconAndLabel
  case iconOnly
  case labelOnly
}
enum NSToolbarSizeMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case regular
  case small
}
class NSToolbar : Object {
  init(identifier: String)
  func insertItem(itemIdentifier itemIdentifier: String, at index: Int)
  func removeItemAt(index: Int)
  unowned(unsafe) var delegate: @sil_unmanaged NSToolbarDelegate?
  var isVisible: Bool
  func runCustomizationPalette(sender: AnyObject?)
  var customizationPaletteIsRunning: Bool { get }
  var displayMode: NSToolbarDisplayMode
  var selectedItemIdentifier: String?
  var sizeMode: NSToolbarSizeMode
  var showsBaselineSeparator: Bool
  var allowsUserCustomization: Bool
  var identifier: String { get }
  var items: [NSToolbarItem] { get }
  var visibleItems: [NSToolbarItem]? { get }
  var autosavesConfiguration: Bool
  func setConfigurationFrom(configDict: [String : AnyObject])
  var configurationDictionary: [String : AnyObject] { get }
  func validateVisibleItems()
  @available(OSX 10.10, *)
  var allowsExtensionItems: Bool
  convenience init()
}
struct __tbFlags {
  var allowsUserCustomization: UInt32
  var autosavesUsingIdentifier: UInt32
  var initialConfigurationDone: UInt32
  var doesNotAttachToMenuBar: UInt32
  var delegateDefaultItemIdentifiers: UInt32
  var delegateAllowedItemIdentifiers: UInt32
  var delegateItemWithItemIdentifier: UInt32
  var delegateNotificationsEnabled: UInt32
  var prefersToBeShown: UInt32
  var loadItemsImmediately: UInt32
  var currentItemsContainsPlaceholder: UInt32
  var customizationPanelIsRunning: UInt32
  var usesCustomSheetWidth: UInt32
  var clickAndDragPerformsCustomization: UInt32
  var showsNoContextMenu: UInt32
  var currentlyLoadingPlaceholders: UInt32
  var delegateItemWithItemIdentifier2: UInt32
  var inGlobalWindow: UInt32
  var hasOwnedFullscreenViewController: UInt32
  var usesServicesItems: UInt32
  var usingFSMetrics: UInt32
  var keyboardLoopNeedsUpdating: UInt32
  var showHideDuringConfigurationChangeDisabled: UInt32
  var displayMode: UInt32
  var sizeMode: UInt32
  var doNotShowBaselineSeparator: UInt32
  var hideWithoutResizingWindowHint: UInt32
  var autovalidatesItemsDisabled: UInt32
  var inAutovalidation: UInt32
  var loadedMetrics: UInt32
  init()
  init(allowsUserCustomization: UInt32, autosavesUsingIdentifier: UInt32, initialConfigurationDone: UInt32, doesNotAttachToMenuBar: UInt32, delegateDefaultItemIdentifiers: UInt32, delegateAllowedItemIdentifiers: UInt32, delegateItemWithItemIdentifier: UInt32, delegateNotificationsEnabled: UInt32, prefersToBeShown: UInt32, loadItemsImmediately: UInt32, currentItemsContainsPlaceholder: UInt32, customizationPanelIsRunning: UInt32, usesCustomSheetWidth: UInt32, clickAndDragPerformsCustomization: UInt32, showsNoContextMenu: UInt32, currentlyLoadingPlaceholders: UInt32, delegateItemWithItemIdentifier2: UInt32, inGlobalWindow: UInt32, hasOwnedFullscreenViewController: UInt32, usesServicesItems: UInt32, usingFSMetrics: UInt32, keyboardLoopNeedsUpdating: UInt32, showHideDuringConfigurationChangeDisabled: UInt32, displayMode: UInt32, sizeMode: UInt32, doNotShowBaselineSeparator: UInt32, hideWithoutResizingWindowHint: UInt32, autovalidatesItemsDisabled: UInt32, inAutovalidation: UInt32, loadedMetrics: UInt32)
}
protocol NSToolbarDelegate : ObjectProtocol {
  optional func toolbar(toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: String, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem?
  optional func toolbarDefaultItemIdentifiers(toolbar: NSToolbar) -> [String]
  optional func toolbarAllowedItemIdentifiers(toolbar: NSToolbar) -> [String]
  optional func toolbarSelectableItemIdentifiers(toolbar: NSToolbar) -> [String]
  optional func toolbarWillAddItem(notification: Notification)
  optional func toolbarDidRemoveItem(notification: Notification)
}
let NSToolbarWillAddItemNotification: String
let NSToolbarDidRemoveItemNotification: String
extension NSToolbar {
  @available(OSX 10.7, *)
  var fullScreenAccessoryView: NSView?
  @available(OSX 10.7, *)
  var fullScreenAccessoryViewMinHeight: CGFloat
  @available(OSX 10.7, *)
  var fullScreenAccessoryViewMaxHeight: CGFloat
}
