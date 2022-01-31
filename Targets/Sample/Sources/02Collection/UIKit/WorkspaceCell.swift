//
//  WorkspaceCell.swift
//  Sample
//
//  Created by Hyunyou Lim on 2022/01/26.
//  Copyright © 2022 study.org. All rights reserved.
//

import UIKit

class WorkspaceCell: UITableViewCell {
    @IBOutlet weak var wsImage: UIImageView!
    @IBOutlet weak var wsLabel: UILabel!    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
