
class NSPICTImageRep : NSImageRep {
  init?(data pictData: NSData)
  @NSCopying var PICTRepresentation: NSData { get }
  var boundingBox: NSRect { get }
}
