import ComposableArchitecture

struct RootState {
    
}

enum RootAction {
    
}

struct RootEnvironment { }

let reducer = Reducer<RootState, RootAction, RootEnvironment>
    .combine()
