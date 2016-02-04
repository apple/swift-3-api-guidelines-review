
@available(OSX 10.11, *)
class CNContactPicker : NSObject {
  var displayedKeys: [String]
  weak var delegate: @sil_weak CNContactPickerDelegate?
  func showRelativeToRect(positioningRect: NSRect, ofView positioningView: NSView, preferredEdge: NSRectEdge)
  func close()
  init()
}
