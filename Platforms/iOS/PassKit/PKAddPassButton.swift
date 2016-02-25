
@available(iOS 9.0, *)
enum PKAddPassButtonStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Black
  case BlackOutline
}
@available(iOS 9.0, *)
class PKAddPassButton : UIButton {
  convenience init(style addPassButtonStyle: PKAddPassButtonStyle)
  init(addPassButtonStyle style: PKAddPassButtonStyle)
  var addPassButtonStyle: PKAddPassButtonStyle
}
