@react.component
let make = (~linkName: string, ~selected: string, ~linkTo: string, ~numberTag: string) => {
  let selectedLink = selected == linkName ? "highlight" : ""

  <button onClick={_ => RescriptReactRouter.push(linkTo)} className={selectedLink}>
    <span className="number-tag"> {numberTag->React.string} </span> {linkName->React.string}
  </button>
}
