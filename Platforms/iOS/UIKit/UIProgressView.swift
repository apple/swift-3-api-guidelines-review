
enum UIProgressViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case bar
}
@available(iOS 2.0, *)
class UIProgressView : UIView, Coding {
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init(progressViewStyle style: UIProgressViewStyle = .`default`)
  var progressViewStyle: UIProgressViewStyle
  var progress: Float
  @available(iOS 5.0, *)
  var progressTintColor: UIColor?
  @available(iOS 5.0, *)
  var trackTintColor: UIColor?
  @available(iOS 5.0, *)
  var progressImage: UIImage?
  @available(iOS 5.0, *)
  var trackImage: UIImage?
  @available(iOS 5.0, *)
  func setProgress(progress: Float, animated: Bool)
  @available(iOS 9.0, *)
  var observedProgress: Progress?
  convenience init()
}
