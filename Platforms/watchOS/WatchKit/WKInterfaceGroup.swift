
@available(watchOS 2.0, *)
class WKInterfaceGroup : WKInterfaceObject, WKImageAnimatable {
  func setCornerRadius(_ cornerRadius: CGFloat)
  @available(watchOS 2.0, *)
  func setContentInset(_ contentInset: UIEdgeInsets)
  func setBackgroundColor(_ color: UIColor?)
  func setBackgroundImage(_ image: UIImage?)
  func setBackgroundImageData(_ imageData: NSData?)
  func setBackgroundImageNamed(_ imageName: String?)
  @available(watchOS 2.0, *)
  func startAnimating()
  @available(watchOS 2.0, *)
  func startAnimatingWithImages(in imageRange: NSRange, duration duration: NSTimeInterval, repeatCount repeatCount: Int)
  @available(watchOS 2.0, *)
  func stopAnimating()
}
