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
    
    
    
    required public init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public var uiview: UIView = UIView()
    fileprivate static let h = CGFloat(3)
    
    open override func setup() {
        super.setup()
        height = { LineViewCell.h }
        
        uiview = UIView()
        uiview.translatesAutoresizingMaskIntoConstraints = false
        uiview.contentMode = .redraw
        uiview.backgroundColor = row.value
        
        self.addSubview(uiview)
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[uiview]-0-|", options: [], metrics: nil, views: ["uiview": uiview]))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[uiview]-0-|", options: [], metrics: nil, views: ["uiview": uiview]))
        
        
        uiview.layoutIfNeeded()
    }
    
    open override func update() {
        super.update()
        textLabel?.text = nil
        detailTextLabel?.text = nil
        uiview.backgroundColor = row.value //row.displayValueFor?(row.value)
    }
    
    open override func cellCanBecomeFirstResponder() -> Bool {
        return false//!row.isDisabled && floatLabelTextField.canBecomeFirstResponder
    }
    
    open override func cellBecomeFirstResponder(withDirection direction: Direction) -> Bool {
        return uiview.becomeFirstResponder()
    }
    
    open override func cellResignFirstResponder() -> Bool {
        return uiview.resignFirstResponder()
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
    }
}
