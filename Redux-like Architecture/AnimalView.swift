//
//  AnimalView.swift
//  Redux-like Architecture
//
//  Created by Jason Jeon on 7/10/22.
//

import SwiftUI

struct AnimalView: View
{
    @EnvironmentObject var store: AppStore
    
    func loadAnimal()
    {
        store.dispatch(.getAnimal)
    }
    
    
    var body: some View
    {
        VStack
        {
            Text(store.state.currentAnimal)
                .font(.system(.largeTitle))
                .padding()
            
            Button("Tap me!", action: { self.loadAnimal()})
            
        }
    }
}

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView()
    }
}
