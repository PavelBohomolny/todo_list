//
//  RegisterView.swift
//  ToDoList
//
//  Created by Pavel Bohomolnyi on 07/05/2023.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subTitle: "Start organising todos",
                       angle: -15,
                       backgroundColor: .orange)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
