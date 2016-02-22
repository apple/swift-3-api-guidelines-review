
@available(watchOS 2.0, *)
class WKInterfaceSwitch : WKInterfaceObject {
  func setTitle(title: String?)
  func setAttributedTitle(attributedTitle: NSAttributedString?)
  func setEnabled(enabled: Bool)
  func setOn(on: Bool)
  func setColor(color: UIColor?)
}
