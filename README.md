# UIKitのチュートリアル

## 最中
https://developer.apple.com/tutorials/app-dev-training/editing-reminders

## 完了
https://developer.apple.com/tutorials/app-dev-training/using-content-views
https://developer.apple.com/tutorials/app-dev-training/managing-content-views
https://developer.apple.com/tutorials/app-dev-training/getting-ready-for-editing
https://developer.apple.com/tutorials/app-dev-training/displaying-reminder-details

## using-content-viewsのSection 6の最後で出た
```
Diffable data source detected an attempt to insert or append 1 item identifier that already exists in the snapshot. The existing item identifier will be moved into place instead, but this operation will be more expensive. For best performance, inserted item identifiers should always be unique. Set a symbolic breakpoint on BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_ALREADY_EXISTS to catch this in the debugger. Item identifier that already exists: Today.ReminderViewController.Row.header("Title")
```

updateSnapshotForEditing()関数の
`snapshot.appendItems([.header(Section.title.name)], toSection: .title)`
の部分が余分だった

```
Warning: You are setting a new content configuration to a cell that has an existing content configuration, but the existing content view does not support the new configuration. This means the existing content view must be replaced with a new content view created from the new configuration, instead of updating the existing content view directly, which is expensive. Use separate registrations or reuse identifiers for different types of cells to avoid this. Make a symbolic breakpoint at UIContentConfigurationAlertForReplacedContentView to catch this in the debugger.
Cell: <UICollectionViewListCell: 0x10521a480; frame = (20 44; 390 44); clipsToBounds = YES; hidden = YES; layer = <CALayer: 0x6000002a4980>>;
Existing content configuration: <UIListContentConfiguration: 0x60000290e920; text = 'D...e' (length = 4); Base Style = Grouped Header; directionalLayoutMargins = {17, 8, 6, 8}; axesPreservingSuperviewLayoutMargins = [Horizontal]; imageToTextPadding = 16; textToSecondaryTextVerticalPadding = 3>;
New content configuration: Configuration(text: Optional("Submit reimbursement report"))
```

調査中

### なんか右に寄っちゃう
`subview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: insets.left).isActive = true`
が足りてなかった

## 後で調べよう
The compiler automatically provides an implementation of the hashing function for an enumeration that declares conformance to the Hashable protocol, as long as that enumeration’s associated values also conform to Hashable.

## 特定のViewController専用のextensionって使いまわせないよなぁ

## UIContentConfigurationはiOS14から使えるようになった便利なやつ
