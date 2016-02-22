
protocol ABImageClient : NSObjectProtocol {
  func consumeImageData(data: NSData!, forTag tag: Int)
}
extension ABPerson {
  func setImageData(data: NSData!) -> Bool
  func imageData() -> NSData!
  func beginLoadingImageData(for client: ABImageClient!) -> Int
  class func cancelLoadingImageData(forTag tag: Int)
}
