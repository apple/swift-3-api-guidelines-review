
@available(OSX 10.10, *)
class AVAudioUnitSampler : AVAudioUnitMIDIInstrument {
  func loadSoundBankInstrumentAtURL(_ bankURL: NSURL, program program: UInt8, bankMSB bankMSB: UInt8, bankLSB bankLSB: UInt8) throws
  func loadInstrumentAtURL(_ instrumentURL: NSURL) throws
  func loadAudioFilesAtURLs(_ audioFiles: [NSURL]) throws
  var stereoPan: Float
  var masterGain: Float
  var globalTuning: Float
}
