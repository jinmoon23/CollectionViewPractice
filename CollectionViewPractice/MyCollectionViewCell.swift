//
//  MyCollectionViewCell.swift
//  CollectionViewPractice
//
//  Created by 최진문 on 2024/05/02.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    static let identifier = "MyCollectionViewCell"
    
    let nameLabel = UILabel()
    let statusMessageLabel = UILabel()
    let bgImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI(profile: ProfileModel) {
        contentView.backgroundColor = .gray
        
        nameLabel.text = profile.name
        statusMessageLabel.text = profile.statueMessage
        bgImageView.image = profile.bgImage
        
        nameLabel.backgroundColor = .yellow
        statusMessageLabel.backgroundColor = .green
    }
    
    func setConstraints() {
        contentView.addSubview(nameLabel)
        contentView.addSubview(statusMessageLabel)
        contentView.addSubview(bgImageView)
        
        nameLabel.snp.makeConstraints {make in
            make.centerX.centerY.equalToSuperview()
        }
        statusMessageLabel.snp.makeConstraints{make in
            make.top.equalTo(nameLabel.snp.bottom).offset(5)
            make.horizontalEdges.equalToSuperview()
        }
        bgImageView.snp.makeConstraints {make in
            make.bottom.equalTo(nameLabel.snp.top).offset(-10)
            make.centerX.equalToSuperview()
        }
    }
}

#Preview {
  ViewController()
}

