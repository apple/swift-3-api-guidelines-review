
class NSCIImageRep : NSImageRep {
  init(CIImage image: CIImage)
  var CIImage: CIImage { get }
  init()
  init?(coder: NSCoder)
}
extension CIImage {
  init?(bitmapImageRep: NSBitmapImageRep)
  func drawInRect(rect: NSRect, fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func drawAtPoint(point: NSPoint, fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
}
