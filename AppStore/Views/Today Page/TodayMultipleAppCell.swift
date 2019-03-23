//
//  TodayMultipleAppCell.swift
//  AppStore
//
//  Created by Ziad Hamdieh on 2019-03-22.
//  Copyright © 2019 Ziad Hamdieh. All rights reserved.
//

import UIKit

class TodayMultipleAppCell: BaseTodayCell {
    
    override var todayItem: TodayItem! {
        didSet {
            categoryLabel.text = todayItem.category
            titleLabel.text = todayItem.title
            
            multipleAppsController.results = todayItem.apps
            multipleAppsController.collectionView.reloadData()
        }
    }
    
    let categoryLabel = UILabel(text: "THE DAILY LIST", font: .systemFont(ofSize: 20))
    let titleLabel = UILabel(text: "Test-Drive These CarPlay Apps", font: .boldSystemFont(ofSize: 28), numberOfLines: 2)
    let multipleAppsController = TodayMultipleAppsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 15
                
        let stackView = VerticalStackView(arrangedSubviews: [
            categoryLabel,
            titleLabel,
            multipleAppsController.view
            ], spacing: 12)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 24, left: 24, bottom: 24, right: 24 ))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
