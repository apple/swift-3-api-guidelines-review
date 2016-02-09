
@available(OSX 10.10, *)
class AVAudioUnitMIDIInstrument : AVAudioUnit, AVAudioMixing {
  init(audioComponentDescription description: AudioComponentDescription)
  func startNote(note: UInt8, withVelocity velocity: UInt8, onChannel channel: UInt8)
  func stopNote(note: UInt8, onChannel channel: UInt8)
  func sendController(controller: UInt8, withValue value: UInt8, onChannel channel: UInt8)
  func sendPitchBend(pitchbend: UInt16, onChannel channel: UInt8)
  func sendPressure(pressure: UInt8, onChannel channel: UInt8)
  func sendPressure(forKey key: UInt8, withValue value: UInt8, onChannel channel: UInt8)
  func sendProgramChange(program: UInt8, onChannel channel: UInt8)
  func sendProgramChange(program: UInt8, bankMSB: UInt8, bankLSB: UInt8, onChannel channel: UInt8)
  func sendMIDIEvent(midiStatus: UInt8, data1: UInt8, data2: UInt8)
  func sendMIDIEvent(midiStatus: UInt8, data1: UInt8)
  func sendMIDISysExEvent(midiData: Data)
  init()
  @available(OSX 10.11, *)
  func destination(forMixer mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  @available(OSX 10.10, *)
  var volume: Float
  @available(OSX 10.10, *)
  var pan: Float
  @available(OSX 10.10, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  @available(OSX 10.10, *)
  var rate: Float
  @available(OSX 10.10, *)
  var reverbBlend: Float
  @available(OSX 10.10, *)
  var obstruction: Float
  @available(OSX 10.10, *)
  var occlusion: Float
  @available(OSX 10.10, *)
  var position: AVAudio3DPoint
}
