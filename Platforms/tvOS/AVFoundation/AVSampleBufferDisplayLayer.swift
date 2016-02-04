
extension AVSampleBufferDisplayLayer {
  func enqueueSampleBuffer(sampleBuffer: CMSampleBuffer)
  func flush()
  func flushAndRemoveImage()
  var readyForMoreMediaData: Bool { get }
  func requestMediaDataWhenReadyOnQueue(queue: dispatch_queue_t, usingBlock block: () -> Void)
  func stopRequestingMediaData()
}
