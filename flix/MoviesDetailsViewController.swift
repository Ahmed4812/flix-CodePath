//
//  MoviesDetailsViewController.swift
//  flix
//
//  Created by Ali Ahmed Khan on 3/5/22.
//

import UIKit
import AlamofireImage

class MoviesDetailsViewController: UIViewController {
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
                
        let baseUrl = "https://image.tmdb.org/t/p/w780"
        let backdropPath = movie["poster_path"] as! String
        let backdropUrl = URL(string: baseUrl + backdropPath)
        backdropView.af.setImage(withURL: backdropUrl!)

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
