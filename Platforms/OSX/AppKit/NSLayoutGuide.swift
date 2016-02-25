
@available(OSX 10.11, *)
class NSLayoutGuide : NSObject, NSCoding, NSUserInterfaceItemIdentification {
  var frame: NSRect { get }
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
  @available(OSX 10.11, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSView {
  @available(OSX 10.11, *)
  func addLayoutGuide(_ guide: NSLayoutGuide)
  @available(OSX 10.11, *)
  func removeLayoutGuide(_ guide: NSLayoutGuide)
  @available(OSX 10.11, *)
  var layoutGuides: [NSLayoutGuide] { get }
}
