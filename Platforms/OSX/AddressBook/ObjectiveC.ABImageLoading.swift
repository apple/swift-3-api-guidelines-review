
protocol ABImageClient : NSObjectProtocol {
  func consumeImageData(data: NSData!, forTag tag: Int)
}
extension ABPerson {
  func setImageData(data: NSData!) -> Bool
  func imageData() -> NSData!
  func beginLoadingImageDataForClient(client: ABImageClient!) -> Int
  class func cancelLoadingImageDataForTag(tag: Int)
}
