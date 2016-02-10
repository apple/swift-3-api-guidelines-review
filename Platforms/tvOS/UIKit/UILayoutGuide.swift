
@available(tvOS 9.0, *)
class UILayoutGuide : Object, Coding {
  var layoutFrame: CGRect { get }
  weak var owningView: @sil_weak UIView?
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
  @available(tvOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
