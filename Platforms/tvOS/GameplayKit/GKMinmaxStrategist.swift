
@available(tvOS 9.0, *)
class GKMinmaxStrategist : Object, GKStrategist {
  var maxLookAheadDepth: Int
  func bestMove(forPlayer player: GKGameModelPlayer) -> GKGameModelUpdate?
  func randomMove(forPlayer player: GKGameModelPlayer, fromNumberOfBestMoves numMovesToConsider: Int) -> GKGameModelUpdate?
  init()
  @available(tvOS 9.0, *)
  var gameModel: GKGameModel?
  @available(tvOS 9.0, *)
  var randomSource: GKRandom?
  @available(tvOS 9.0, *)
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
