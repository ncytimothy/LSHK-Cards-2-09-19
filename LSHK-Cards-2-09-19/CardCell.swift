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
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(card)
        
         card.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, paddingTop: 8, paddingLeading: 8, paddingBottom: 0, paddingTrailing: 8, width: frame.width, height: 230)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
