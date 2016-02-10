
@available(OSX 10.9, *)
class NSAppearance : Object, Coding {
  @available(OSX 10.9, *)
  var name: String { get }
  class func current() -> NSAppearance
  class func setCurrentAppearance(appearance: NSAppearance?)
  /*not inherited*/ init?(named name: String)
  init?(appearanceNamed name: String, bundle: Bundle?)
  @available(OSX 10.10, *)
  var allowsVibrancy: Bool { get }
  init()
  @available(OSX 10.9, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.9, *)
let NSAppearanceNameAqua: String
@available(OSX, introduced=10.9, deprecated=10.10, message="Light content should use the default Aqua apppearance.")
let NSAppearanceNameLightContent: String
@available(OSX 10.10, *)
let NSAppearanceNameVibrantDark: String
@available(OSX 10.10, *)
let NSAppearanceNameVibrantLight: String
protocol NSAppearanceCustomization : ObjectProtocol {
  @available(OSX 10.9, *)
  var appearance: NSAppearance? { get set }
  @available(OSX 10.9, *)
  var effectiveAppearance: NSAppearance { get }
}
