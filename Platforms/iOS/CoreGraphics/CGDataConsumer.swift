
class CGDataConsumer {
}
@available(*, deprecated, renamed="CGDataConsumer")
typealias CGDataConsumerRef = CGDataConsumer
typealias CGDataConsumerPutBytesCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>, Int) -> Int
typealias CGDataConsumerReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGDataConsumerCallbacks {
  var putBytes: CGDataConsumerPutBytesCallback?
  var releaseConsumer: CGDataConsumerReleaseInfoCallback?
  init()
  init(putBytes: CGDataConsumerPutBytesCallback?, releaseConsumer: CGDataConsumerReleaseInfoCallback?)
}
@available(iOS 2.0, *)
func CGDataConsumerGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CGDataConsumerCreate(info: UnsafeMutablePointer<Void>, _ cbks: UnsafePointer<CGDataConsumerCallbacks>) -> CGDataConsumer?
@available(iOS 2.0, *)
func CGDataConsumerCreateWithURL(url: CFURL?) -> CGDataConsumer?
@available(iOS 2.0, *)
func CGDataConsumerCreateWithCFData(data: CFMutableData?) -> CGDataConsumer?
