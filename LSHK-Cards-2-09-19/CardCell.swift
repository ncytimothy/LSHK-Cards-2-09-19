//
//  CardCell.swift
//  LSHK-Cards-2-09-19
//
//  Created by Tim Ng on 2/9/19.
//  Copyright © 2019 timothyng. All rights reserved.
//

import UIKit
import Cards

class CardCell: UICollectionViewCell {
    
    let card: Card = {
        let card = CardHighlight()
        card.backgroundColor = UIColor(red: 0, green: 94/255, blue: 112/255, alpha: 1)
        card.icon = UIImage(named: "flappy")
        card.title = "Welcome \nto \nCards !"
        card.itemTitle = "Flappy Bird"
        card.itemSubtitle = "Flap That !"
        card.textColor = UIColor.white
        
        
        card.translatesAutoresizingMaskIntoConstraints = false
        
        return card
    }()
    
    @objc func handleCard() {
        print("Handling card tap...")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(card)
        
        card.anchor(top: nil, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, paddingTop: 0, paddingLeading: 8, paddingBottom: 0, paddingTrailing: 8, width: 0, height: 230)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
