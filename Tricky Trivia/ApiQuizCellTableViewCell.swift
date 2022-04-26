//
//  ApiQuizCellTableViewCell.swift
//  Tricky Trivia
//
//  Created by Jeremy Meharg on 4/25/22.
//

import UIKit

class ApiQuizCellTableViewCell: UITableViewCell {

    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var option1: UILabel!
    @IBOutlet weak var option2: UILabel!
    @IBOutlet weak var option3: UILabel!
    @IBOutlet weak var option4: UILabel!
    @IBOutlet weak var correctAns: UITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
