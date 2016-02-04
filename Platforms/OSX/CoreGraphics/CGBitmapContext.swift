
typealias CGBitmapContextReleaseDataCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.6, *)
func CGBitmapContextCreateWithData(data: UnsafeMutablePointer<Void>, _ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: UInt32, _ releaseCallback: CGBitmapContextReleaseDataCallback?, _ releaseInfo: UnsafeMutablePointer<Void>) -> CGContext?
@available(OSX 10.0, *)
func CGBitmapContextCreate(data: UnsafeMutablePointer<Void>, _ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: UInt32) -> CGContext?
@available(OSX 10.2, *)
func CGBitmapContextGetData(context: CGContext?) -> UnsafeMutablePointer<Void>
@available(OSX 10.2, *)
func CGBitmapContextGetWidth(context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetHeight(context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetBitsPerComponent(context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetBitsPerPixel(context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetBytesPerRow(context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetColorSpace(context: CGContext?) -> CGColorSpace?
@available(OSX 10.2, *)
func CGBitmapContextGetAlphaInfo(context: CGContext?) -> CGImageAlphaInfo
@available(OSX 10.4, *)
func CGBitmapContextGetBitmapInfo(context: CGContext?) -> CGBitmapInfo
@available(OSX 10.4, *)
func CGBitmapContextCreateImage(context: CGContext?) -> CGImage?
