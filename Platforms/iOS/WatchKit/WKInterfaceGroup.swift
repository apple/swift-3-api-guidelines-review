
@available(iOS 8.2, *)
class WKInterfaceGroup : WKInterfaceObject, WKImageAnimatable {
  func setCornerRadius(cornerRadius: CGFloat)
  func setBackgroundColor(color: UIColor?)
  func setBackgroundImage(image: UIImage?)
  func setBackgroundImageData(imageData: NSData?)
  func setBackgroundImageNamed(imageName: String?)
  @available(iOS 8.2, *)
  func startAnimating()
  @available(iOS 8.2, *)
  func startAnimatingWithImagesInRange(imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  @available(iOS 8.2, *)
  func stopAnimating()
}
