//
//  AVPlayerView.swift
//  multiple
//
//  Created by COFFEE on 2018/12/22.
//  Copyright © 2018 COFFEE. All rights reserved.
//

import UIKit
import AVFoundation

class AVPlayerView: UIView {
    
    private lazy var player:AVPlayer = {
        let mediaURL = URL(string: "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8")!
        let asset = AVAsset(url: mediaURL)
        
        let playerItem = AVPlayerItem(asset: asset)
        return AVPlayer(playerItem: playerItem)
    }()

    override class var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
    
    func play(){
        let layer: AVPlayerLayer = self.layer as! AVPlayerLayer
        if layer.player == nil {
            layer.player = player
        }
        layer.player?.play()
    }
    
    func pause(){
        let layer: AVPlayerLayer = self.layer as! AVPlayerLayer
        layer.player?.pause()
    }

}
