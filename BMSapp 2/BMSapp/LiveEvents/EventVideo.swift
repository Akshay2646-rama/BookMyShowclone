//
//  EventVideo.swift
//  BMSapp
//
//  Created by Nxtwave on 09/10/25.
//

import SwiftUI
import AVKit

struct EventVideo: View {
    let videoURL: URL
    @State private var player: AVPlayer?

    var body: some View {
        VideoPlayer(player: player)
            .frame(height: 200)
            .cornerRadius(15)
            .shadow(radius: 5)
            .onAppear {
                let playerItem = AVPlayerItem(url: videoURL)
                player = AVPlayer(playerItem: playerItem)
                player?.isMuted = true     
                player?.play()
                
                NotificationCenter.default.addObserver(
                    forName: .AVPlayerItemDidPlayToEndTime,
                    object: playerItem,
                    queue: .main
                ) { _ in
                    player?.seek(to: .zero)
                    player?.play()
                }
            }
    }
}

