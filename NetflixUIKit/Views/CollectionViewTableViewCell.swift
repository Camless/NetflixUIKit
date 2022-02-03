//
//  CollectionViewTableViewCell.swift
//  NetflixUIKit
//
//  Created by Carlos Morales III on 2/3/22.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {
	
	static let identifier = "CollectionViewTableViewCell"
	private let collectionView: UICollectionView = {
		let layout = UICollectionViewFlowLayout()
		layout.itemSize = CGSize(width: 140, height: 200)
		layout.scrollDirection = .horizontal
		let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
		view.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
		return view
	}()
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		contentView.backgroundColor = .systemPink
		contentView.addSubview(collectionView)
		
		collectionView.delegate = self
		collectionView.dataSource = self
		
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		collectionView.frame = contentView.bounds
	}

}

extension CollectionViewTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 1
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 10
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
		cell.backgroundColor = .systemGreen
		return cell
	}
	
	
}
