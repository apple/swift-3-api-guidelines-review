
extension AVSampleBufferDisplayLayer {
  func enqueueSampleBuffer(sampleBuffer: CMSampleBuffer)
  func flush()
  func flushAndRemoveImage()
  var isReadyForMoreMediaData: Bool { get }
  func requestMediaDataWhenReadyOn(queue: dispatch_queue_t, using block: () -> Void)
  func stopRequestingMediaData()
}
