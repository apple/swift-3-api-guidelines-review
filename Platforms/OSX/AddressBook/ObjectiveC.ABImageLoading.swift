
protocol ABImageClient : NSObjectProtocol {
  func consumeImageData(_ data: NSData!, forTag tag: Int)
}
extension ABPerson {
  func setImageData(_ data: NSData!) -> Bool
  func imageData() -> NSData!
  func beginLoadingImageDataForClient(_ client: ABImageClient!) -> Int
  class func cancelLoadingImageDataForTag(_ tag: Int)
}
