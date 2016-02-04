
extension Bundle {
  @available(OSX 10.8, *)
  func loadNibNamed(nibName: String, owner: AnyObject?, topLevel topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
}
extension Object {
  class func awakeFromNib()
  func awakeFromNib()
  @available(OSX 10.10, *)
  class func prepareForInterfaceBuilder()
  @available(OSX 10.10, *)
  func prepareForInterfaceBuilder()
}
extension Bundle {
}
