//
//  Reducers.swift
//  Redux-like Architecture
//
//  Created by Jason Jeon on 7/10/22.
//

typealias Reducer<State, Action> = (inout State, Action) -> Void

func appReducer(state: inout AppState, action: AppAction) -> Void {
    
    switch(action){
        
        case .getAnimal:
            state.currentAnimal = ["Cat", "Dog", "Crow", "Horse", "Iguana", "Cow", "Racoon"]
                .randomElement() ?? ""
        
    }
}
