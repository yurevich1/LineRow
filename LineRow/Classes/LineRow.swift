//
//  LineRow.swift
//  LineRow
//
//  Created by Admin on 18.07.17.
//  Copyright © 2017 PS. All rights reserved.
//

import UIKit
import Eureka

// MARK: LineCell

public class LineViewCell: Cell<UIColor> {
    
    fileprivate static let DEFAULT_HEIGHT = CGFloat(3)
    
    open lazy var uiView: UIView = { [unowned self] in
        let uiView = UIView()
        
        uiView.translatesAutoresizingMaskIntoConstraints = false
        uiView.contentMode = .redraw
        uiView.backgroundColor = .black
        
        self.contentView.addSubview(uiView)
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[uiView]-0-|", options: [], metrics: nil, views: ["uiView": uiView]))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[uiView]-0-|", options: [], metrics: nil, views: ["uiView": uiView]))
        
        return uiView
        }()
    
    required public init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    open override func setup() {
        super.setup()
        height = { LineViewCell.DEFAULT_HEIGHT }
        uiView.backgroundColor = row.value
        uiView.layoutIfNeeded()
    }
    
    open override func update() {
        super.update()
        textLabel?.text = nil
        detailTextLabel?.text = nil
        uiView.backgroundColor = row.value
    }
    
    open override func cellCanBecomeFirstResponder() -> Bool {
        return false
    }
    
    open override func cellBecomeFirstResponder(withDirection direction: Direction) -> Bool {
        return uiView.becomeFirstResponder()
    }
    
    open override func cellResignFirstResponder() -> Bool {
        return uiView.resignFirstResponder()
    }
    
}

public class LineCell : LineViewCell, CellType {
    
    required public init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func setup() {
        super.setup()
    }
}

public final class LineRow: Row<LineCell>, RowType {
    public required init(tag: String?) {
        super.init(tag: tag)
        value = .black
    }
}
