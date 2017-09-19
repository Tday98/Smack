//
//  ChannelCell.swift
//  smack-app
//
//  Created by Tristan Day on 9/18/17.
//  Copyright © 2017 Tristan Day. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var channelName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
        } else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
        
    }
    
    func configureCell(channel : Channel) {
        let title = channel.name ?? ""
        channelName.text = "#\(title)"
    }

}
