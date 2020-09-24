//
//  SearchTableView.swift
//  MusDZList
//
//  Created by Denis Selivanov on 21.09.2020.
//  Copyright © 2020 Denis Selivanov. All rights reserved.
//

import UIKit

class SearchTableView: UITableView {
    
    var someArray = [String]()
    
    init() {
        super.init(frame: .zero, style: .plain)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        delegate = self
        dataSource = self
        register(SearchCell.self, forCellReuseIdentifier: String(describing: SearchCell.self))
        
        showsVerticalScrollIndicator = false
        isHidden = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension SearchTableView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return someArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SearchCell.self), for: indexPath) as! SearchCell
        cell.textLabel?.text = someArray[indexPath.row]
        return cell
    }
    
}
