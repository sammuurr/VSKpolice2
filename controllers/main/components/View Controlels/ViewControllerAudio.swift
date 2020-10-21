//
//  ViewControllerAudio.swift
//  VSKpolice2
//
//  Created by Nq on 20.10.2020.
//

import UIKit
import MediaPlayer

class ViewControllerAudio: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
    var player = AVPlayer()
    var playStatus = false

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "www", ofType: "mp3")!))
    }
        
    
    
    @IBAction func playAndPauseButton(_ sender: UIButton) {
        if playStatus{
            player.pause()
            sender.setTitle("▶️", for: .normal)
        }else{
            player.play()
            sender.setTitle("⏹", for: .normal)
        }
        playStatus = !playStatus
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "audioCell", for: indexPath) as? CollectionViewCellAudio
        
        return cell!
    }
}
