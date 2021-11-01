// Give acces to jsonResponse type and handleFetch function
open Fetch

@react.component
let make = () => {
  let initialState: DataSourceType.jsonResponse = {
    destinations: Belt.Map.String.empty,
    crew: Belt.Map.String.empty,
    technology: Belt.Map.String.empty,
  }

  let (items, setItems) = React.useState(_ => initialState)

  React.useEffect0(() => {
    handleFetch(setItems)
    None
  })

  let url = RescriptReactRouter.useUrl()

  let component = switch url.path {
  | list{"destination"} => <h1> {"Destinations"->React.string} </h1>
  | list{"technology"} => <h1> {"Technology"->React.string} </h1>
  | list{"crew"} => <h1> {"Crew"->React.string} </h1>
  | list{} => <Home />
  | _ => <h1> {"404"->React.string} </h1>
  }

  <div> <Navbar /> {component} </div>
}
