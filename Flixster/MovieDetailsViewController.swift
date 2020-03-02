//
//  MovieDetailsViewController.swift
//  Flixster
//
//  Created by Jenny  on 2/27/20.
//  Copyright © 2020 Allan. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    @IBOutlet var synopsisLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var posterView: UIImageView!
    var movie: [String:Any]!
    @IBOutlet var backdropView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text=movie["title"] as? String
        synopsisLabel.text=movie["overview"] as? String
        let baseUrl = "https://image.tmdb.org/t/p/w185"
               let posterPath = movie["poster_path"] as! String
               let postUrl = URL(string: baseUrl + posterPath)
               
               posterView.af_setImage(withURL: postUrl!)
        
    
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w500" + backdropPath)
               
        backdropView.af_setImage(withURL: backdropUrl!)
        self.view.bringSubviewToFront(posterView)
        self.view.sendSubviewToBack(backdropView)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
