
@available(tvOS 7.0, *)
class GCGamepadSnapshot : GCGamepad {
  @NSCopying var snapshotData: Data
  init(snapshotData data: Data)
  init(controller: GCController, snapshotData data: Data)
  init()
}
struct GCGamepadSnapShotDataV100 {
  var version: UInt16
  var size: UInt16
  var dpadX: Float
  var dpadY: Float
  var buttonA: Float
  var buttonB: Float
  var buttonX: Float
  var buttonY: Float
  var leftShoulder: Float
  var rightShoulder: Float
  init()
  init(version: UInt16, size: UInt16, dpadX: Float, dpadY: Float, buttonA: Float, buttonB: Float, buttonX: Float, buttonY: Float, leftShoulder: Float, rightShoulder: Float)
}
@available(tvOS 7.0, *)
func GCGamepadSnapShotDataV100FromNSData(snapshotData: UnsafeMutablePointer<GCGamepadSnapShotDataV100>, _ data: Data?) -> Bool
@available(tvOS 7.0, *)
func NSDataFromGCGamepadSnapShotDataV100(snapshotData: UnsafeMutablePointer<GCGamepadSnapShotDataV100>) -> Data?
