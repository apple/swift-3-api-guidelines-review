
class CGLayer {
}
@available(*, deprecated, renamed="CGLayer")
typealias CGLayerRef = CGLayer
@available(OSX 10.4, *)
func CGLayerCreateWithContext(context: CGContext?, _ size: CGSize, _ auxiliaryInfo: CFDictionary?) -> CGLayer?
@available(OSX 10.4, *)
func CGLayerGetSize(layer: CGLayer?) -> CGSize
@available(OSX 10.4, *)
func CGLayerGetContext(layer: CGLayer?) -> CGContext?
@available(OSX 10.4, *)
func CGContextDrawLayerInRect(context: CGContext?, _ rect: CGRect, _ layer: CGLayer?)
@available(OSX 10.4, *)
func CGContextDrawLayerAtPoint(context: CGContext?, _ point: CGPoint, _ layer: CGLayer?)
@available(OSX 10.4, *)
func CGLayerGetTypeID() -> CFTypeID
