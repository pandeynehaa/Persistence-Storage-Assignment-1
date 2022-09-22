//
//  CustomTableViewCell.swift
//  Todo_app
//
//  Created by ek-mac-02 on 21/09/2022.
//

import UIKit


class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    static var identifier: String = "CustomTableViewCell"

}

