
@available(OSX 10.10.3, *)
class NSPressureConfiguration : Object {
  var pressureBehavior: NSPressureBehavior { get }
  init(pressureBehavior: NSPressureBehavior)
  func set()
  convenience init()
}
extension NSView {
  @available(OSX 10.11, *)
  var pressureConfiguration: NSPressureConfiguration?
}
