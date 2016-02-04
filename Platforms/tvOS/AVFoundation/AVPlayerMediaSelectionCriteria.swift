
@available(tvOS 7.0, *)
class AVPlayerMediaSelectionCriteria : Object {
  var preferredLanguages: [String]? { get }
  var preferredMediaCharacteristics: [String]? { get }
  init(preferredLanguages: [String]?, preferredMediaCharacteristics: [String]?)
  init()
}
