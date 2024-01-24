//
//  NotCellTableViewCell.swift
//  NoteApp
//
//  Created by Ebrar Levent on 24.01.2024.
//

import UIKit

class NotCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelDersAdi: UILabel!
    
    @IBOutlet weak var labelNot1: UILabel!
    
    @IBOutlet weak var labelNot2: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()


    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
