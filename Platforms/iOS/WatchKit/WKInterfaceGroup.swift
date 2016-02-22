
@available(iOS 8.2, *)
class WKInterfaceGroup : WKInterfaceObject, WKImageAnimatable {
  func setCornerRadius(_ cornerRadius: CGFloat)
  func setBackgroundColor(_ color: UIColor?)
  func setBackgroundImage(_ image: UIImage?)
  func setBackgroundImageData(_ imageData: NSData?)
  func setBackgroundImageNamed(_ imageName: String?)
  @available(iOS 8.2, *)
  func startAnimating()
  @available(iOS 8.2, *)
  func startAnimatingWithImages(in imageRange: NSRange, duration duration: NSTimeInterval, repeatCount repeatCount: Int)
  @available(iOS 8.2, *)
  func stopAnimating()
}
