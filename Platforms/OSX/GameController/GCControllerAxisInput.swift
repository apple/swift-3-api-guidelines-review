
@available(OSX 10.9, *)
class GCControllerAxisInput : GCControllerElement {
  var valueChangedHandler: GCControllerAxisValueChangedHandler?
  var value: Float { get }
  init()
}
typealias GCControllerAxisValueChangedHandler = (GCControllerAxisInput, Float) -> Void
