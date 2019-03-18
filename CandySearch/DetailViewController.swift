//
//  DetailViewController.swift
//  CandySearch
//
//  Created by Rajesh Karmaker on 18/3/19.
//  Copyright © 2019 Rajesh Karmaker. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    var detailCandy: Candy? {
        didSet {
            configureView()
        }
    }
    
    func configureView() {
        if let detailCandy = detailCandy {
            if let detailDescriptionLabel = detailDescriptionLabel {
                detailDescriptionLabel.text = detailCandy.name
                title = detailCandy.category
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }


}
