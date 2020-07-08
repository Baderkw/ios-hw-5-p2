//
//  FilmsTableVC.swift
//  FilmsHW
//
//  Created by Bader Alawadh on 7/8/20.
//  Copyright © 2020 Bader Alawadh. All rights reserved.
//

import UIKit

class FilmsTableVC: UITableViewController {

    var films = FilmsData().films
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return films.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 233
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "filmCell", for: indexPath) as! FilmCell
        let film = films[indexPath.row]
        
        cell.filmImage.image = UIImage(named: film.name)
        cell.pgRateLabel.text = film.pgRating
        cell.ratingLabel.text = film.rating
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedFilm = films[indexPath.row]
        performSegue(withIdentifier: "toFilmVC", sender: selectedFilm)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let filmVC = segue.destination as? FilmVC
        
        filmVC?.film = sender as! Film
    }

}
