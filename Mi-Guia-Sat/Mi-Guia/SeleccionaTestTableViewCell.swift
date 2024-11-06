//
//  SeleccionaTestTableViewCell.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 07/03/22.
//  Copyright © 2022 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class SeleccionaTestTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageCell: UIImageView!
    
    
    @IBOutlet weak var labelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
