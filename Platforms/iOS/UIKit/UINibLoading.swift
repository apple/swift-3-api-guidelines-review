
@available(iOS 3.0, *)
let UINibExternalObjects: String
extension NSBundle {
  func loadNibNamed(name: String!, owner: AnyObject!, options: [NSObject : AnyObject]! = [:]) -> [AnyObject]!
}
extension NSObject {
  class func awakeFromNib()
  func awakeFromNib()
  @available(iOS 8.0, *)
  class func prepareForInterfaceBuilder()
  @available(iOS 8.0, *)
  func prepareForInterfaceBuilder()
}
