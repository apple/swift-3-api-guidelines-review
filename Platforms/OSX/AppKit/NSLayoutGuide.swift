
@available(OSX 10.11, *)
class NSLayoutGuide : Object, Coding, NSUserInterfaceItemIdentification {
  var frame: Rect { get }
  weak var owningView: @sil_weak NSView?
  var identifier: String
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  var leftAnchor: NSLayoutXAxisAnchor { get }
  var rightAnchor: NSLayoutXAxisAnchor { get }
  var topAnchor: NSLayoutYAxisAnchor { get }
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  var widthAnchor: NSLayoutDimension { get }
  var heightAnchor: NSLayoutDimension { get }
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  init()
  @available(OSX 10.11, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension NSView {
  @available(OSX 10.11, *)
  func addLayoutGuide(guide: NSLayoutGuide)
  @available(OSX 10.11, *)
  func removeLayoutGuide(guide: NSLayoutGuide)
  @available(OSX 10.11, *)
  var layoutGuides: [NSLayoutGuide] { get }
}
