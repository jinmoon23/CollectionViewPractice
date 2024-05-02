//
//  ViewController.swift
//  CollectionViewPractice
//
//  Created by 최진문 on 2024/05/02.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 8
        layout.minimumInteritemSpacing = 8
        let cellWidth: CGFloat = {
            let inset: CGFloat = 20
            let spacing: CGFloat = 8
            let deviceWidth = UIScreen.main.bounds.width
            let countForLine:CGFloat = 3
            let width = (deviceWidth - spacing * (countForLine - 1) - inset * 2 - 1) / countForLine
            return width
        }()
//        let deviceWidth = UIScreen.main.bounds.width
//        let countForLine:CGFloat = 3
//        let cellWidth = (deviceWidth - spacing * 2 - 1) / countForLine
//        layout.itemSize = .init(width: 100, height: 100)
        layout.sectionInset = .init(top: 20, left: 20, bottom: 20, right: 20)
        layout.itemSize = .init(width: cellWidth, height: cellWidth)
        
        return layout
    }()
    
    lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
    
    var profileList: [ProfileModel] = [
        .init(name: "진문1", statueMessage: "인생을 고민중이야!", bgImage: UIImage(systemName: "star")!),
        .init(name: "진문2", statueMessage: "인생을 고민중이야!", bgImage: UIImage(systemName: "star.fill")!),
        .init(name: "진문3", statueMessage: "인생을 고민중이야!", bgImage: UIImage(systemName: "heart")!),
        .init(name: "진문4", statueMessage: "인생을 고민중이야!", bgImage: UIImage(systemName: "heart.fill")!),
        .init(name: "진문5", statueMessage: "인생을 고민중이야!", bgImage: UIImage(systemName: "person")!),
        .init(name: "진문6", statueMessage: "인생을 고민중이야!", bgImage: UIImage(systemName: "person.fill")!),
        .init(name: "진문7", statueMessage: "인생을 고민중이야!", bgImage: UIImage(systemName: "circle")!),
        .init(name: "진문8", statueMessage: "인생을 고민중이야!", bgImage: UIImage(systemName: "circle.fill")!)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConstraints()
        configureUI()
    }
    private func setConstraints() {
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
        
    }
    
    private func configureUI() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.backgroundColor = .yellow
    }

}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profileList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as? MyCollectionViewCell else { return UICollectionViewCell() }
        
        cell.configureUI(profile: profileList[indexPath.row])
        
        return cell
    }
}

#Preview {
  ViewController()
}

