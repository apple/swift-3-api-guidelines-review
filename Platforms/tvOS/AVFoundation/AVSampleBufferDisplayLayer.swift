
extension AVSampleBufferDisplayLayer {
  func enqueueSampleBuffer(_ sampleBuffer: CMSampleBuffer)
  func flush()
  func flushAndRemoveImage()
  var readyForMoreMediaData: Bool { get }
  func requestMediaDataWhenReadyOnQueue(_ queue: dispatch_queue_t, usingBlock block: () -> Void)
  func stopRequestingMediaData()
}
