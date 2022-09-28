//
//  ReminderListViewController+DataSource.swift
//  Today
//
//  Created by 渡辺孝之 on 2022/09/28.
//

import UIKit

extension ReminderListViewController {
    typealias DataSource = UICollectionViewDiffableDataSource<Int, String>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Int, String>
}
