//
//  TestOneTableViewCell.swift
//  ios-arc-carrington
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/27.
//

import UIKit

class TestOneTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cakeName: UILabel!
    @IBOutlet weak var cakeType: UILabel!
    
    @IBOutlet weak var batterType: UILabel!
    @IBOutlet weak var toppingsType: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
