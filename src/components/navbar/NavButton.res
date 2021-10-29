@react.component
let make = (~linkName: string, ~selected: string, ~linkTo: string) => {
  let selectedLink = selected == linkName ? "highlight" : ""

  <button onClick={_ => RescriptReactRouter.push(linkTo)} className={selectedLink}>
    {linkName->React.string}
  </button>
}
