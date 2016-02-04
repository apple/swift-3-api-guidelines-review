
enum UIMenuControllerArrowDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  @available(iOS 3.2, *)
  case Up
  @available(iOS 3.2, *)
  case Down
  @available(iOS 3.2, *)
  case Left
  @available(iOS 3.2, *)
  case Right
}
@available(iOS 3.0, *)
class UIMenuController : Object {
  class func shared() -> UIMenuController
  var isMenuVisible: Bool
  func setMenuVisible(menuVisible: Bool, animated: Bool)
  func setTargetRect(targetRect: CGRect, in targetView: UIView)
  @available(iOS 3.2, *)
  var arrowDirection: UIMenuControllerArrowDirection
  @available(iOS 3.2, *)
  var menuItems: [UIMenuItem]?
  func update()
  var menuFrame: CGRect { get }
  init()
}
let UIMenuControllerWillShowMenuNotification: String
let UIMenuControllerDidShowMenuNotification: String
let UIMenuControllerWillHideMenuNotification: String
let UIMenuControllerDidHideMenuNotification: String
let UIMenuControllerMenuFrameDidChangeNotification: String
@available(iOS 3.2, *)
class UIMenuItem : Object {
  init(title: String, action: Selector)
  var title: String
  var action: Selector
  convenience init()
}
