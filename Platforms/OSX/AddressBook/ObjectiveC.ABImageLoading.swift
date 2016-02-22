
protocol ABImageClient : NSObjectProtocol {
  func consumeImageData(_ data: NSData!, forTag tag: Int)
}
extension ABPerson {
  func setImageData(_ data: NSData!) -> Bool
  func imageData() -> NSData!
  func beginLoadingImageData(for client: ABImageClient!) -> Int
  class func cancelLoadingImageData(forTag tag: Int)
}
