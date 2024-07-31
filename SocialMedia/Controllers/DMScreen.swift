//
//  DMScreen.swift
//  SocialMedia
//
//  Created by Mehmet Serhat Gültekin on 15.07.2024.
//

import UIKit

class DMScreen: UIViewController {

    @IBOutlet weak var messagesTV: UITableView!
    
    var messages: [Messages] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

extension DMScreen: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        as! DirectMessagesCell
        cell.messageTF.text = messages[indexPath.row].body
        return cell
    }
    
    
}
