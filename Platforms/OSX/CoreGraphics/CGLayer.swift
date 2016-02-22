
class CGLayer {
}
@available(OSX 10.4, *)
func CGLayerCreateWithContext(_ context: CGContext?, _ size: CGSize, _ auxiliaryInfo: CFDictionary?) -> CGLayer?
@available(OSX 10.4, *)
func CGLayerGetSize(_ layer: CGLayer?) -> CGSize
@available(OSX 10.4, *)
func CGLayerGetContext(_ layer: CGLayer?) -> CGContext?
@available(OSX 10.4, *)
func CGContextDrawLayerInRect(_ context: CGContext?, _ rect: CGRect, _ layer: CGLayer?)
@available(OSX 10.4, *)
func CGContextDrawLayerAtPoint(_ context: CGContext?, _ point: CGPoint, _ layer: CGLayer?)
@available(OSX 10.4, *)
func CGLayerGetTypeID() -> CFTypeID
