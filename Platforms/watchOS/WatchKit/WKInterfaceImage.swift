
protocol WKImageAnimatable : ObjectProtocol {
  func startAnimating()
  func startAnimatingWithImages(in imageRange: NSRange, duration: TimeInterval, repeatCount: Int)
  func stopAnimating()
}
@available(watchOS 2.0, *)
class WKInterfaceImage : WKInterfaceObject, WKImageAnimatable {
  func setImage(image: UIImage?)
  func setImageData(imageData: Data?)
  func setImageNamed(imageName: String?)
  func setTintColor(tintColor: UIColor?)
  @available(watchOS 2.0, *)
  func startAnimating()
  @available(watchOS 2.0, *)
  func startAnimatingWithImages(in imageRange: NSRange, duration: TimeInterval, repeatCount: Int)
  @available(watchOS 2.0, *)
  func stopAnimating()
}
