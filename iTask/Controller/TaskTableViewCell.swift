//
//  taskTableViewCell.swift
//  iTask
//
//  Created by Amanda Hack on 05/07/22.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    static let identifier:String = "TaskTableViewCell"
    
    static func nib()-> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    @IBOutlet weak var nameTaskUILabel: UILabel!
    @IBOutlet weak var view: UIView!
    @IBAction func checkBox(_ sender: Checkbox) {
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.view.layer.cornerRadius = view.frame.size.height/4
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
