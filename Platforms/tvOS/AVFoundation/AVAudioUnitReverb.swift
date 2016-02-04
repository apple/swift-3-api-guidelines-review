
@available(tvOS 8.0, *)
enum AVAudioUnitReverbPreset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case SmallRoom
  case MediumRoom
  case LargeRoom
  case MediumHall
  case LargeHall
  case Plate
  case MediumChamber
  case LargeChamber
  case Cathedral
  case LargeRoom2
  case MediumHall2
  case MediumHall3
  case LargeHall2
}
@available(tvOS 8.0, *)
class AVAudioUnitReverb : AVAudioUnitEffect {
  func loadFactoryPreset(preset: AVAudioUnitReverbPreset)
  var wetDryMix: Float
  init(audioComponentDescription: AudioComponentDescription)
  init()
}
