
class NSCIImageRep : NSImageRep {
  init(ciImage image: CIImage)
  var ciImage: CIImage { get }
  init()
  init?(coder: Coder)
}
extension CIImage {
  init?(bitmapImageRep: NSBitmapImageRep)
  func draw(in rect: Rect, from fromRect: Rect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func draw(at point: Point, from fromRect: Rect, operation op: NSCompositingOperation, fraction delta: CGFloat)
}
