//
//  ViewController.swift
//  youtube
//
//  Created by 지원 on 2021/08/16.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate{
    //delegate - handling user interaction events
    
    @IBOutlet weak var tableView: UITableView!
    
    var model = Model()
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set itself as the datasource and delegate
        tableView.dataSource = self
        tableView.delegate = self
        
        //set itself as the delegate to Model
        model.delegate = self
        
        
        model.getVideos()
    }
    
    
    //MARK: - Model delegate Methods
    func videosFetched(_ videos: [Video]) {
        
        //Set the returned videos to our video property
        self.videos = videos
    
        //Refresh the tableview
        tableView.reloadData()
        
    }
    
    
    
    //MARK: - TableView Methods
    
    //How many videos are there
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    //What data I display
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VEDIOCELL_ID, for: indexPath)
        
        //Configure the cell with the data
        //Get the title for the video in question
        let title = self.videos[indexPath.row].title
        
        cell.textLabel?.text = title
        
        //Return the cell
        
        
    }

    //didSelectRowAt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }


}

