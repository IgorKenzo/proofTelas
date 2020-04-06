//
//  PlayerMusica.swift
//  proofTelas
//
//  Created by Igor Kenzo Miyamoto Dias on 06/04/20.
//  Copyright © 2020 Igor Miyamoto. All rights reserved.
//

import Foundation
import AVFoundation

public class PlayerMusica : NSObject, AVAudioPlayerDelegate
{
    
    static var instace : PlayerMusica!
    private var player : AVAudioPlayer!
    
    func PlayerMusica()
    {
        player = AVAudioPlayer()
    }
    
    func play()
    {
        
    }
    
}
