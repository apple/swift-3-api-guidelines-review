
@available(iOS 9.0, *)
class GKMinmaxStrategist : NSObject, GKStrategist {
  var maxLookAheadDepth: Int
  func bestMoveForPlayer(player: GKGameModelPlayer) -> GKGameModelUpdate?
  func randomMoveForPlayer(player: GKGameModelPlayer, fromNumberOfBestMoves numMovesToConsider: Int) -> GKGameModelUpdate?
  init()
  @available(iOS 9.0, *)
  var gameModel: GKGameModel?
  @available(iOS 9.0, *)
  var randomSource: GKRandom?
  @available(iOS 9.0, *)
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
