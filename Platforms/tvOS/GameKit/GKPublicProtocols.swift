
protocol GKSessionDelegate : ObjectProtocol {
  @available(tvOS 3.0, *)
  optional func session(session: GKSession, peer peerID: String, didChange state: GKPeerConnectionState)
  optional func session(session: GKSession, didReceiveConnectionRequestFromPeer peerID: String)
  optional func session(session: GKSession, connectionWithPeerFailed peerID: String, withError error: Error)
  optional func session(session: GKSession, didFailWithError error: Error)
}
protocol GKVoiceChatClient : ObjectProtocol {
  func voiceChatService(voiceChatService: GKVoiceChatService, send data: Data, toParticipantID participantID: String)
  func participantID() -> String
  optional func voiceChatService(voiceChatService: GKVoiceChatService, sendRealTime data: Data, toParticipantID participantID: String)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStartWithParticipantID participantID: String)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didNotStartWithParticipantID participantID: String, error: Error?)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStopWithParticipantID participantID: String, error: Error?)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didReceiveInvitationFromParticipantID participantID: String, callID: Int)
}
