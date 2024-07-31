//
//  DirectMessagesCell.swift
//  SocialMedia
//
//  Created by Mehmet Serhat Gültekin on 23.07.2024.
//

import UIKit

class DirectMessagesCell: UITableViewCell {

    @IBOutlet weak var profileIV: UIImageView!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var messageTF: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
