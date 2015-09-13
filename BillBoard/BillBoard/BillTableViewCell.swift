//
//  BillTableViewCell.swift
//  BillBoard
//
//  Created by Wang Yu on 9/12/15.
//  Copyright (c) 2015 Takefive Interactive. All rights reserved.
//

import UIKit
import Spring

class BillTableViewCell: UITableViewCell {

    @IBOutlet weak var backView: SpringView!
    @IBOutlet weak var paidImageView: DesignableImageView!
    @IBOutlet weak var ownedImageView: DesignableImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dollarSignLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.animation = "zoomIn"
        backView.animate()
        updateBalanceLabelColor()
        
        paidImageView.image = FakeDataManager.randomAvatar()
        ownedImageView.image = FakeDataManager.randomAvatar()
        titleLabel.text = FakeDataManager.titleGenerate()
        balanceLabel.text = NSString(format: "%.02f", FakeDataManager.randomDecimal()) as String
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateBalanceLabelColor() {
        let greenColor = UIColor(hex: "39AE54")
        let redColor = UIColor(hex: "E24E35")
        if let balance = balanceLabel.text {
            if balance.lowercaseString.rangeOfString("-") != nil {
                balanceLabel.textColor = redColor
                dollarSignLabel.textColor = redColor
            } else {
                balanceLabel.textColor = greenColor
                dollarSignLabel.textColor = greenColor
            }
        }
    }
    
    func configure(bill: Bill) {
        
    }

}
