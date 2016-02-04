
class CGLayer {
}
@available(watchOS 2.0, *)
func CGLayerCreateWithContext(context: CGContext?, _ size: CGSize, _ auxiliaryInfo: CFDictionary?) -> CGLayer?
@available(watchOS 2.0, *)
func CGLayerGetSize(layer: CGLayer?) -> CGSize
@available(watchOS 2.0, *)
func CGLayerGetContext(layer: CGLayer?) -> CGContext?
@available(watchOS 2.0, *)
func CGContextDrawLayerInRect(context: CGContext?, _ rect: CGRect, _ layer: CGLayer?)
@available(watchOS 2.0, *)
func CGContextDrawLayerAtPoint(context: CGContext?, _ point: CGPoint, _ layer: CGLayer?)
@available(watchOS 2.0, *)
func CGLayerGetTypeID() -> CFTypeID
