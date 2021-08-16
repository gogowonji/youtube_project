//
//  ViewController.swift
//  youtube
//
//  Created by 지원 on 2021/08/16.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }
    


}

