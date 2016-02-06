
protocol ABImageClient : ObjectProtocol {
  func consumeImageData(data: Data!, forTag tag: Int)
}
extension ABPerson {
  func setImageData(data: Data!) -> Bool
  func imageData() -> Data!
  func beginLoadingImageDataFor(client: ABImageClient!) -> Int
  class func cancelLoadingImageDataFor(tag tag: Int)
}
