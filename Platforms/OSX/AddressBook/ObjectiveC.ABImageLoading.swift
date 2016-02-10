
protocol ABImageClient : ObjectProtocol {
  func consumeImageData(data: Data!, forTag tag: Int)
}
extension ABPerson {
  func setImageData(data: Data!) -> Bool
  func imageData() -> Data!
  func beginLoadingImageData(forClient client: ABImageClient!) -> Int
  class func cancelLoadingImageData(forTag tag: Int)
}
