//
//  FilmVC.swift
//  FilmsHW
//
//  Created by Bader Alawadh on 7/8/20.
//  Copyright © 2020 Bader Alawadh. All rights reserved.
//

import UIKit
import AVFoundation

class FilmVC: UIViewController {

    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var filmImage: UIImageView!
    @IBOutlet weak var castLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    var themeSong: AVAudioPlayer?
    
    var film = Film(name: "", rating: "", pgRating: "", actors: "", categories: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmImage.image = UIImage(named: film.name)
        castLabel.text = film.actors
        ratingLabel.text = film.rating
        categoryLabel.text = film.categories
        playSound()
    }

    func playSound() {
        let url = Bundle.main.url(forResource: film.name, withExtension: "mp3")!

        do {
            themeSong = try AVAudioPlayer(contentsOf: url)
            guard let player = themeSong else { return }

            player.prepareToPlay()
            player.play()

        } catch let error as NSError {
            print(error.description)
        }
    }
    
}
