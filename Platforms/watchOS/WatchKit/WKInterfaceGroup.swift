
@available(watchOS 2.0, *)
class WKInterfaceGroup : WKInterfaceObject, WKImageAnimatable {
  func setCornerRadius(cornerRadius: CGFloat)
  @available(watchOS 2.0, *)
  func setContentInset(contentInset: UIEdgeInsets)
  func setBackgroundColor(color: UIColor?)
  func setBackgroundImage(image: UIImage?)
  func setBackgroundImageData(imageData: NSData?)
  func setBackgroundImageNamed(imageName: String?)
  @available(watchOS 2.0, *)
  func startAnimating()
  @available(watchOS 2.0, *)
  func startAnimatingWithImages(in imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  @available(watchOS 2.0, *)
  func stopAnimating()
}
