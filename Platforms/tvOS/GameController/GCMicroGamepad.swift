
@available(tvOS 9.0, *)
class GCMicroGamepad : Object {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCMicroGamepadValueChangedHandler?
  func saveSnapshot() -> GCMicroGamepadSnapshot
  var dpad: GCControllerDirectionPad { get }
  var buttonA: GCControllerButtonInput { get }
  var buttonX: GCControllerButtonInput { get }
  var reportsAbsoluteDpadValues: Bool
  var allowsRotation: Bool
  init()
}
typealias GCMicroGamepadValueChangedHandler = (GCMicroGamepad, GCControllerElement) -> Void
