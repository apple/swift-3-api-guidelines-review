
@available(iOS 2.0, *)
class UISwitch : UIControl, NSCoding {
  @available(iOS 5.0, *)
  var onTintColor: UIColor?
  @available(iOS 6.0, *)
  var tintColor: UIColor!
  @available(iOS 6.0, *)
  var thumbTintColor: UIColor?
  @available(iOS 6.0, *)
  var onImage: UIImage?
  @available(iOS 6.0, *)
  var offImage: UIImage?
  var on: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  func setOn(on: Bool, animated: Bool)
  convenience init()
}
