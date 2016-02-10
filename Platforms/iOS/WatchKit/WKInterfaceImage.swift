
protocol WKImageAnimatable : ObjectProtocol {
  func startAnimating()
  func startAnimatingWithImages(in imageRange: NSRange, duration: TimeInterval, repeatCount: Int)
  func stopAnimating()
}
@available(iOS 8.2, *)
class WKInterfaceImage : WKInterfaceObject, WKImageAnimatable {
  func setImage(image: UIImage?)
  func setImageData(imageData: Data?)
  func setImageNamed(imageName: String?)
  func setTintColor(tintColor: UIColor?)
  @available(iOS 8.2, *)
  func startAnimating()
  @available(iOS 8.2, *)
  func startAnimatingWithImages(in imageRange: NSRange, duration: TimeInterval, repeatCount: Int)
  @available(iOS 8.2, *)
  func stopAnimating()
}
