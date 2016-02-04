
typealias AVAudioFramePosition = Int64
typealias AVAudioFrameCount = UInt32
typealias AVAudioPacketCount = UInt32
typealias AVAudioChannelCount = UInt32
typealias AVAudioNodeCompletionHandler = () -> Void
typealias AVAudioNodeBus = Int
struct AVAudio3DPoint {
  var x: Float
  var y: Float
  var z: Float
  init()
  init(x: Float, y: Float, z: Float)
}
func AVAudioMake3DPoint(x: Float, _ y: Float, _ z: Float) -> AVAudio3DPoint
typealias AVAudio3DVector = AVAudio3DPoint
func AVAudioMake3DVector(x: Float, _ y: Float, _ z: Float) -> AVAudio3DVector
struct AVAudio3DVectorOrientation {
  var forward: AVAudio3DVector
  var up: AVAudio3DVector
  init()
  init(forward: AVAudio3DVector, up: AVAudio3DVector)
}
func AVAudioMake3DVectorOrientation(forward: AVAudio3DVector, _ up: AVAudio3DVector) -> AVAudio3DVectorOrientation
struct AVAudio3DAngularOrientation {
  var yaw: Float
  var pitch: Float
  var roll: Float
  init()
  init(yaw: Float, pitch: Float, roll: Float)
}
func AVAudioMake3DAngularOrientation(yaw: Float, _ pitch: Float, _ roll: Float) -> AVAudio3DAngularOrientation
