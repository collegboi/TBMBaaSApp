//
//  DetailViewController.swift
//  TBMBaaSApp
//
//  Created by Timothy Barnard on 13/03/2017.
//  Copyright © 2017 Timothy Barnard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var userView: UserView!

    func configureView() {
        
        //self.userView.backgroundColor = UIColor.white
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

