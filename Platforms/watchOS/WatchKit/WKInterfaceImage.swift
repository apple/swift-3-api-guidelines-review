
protocol WKImageAnimatable : NSObjectProtocol {
  func startAnimating()
  func startAnimatingWithImagesInRange(imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  func stopAnimating()
}
@available(watchOS 2.0, *)
class WKInterfaceImage : WKInterfaceObject, WKImageAnimatable {
  func setImage(image: UIImage?)
  func setImageData(imageData: NSData?)
  func setImageNamed(imageName: String?)
  func setTintColor(tintColor: UIColor?)
  @available(watchOS 2.0, *)
  func startAnimating()
  @available(watchOS 2.0, *)
  func startAnimatingWithImagesInRange(imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  @available(watchOS 2.0, *)
  func stopAnimating()
}
