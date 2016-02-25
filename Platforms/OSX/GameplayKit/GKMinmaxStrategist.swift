
@available(OSX 10.11, *)
class GKMinmaxStrategist : NSObject, GKStrategist {
  var maxLookAheadDepth: Int
  func bestMoveForPlayer(_ player: GKGameModelPlayer) -> GKGameModelUpdate?
  func randomMoveForPlayer(_ player: GKGameModelPlayer, fromNumberOfBestMoves numMovesToConsider: Int) -> GKGameModelUpdate?
  @available(OSX 10.11, *)
  var gameModel: GKGameModel?
  @available(OSX 10.11, *)
  var randomSource: GKRandom?
  @available(OSX 10.11, *)
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
