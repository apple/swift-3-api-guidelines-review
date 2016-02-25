
@available(OSX 10.11, *)
class GKMinmaxStrategist : NSObject, GKStrategist {
  var maxLookAheadDepth: Int
  func bestMove(for player: GKGameModelPlayer) -> GKGameModelUpdate?
  func randomMove(for player: GKGameModelPlayer, fromNumberOfBestMoves numMovesToConsider: Int) -> GKGameModelUpdate?
  @available(OSX 10.11, *)
  var gameModel: GKGameModel?
  @available(OSX 10.11, *)
  var randomSource: GKRandom?
  @available(OSX 10.11, *)
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
