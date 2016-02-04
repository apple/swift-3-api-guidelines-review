
@available(tvOS 7.0, *)
class GCMicroGamepadSnapshot : GCMicroGamepad {
  @NSCopying var snapshotData: Data
  init(snapshotData data: Data)
  init(controller: GCController, snapshotData data: Data)
  init()
}
struct GCMicroGamepadSnapShotDataV100 {
  var version: UInt16
  var size: UInt16
  var dpadX: Float
  var dpadY: Float
  var buttonA: Float
  var buttonX: Float
  init()
  init(version: UInt16, size: UInt16, dpadX: Float, dpadY: Float, buttonA: Float, buttonX: Float)
}
@available(tvOS 7.0, *)
func GCMicroGamepadSnapShotDataV100FromNSData(snapshotData: UnsafeMutablePointer<GCMicroGamepadSnapShotDataV100>, _ data: Data?) -> Bool
@available(tvOS 7.0, *)
func NSDataFromGCMicroGamepadSnapShotDataV100(snapshotData: UnsafeMutablePointer<GCMicroGamepadSnapShotDataV100>) -> Data?
