
@available(watchOS 2.0, *)
class WKInterfaceButton : WKInterfaceObject {
  func setTitle(title: String?)
  func setAttributedTitle(attributedTitle: NSAttributedString?)
  func setBackgroundColor(color: UIColor?)
  func setBackgroundImage(image: UIImage?)
  func setBackgroundImageData(imageData: NSData?)
  func setBackgroundImageNamed(imageName: String?)
  func setEnabled(enabled: Bool)
}
