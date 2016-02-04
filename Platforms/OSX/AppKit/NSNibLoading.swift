
extension NSBundle {
  @available(OSX 10.8, *)
  func loadNibNamed(nibName: String, owner: AnyObject?, topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
}
extension NSObject {
  class func awakeFromNib()
  func awakeFromNib()
  @available(OSX 10.10, *)
  class func prepareForInterfaceBuilder()
  @available(OSX 10.10, *)
  func prepareForInterfaceBuilder()
}
extension NSBundle {
}
