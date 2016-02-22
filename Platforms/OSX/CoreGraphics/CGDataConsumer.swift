
class CGDataConsumer {
}
typealias CGDataConsumerPutBytesCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>, Int) -> Int
typealias CGDataConsumerReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGDataConsumerCallbacks {
  var putBytes: CGDataConsumerPutBytesCallback?
  var releaseConsumer: CGDataConsumerReleaseInfoCallback?
  init()
  init(putBytes putBytes: CGDataConsumerPutBytesCallback?, releaseConsumer releaseConsumer: CGDataConsumerReleaseInfoCallback?)
}
@available(OSX 10.2, *)
func CGDataConsumerGetTypeID() -> CFTypeID
@available(OSX 10.0, *)
func CGDataConsumerCreate(_ info: UnsafeMutablePointer<Void>, _ cbks: UnsafePointer<CGDataConsumerCallbacks>) -> CGDataConsumer?
@available(OSX 10.0, *)
func CGDataConsumerCreateWithURL(_ url: CFURL?) -> CGDataConsumer?
@available(OSX 10.4, *)
func CGDataConsumerCreateWithCFData(_ data: CFMutableData?) -> CGDataConsumer?
