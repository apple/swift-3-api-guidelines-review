
@available(iOS 9.0, *)
class GKMinmaxStrategist : Object, GKStrategist {
  var maxLookAheadDepth: Int
  func bestMove(for player: GKGameModelPlayer) -> GKGameModelUpdate?
  func randomMove(for player: GKGameModelPlayer, fromNumberOfBestMoves numMovesToConsider: Int) -> GKGameModelUpdate?
  init()
  @available(iOS 9.0, *)
  var gameModel: GKGameModel?
  @available(iOS 9.0, *)
  var randomSource: GKRandom?
  @available(iOS 9.0, *)
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
