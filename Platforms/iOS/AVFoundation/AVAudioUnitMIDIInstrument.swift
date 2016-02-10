
@available(iOS 8.0, *)
class AVAudioUnitMIDIInstrument : AVAudioUnit, AVAudioMixing {
  init(audioComponentDescription description: AudioComponentDescription)
  func startNote(note: UInt8, withVelocity velocity: UInt8, onChannel channel: UInt8)
  func stopNote(note: UInt8, onChannel channel: UInt8)
  func sendController(controller: UInt8, withValue value: UInt8, onChannel channel: UInt8)
  func sendPitchBend(pitchbend: UInt16, onChannel channel: UInt8)
  func sendPressure(pressure: UInt8, onChannel channel: UInt8)
  func sendPressureFor(key key: UInt8, withValue value: UInt8, onChannel channel: UInt8)
  func sendProgramChange(program: UInt8, onChannel channel: UInt8)
  func sendProgramChange(program: UInt8, bankMSB: UInt8, bankLSB: UInt8, onChannel channel: UInt8)
  func sendMIDIEvent(midiStatus: UInt8, data1: UInt8, data2: UInt8)
  func sendMIDIEvent(midiStatus: UInt8, data1: UInt8)
  func sendMIDISysExEvent(midiData: Data)
  init()
  @available(iOS 9.0, *)
  func destinationFor(mixer mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  @available(iOS 8.0, *)
  var volume: Float
  @available(iOS 8.0, *)
  var pan: Float
  @available(iOS 8.0, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  @available(iOS 8.0, *)
  var rate: Float
  @available(iOS 8.0, *)
  var reverbBlend: Float
  @available(iOS 8.0, *)
  var obstruction: Float
  @available(iOS 8.0, *)
  var occlusion: Float
  @available(iOS 8.0, *)
  var position: AVAudio3DPoint
}
