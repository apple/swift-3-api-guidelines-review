
@available(tvOS 8.0, *)
class AVAudioBuffer : Object, Copying, MutableCopying {
  var format: AVAudioFormat { get }
  var audioBufferList: UnsafePointer<AudioBufferList> { get }
  var mutableAudioBufferList: UnsafeMutablePointer<AudioBufferList> { get }
  init()
  @available(tvOS 8.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  func mutableCopy(withZone zone: Zone = nil) -> AnyObject
}
@available(tvOS 8.0, *)
class AVAudioPCMBuffer : AVAudioBuffer {
  init(pcmFormat format: AVAudioFormat, frameCapacity: AVAudioFrameCount)
  var frameCapacity: AVAudioFrameCount { get }
  var frameLength: AVAudioFrameCount
  var stride: Int { get }
  var floatChannelData: UnsafePointer<UnsafeMutablePointer<Float>> { get }
  var int16ChannelData: UnsafePointer<UnsafeMutablePointer<Int16>> { get }
  var int32ChannelData: UnsafePointer<UnsafeMutablePointer<Int32>> { get }
  convenience init()
}
@available(tvOS 9.0, *)
class AVAudioCompressedBuffer : AVAudioBuffer {
  init(format: AVAudioFormat, packetCapacity: AVAudioPacketCount, maximumPacketSize: Int)
  init(format: AVAudioFormat, packetCapacity: AVAudioPacketCount)
  var packetCapacity: AVAudioPacketCount { get }
  var packetCount: AVAudioPacketCount
  var maximumPacketSize: Int { get }
  var data: UnsafeMutablePointer<Void> { get }
  var packetDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription> { get }
  init()
}
