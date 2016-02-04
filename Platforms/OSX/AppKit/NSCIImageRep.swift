
class NSCIImageRep : NSImageRep {
  init(ciImage image: CIImage)
  var ciImage: CIImage { get }
  init()
  init?(coder: Coder)
}
extension CIImage {
  init?(bitmapImageRep: NSBitmapImageRep)
  func drawIn(rect: Rect, from fromRect: Rect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func drawAt(point: Point, from fromRect: Rect, operation op: NSCompositingOperation, fraction delta: CGFloat)
}
