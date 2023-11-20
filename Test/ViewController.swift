//
//  ViewController.swift
//  Test
//
//  Created by k2 tam on 20/11/2023.
//



import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var clv: UICollectionView!
    
    var myHeight = 300
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCLV()
        
        //        calculateNumLinesOfLabel(text: "Your text go here", fontSize: 16, width: 129)
    }
    
    func calculateNumLinesOfLabel(text: String, fontSize: CGFloat, width: CGFloat) -> Int  {
        
        //Dummy label for calculation
        let label = UILabel()
        label.numberOfLines = 0
        label.layer.frame.size.width = width
        
        label.font = UIFont.systemFont(ofSize: 16)
        
        label.text = text
        
        let noOfLines = ceil(label.intrinsicContentSize.width / label.frame.size.width)
        
        return Int(noOfLines)
        
    }
    
    
    private func setupCLV(){
        let layout = UICollectionViewFlowLayout()
        clv.collectionViewLayout = layout
        
        
        clv.delegate = self
        clv.dataSource = self
        
        clv.register(UINib(nibName: "TestClvCell", bundle: nil), forCellWithReuseIdentifier: TestClvCell.cellIdentifier)
    }
    
}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TestClvCell.cellIdentifier, for: indexPath) as? TestClvCell {
            cell.configure()
            return cell
            
            
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TestClvCell.cellIdentifier, for: indexPath) as? TestClvCell {
            cell.configure()
            
            let cellConstraintSize = CGSize(width: 200, height: CGFloat.greatestFiniteMagnitude)
            let optimalSize = cell.stackView.sizeThatFits(cellConstraintSize)
            
            cell.layoutIfNeeded()
            
            
            return CGSize(width: 200, height: optimalSize.height)
            
        }
        
        return CGSize(width: 200, height: 300)
    }
    
    
}
