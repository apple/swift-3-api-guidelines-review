
class NSToolbarItem : Object, Copying, NSValidatedUserInterfaceItem {
  init(itemIdentifier: String)
  var itemIdentifier: String { get }
  unowned(unsafe) var toolbar: @sil_unmanaged NSToolbar? { get }
  var label: String
  var paletteLabel: String
  var toolTip: String?
  var menuFormRepresentation: NSMenuItem?
  var tag: Int
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var isEnabled: Bool
  var image: NSImage?
  var view: NSView?
  var minSize: Size
  var maxSize: Size
  var visibilityPriority: Int
  func validate()
  var autovalidates: Bool
  var allowsDuplicatesInToolbar: Bool { get }
  convenience init()
  func copy(zone: Zone = nil) -> AnyObject
}
struct __tbiFlags {
  var viewRespondsToIsEnabled: UInt32
  var viewRespondsToSetEnabled: UInt32
  var viewRespondsToTag: UInt32
  var viewRespondsToSetTag: UInt32
  var viewRespondsToAction: UInt32
  var viewRespondsToSetAction: UInt32
  var viewRespondsToTarget: UInt32
  var viewRespondsToSetTarget: UInt32
  var viewRespondsToImage: UInt32
  var viewRespondsToSetImage: UInt32
  var isEnabled: UInt32
  var isUserRemovable: UInt32
  var menuHasBeenSet: UInt32
  var menuRepIsDefault: UInt32
  var viewHasBeenLoaded: UInt32
  var drawingForDragImage: UInt32
  var isCustomItemType: UInt32
  var hasValidatedAutoModeConfiguration: UInt32
  var useAutoModeConfiguration: UInt32
  var fromBaseLocalizedNib: UInt32
  var autovalidationDisabled: UInt32
  var tagHasBeenSet: UInt32
  var sizeHasBeenSet: UInt32
  var stateWasDisabledBeforeSheet: UInt32
  var wantsToBeCentered: UInt32
  var RESERVED: UInt32
  init()
  init(viewRespondsToIsEnabled: UInt32, viewRespondsToSetEnabled: UInt32, viewRespondsToTag: UInt32, viewRespondsToSetTag: UInt32, viewRespondsToAction: UInt32, viewRespondsToSetAction: UInt32, viewRespondsToTarget: UInt32, viewRespondsToSetTarget: UInt32, viewRespondsToImage: UInt32, viewRespondsToSetImage: UInt32, isEnabled: UInt32, isUserRemovable: UInt32, menuHasBeenSet: UInt32, menuRepIsDefault: UInt32, viewHasBeenLoaded: UInt32, drawingForDragImage: UInt32, isCustomItemType: UInt32, hasValidatedAutoModeConfiguration: UInt32, useAutoModeConfiguration: UInt32, fromBaseLocalizedNib: UInt32, autovalidationDisabled: UInt32, tagHasBeenSet: UInt32, sizeHasBeenSet: UInt32, stateWasDisabledBeforeSheet: UInt32, wantsToBeCentered: UInt32, RESERVED: UInt32)
}
var NSToolbarItemVisibilityPriorityStandard: Int { get }
var NSToolbarItemVisibilityPriorityLow: Int { get }
var NSToolbarItemVisibilityPriorityHigh: Int { get }
var NSToolbarItemVisibilityPriorityUser: Int { get }
extension Object {
  class func validate(theItem: NSToolbarItem) -> Bool
  func validate(theItem: NSToolbarItem) -> Bool
}
let NSToolbarSeparatorItemIdentifier: String
let NSToolbarSpaceItemIdentifier: String
let NSToolbarFlexibleSpaceItemIdentifier: String
let NSToolbarShowColorsItemIdentifier: String
let NSToolbarShowFontsItemIdentifier: String
let NSToolbarCustomizeToolbarItemIdentifier: String
let NSToolbarPrintItemIdentifier: String
@available(OSX 10.11, *)
let NSToolbarToggleSidebarItemIdentifier: String
