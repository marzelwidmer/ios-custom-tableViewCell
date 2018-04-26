//
//  CustomTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Marcel Widmer on 26.04.18.
//  Copyright © 2018 Marcel Widmer. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalLbl: UILabel!
    


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
