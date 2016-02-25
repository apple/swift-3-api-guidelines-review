
protocol WKImageAnimatable : NSObjectProtocol {
  func startAnimating()
  func startAnimatingWithImagesInRange(_ imageRange: NSRange, duration duration: NSTimeInterval, repeatCount repeatCount: Int)
  func stopAnimating()
}
@available(watchOS 2.0, *)
class WKInterfaceImage : WKInterfaceObject, WKImageAnimatable {
  func setImage(_ image: UIImage?)
  func setImageData(_ imageData: NSData?)
  func setImageNamed(_ imageName: String?)
  func setTintColor(_ tintColor: UIColor?)
  @available(watchOS 2.0, *)
  func startAnimating()
  @available(watchOS 2.0, *)
  func startAnimatingWithImagesInRange(_ imageRange: NSRange, duration duration: NSTimeInterval, repeatCount repeatCount: Int)
  @available(watchOS 2.0, *)
  func stopAnimating()
}
