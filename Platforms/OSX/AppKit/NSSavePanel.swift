
var NSFileHandlingPanelCancelButton: Int { get }
var NSFileHandlingPanelOKButton: Int { get }
struct __SPFlags {
  var saveMode: UInt32
  var isExpanded: UInt32
  var allowsOtherFileTypes: UInt32
  var canCreateDirectories: UInt32
  var canSelectedHiddenExtension: UInt32
  var reserved2: UInt32
  var delegate_shouldShowFilename: UInt32
  var delegate_compareFilename: UInt32
  var delegate_shouldEnableURL: UInt32
  var delegate_validateURL: UInt32
  var delegate_didChangeToDirectoryURL: UInt32
  var changingFrameSize: UInt32
  var movingAccessoryView: UInt32
  var userAccessoryViewFrameChange: UInt32
  var canChooseDirectories: UInt32
  var canChooseFiles: UInt32
  var delegate_selectionDidChange: UInt32
  var delegate_didChangeToDirectory: UInt32
  var calledWindowOrderedIn: UInt32
  var appCentric: UInt32
  var bottomControlsDisabled: UInt32
  var okButtonDisabled: UInt32
  var accessoryViewDisclosed: UInt32
  var delegate_isValidFilename: UInt32
  var delegate_userEnteredFilename: UInt32
  var delegate_panel_willExpand: UInt32
  var canResolveUbiquitousConflicts: UInt32
  var reserved: UInt32
  init()
  init(saveMode: UInt32, isExpanded: UInt32, allowsOtherFileTypes: UInt32, canCreateDirectories: UInt32, canSelectedHiddenExtension: UInt32, reserved2: UInt32, delegate_shouldShowFilename: UInt32, delegate_compareFilename: UInt32, delegate_shouldEnableURL: UInt32, delegate_validateURL: UInt32, delegate_didChangeToDirectoryURL: UInt32, changingFrameSize: UInt32, movingAccessoryView: UInt32, userAccessoryViewFrameChange: UInt32, canChooseDirectories: UInt32, canChooseFiles: UInt32, delegate_selectionDidChange: UInt32, delegate_didChangeToDirectory: UInt32, calledWindowOrderedIn: UInt32, appCentric: UInt32, bottomControlsDisabled: UInt32, okButtonDisabled: UInt32, accessoryViewDisclosed: UInt32, delegate_isValidFilename: UInt32, delegate_userEnteredFilename: UInt32, delegate_panel_willExpand: UInt32, canResolveUbiquitousConflicts: UInt32, reserved: UInt32)
}
typealias _SPFlags = __SPFlags
class NSSavePanel : NSPanel {
  @NSCopying var url: URL? { get }
  @available(OSX 10.6, *)
  @NSCopying var directoryURL: URL?
  var allowedFileTypes: [String]?
  var allowsOtherFileTypes: Bool
  var accessoryView: NSView?
  unowned(unsafe) var delegate: @sil_unmanaged NSOpenSavePanelDelegate?
  var isExpanded: Bool { get }
  var canCreateDirectories: Bool
  var canSelectHiddenExtension: Bool
  var isExtensionHidden: Bool
  var treatsFilePackagesAsDirectories: Bool
  var prompt: String!
  var title: String!
  var nameFieldLabel: String!
  @available(OSX 10.6, *)
  var nameFieldStringValue: String
  var message: String!
  func validateVisibleColumns()
  var showsHiddenFiles: Bool
  @available(OSX 10.9, *)
  var showsTagField: Bool
  @available(OSX 10.9, *)
  var tagNames: [String]?
  @IBAction func ok(sender: AnyObject?)
  @IBAction func cancel(sender: AnyObject?)
  @available(OSX 10.6, *)
  func beginSheetModal(for window: NSWindow, completionHandler handler: (Int) -> Void)
  @available(OSX 10.6, *)
  func begin(completionHandler handler: (Int) -> Void)
  func runModal() -> Int
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
protocol NSOpenSavePanelDelegate : ObjectProtocol {
  @available(OSX 10.6, *)
  optional func panel(sender: AnyObject, shouldEnable url: URL) -> Bool
  @available(OSX 10.6, *)
  optional func panel(sender: AnyObject, validate url: URL) throws
  @available(OSX 10.6, *)
  optional func panel(sender: AnyObject, didChangeToDirectoryURL url: URL?)
  optional func panel(sender: AnyObject, userEnteredFilename filename: String, confirmed okFlag: Bool) -> String?
  optional func panel(sender: AnyObject, willExpand expanding: Bool)
  optional func panelSelectionDidChange(sender: AnyObject?)
}
extension Object {
}
extension NSSavePanel {
}
