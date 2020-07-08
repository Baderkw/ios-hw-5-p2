//
//  FilmVC.swift
//  FilmsHW
//
//  Created by Bader Alawadh on 7/8/20.
//  Copyright © 2020 Bader Alawadh. All rights reserved.
//

import UIKit

class FilmVC: UIViewController {

    
    @IBOutlet weak var filmImage: UIImageView!
    
    @IBOutlet weak var castLabel: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    var film = Film(name: "", rating: "", pgRating: "", actors: "", categories: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmImage.image = UIImage(named: film.name)
        castLabel.text = film.actors
        ratingLabel.text = film.rating
    }
    
}
