//
//  DetaillViewController.swift
//  MovieViewer
//
//  Created by macbookair11 on 2/5/16.
//  Copyright © 2016 InnovationSpace. All rights reserved.
//

import UIKit

class DetaillViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var infoView: UIView!
    
    var movei: NSDictionary!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width:scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)
        let title = movei["title"] as? String
        titleLabel.text = title
        
        let overview = movei["overview"]
        overviewLabel.text = overview as? String
        
        overviewLabel.sizeToFit()
        
        let baseUrl = "http://image.tmdb.org/t/p/w500"
        if let posterPath = movei["poster_path"] as? String {
            
            
            let imageUrl = NSURL(string: baseUrl + posterPath)
            posterImageView.setImageWithURL(imageUrl!)
            //print("row\(indexPath.row)")
        }

        print(movei)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
