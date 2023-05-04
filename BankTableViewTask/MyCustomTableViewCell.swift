//
//  MyCustomTableViewCell.swift
//  BankTableViewTask
//
//  Created by Kajol   on 03/05/23.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bankNameLabel: UILabel!
    @IBOutlet weak var bankImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
