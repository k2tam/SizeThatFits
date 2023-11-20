//
//  TestClvCell.swift
//  Test
//
//  Created by k2 tam on 20/11/2023.
//

import UIKit

class TestClvCell: UICollectionViewCell {
    static let cellIdentifier = "TestClvCell"
    
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var imgV: UIImageView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    public func configure(){
        label.text = "Randomly text to test fdj df dfd dfkjd dfjd dkfjd dfjdk dfkj dfdkj "
        bottomLabel.text = "Hi ofdfjl fjdkjfk jfkdfj dkf jdf fjdkjf dj fdkfj d lsfa kfja fslsa jkj kdfjd"

    }

}
