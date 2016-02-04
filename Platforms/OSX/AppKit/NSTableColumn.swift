
struct NSTableColumnResizingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoResizing: NSTableColumnResizingOptions { get }
  static var AutoresizingMask: NSTableColumnResizingOptions { get }
  static var UserResizingMask: NSTableColumnResizingOptions { get }
}
class NSTableColumn : Object, Coding, NSUserInterfaceItemIdentification {
  init(identifier: String)
  var identifier: String
  unowned(unsafe) var tableView: @sil_unmanaged NSTableView?
  var width: CGFloat
  var minWidth: CGFloat
  var maxWidth: CGFloat
  var title: String
  var headerCell: NSTableHeaderCell
  var isEditable: Bool
  func sizeToFit()
  @NSCopying var sortDescriptorPrototype: SortDescriptor?
  var resizingMask: NSTableColumnResizingOptions
  @available(OSX 10.5, *)
  var headerToolTip: String?
  @available(OSX 10.5, *)
  var isHidden: Bool
  convenience init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct __colFlags {
  var oldIsResizable: UInt32
  var isEditable: UInt32
  var resizedPostingDisableCount: UInt32
  var canUseReorderResizeImageCache: UInt32
  var userResizingAllowed: UInt32
  var autoResizingAllowed: UInt32
  var hidden: UInt32
  var RESERVED: UInt32
  init()
  init(oldIsResizable: UInt32, isEditable: UInt32, resizedPostingDisableCount: UInt32, canUseReorderResizeImageCache: UInt32, userResizingAllowed: UInt32, autoResizingAllowed: UInt32, hidden: UInt32, RESERVED: UInt32)
}
extension NSTableColumn {
  var dataCell: AnyObject
  func dataCellForRow(row: Int) -> AnyObject
}
