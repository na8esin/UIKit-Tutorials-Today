//
//  ReminderViewController.swift
//  Today
//  
//  Created by t-watanabe on 2023/07/28.
//

import UIKit


class ReminderViewController: UICollectionViewController {
    var reminder: Reminder
    
    init(reminder: Reminder) {
        self.reminder = reminder
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        listConfiguration.showsSeparators = false
        let listLayout = UICollectionViewCompositionalLayout.list(using: listConfiguration)
        super.init(collectionViewLayout: listLayout)
    }
    
    // failable initializerというものらしい
    // このサンプルでは、コード内でしかこのクラスが初期化されないので、
    // こういう実装でいいらしい。
    // 他のパターンは、Interface Builder が初期するパターンなのか？
    required init?(coder: NSCoder) {
        fatalError("Always initialize ReminderViewController using init(reminder:)")
    }
}
