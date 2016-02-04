
@available(tvOS 3.0, *)
let UINibExternalObjects: String
extension Bundle {
  func loadNibNamed(name: String!, owner: AnyObject!, options: [Object : AnyObject]! = [:]) -> [AnyObject]!
}
extension Object {
  class func awakeFromNib()
  func awakeFromNib()
  @available(tvOS 8.0, *)
  class func prepareForInterfaceBuilder()
  @available(tvOS 8.0, *)
  func prepareForInterfaceBuilder()
}
