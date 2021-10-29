@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  Js.log(url)

  let component = switch url.path {
  | list{"destination"} => <h1> {"Destinations"->React.string} </h1>
  | list{"technology"} => <h1> {"Technology"->React.string} </h1>
  | list{"crew"} => <h1> {"Crew"->React.string} </h1>
  | list{} => <Home />
  | _ => <h1> {"404"->React.string} </h1>
  }

  <div> <Navbar /> {component} </div>
}
