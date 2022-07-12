//
//  ContentView.swift
//  Redux-like Architecture
//
//  Created by Jason Jeon on 7/10/22.
//

import SwiftUI

struct ContentView: View {
    
    // set the currentAnimal value by force when initializing the store.
    //let store = AppStore(initialState: .init(currentAnimal: "Dog"), reducer: appReducer)
    
    let store = AppStore(initialState: .init(), reducer: appReducer)
    
    init(){
        store.dispatch(.getAnimal)
    }
    
    
    var body: some View {
        AnimalView()
            .environmentObject(store)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
