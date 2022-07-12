//
//  AppStore.swift
//  Redux-like Architecture
//
//  Created by Jason Jeon on 7/10/22.
//

import Foundation

typealias AppStore = Store<AppState, AppAction>

final class Store<State, Action>: ObservableObject
{
    
    // Read-Only access to app state
    @Published private(set) var state: State
    
    private let reducer: Reducer<State,Action>
    
    init(initialState: State, reducer: @escaping Reducer<State, Action>)
    {
        self.state = initialState
        self.reducer = reducer
    }
    
    // The dispatch function
    func dispatch(_ action: Action)
    {
        reducer(&state, action)
    }
}
