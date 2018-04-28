//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Marcel Widmer on 26.04.18.
//  Copyright © 2018 Marcel Widmer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let elements = ["Me-After-Bootcamp", "cat", "horse", "dog", "potato", "meAndBasco", "amo", "cat", "horse", "dog", "potato", "meAndBasco", "amo"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        cell.animalLbl.text = elements[indexPath.row]
        cell.animalImage.image = UIImage(named: elements[indexPath.row])
        return cell
    }

}

