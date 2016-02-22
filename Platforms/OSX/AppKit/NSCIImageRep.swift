
class NSCIImageRep : NSImageRep {
  init(ciImage image: CIImage)
  var ciImage: CIImage { get }
  init()
  init?(coder: NSCoder)
}
extension CIImage {
  init?(bitmapImageRep: NSBitmapImageRep)
  func draw(in rect: NSRect, from fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func draw(at point: NSPoint, from fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
}
