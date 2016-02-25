
class NSCIImageRep : NSImageRep {
  init(CIImage image: CIImage)
  var CIImage: CIImage { get }
}
extension CIImage {
  init?(bitmapImageRep bitmapImageRep: NSBitmapImageRep)
  func drawInRect(_ rect: NSRect, fromRect fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func drawAtPoint(_ point: NSPoint, fromRect fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
}
