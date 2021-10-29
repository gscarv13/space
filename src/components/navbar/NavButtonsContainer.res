@module("./NavButtonsContainer.module.css") external style: {..} = "default"

@react.component
let make = (~isOpen: bool) => {
  let url = RescriptReactRouter.useUrl()

  let home = "00 HOME"
  let crew = "02 CREW"
  let destination = "01 DESTINATION"
  let technology = "03 TECHNOLOGY"

  let selected = switch url.path {
  | list{"crew"} => crew
  | list{"destination"} => destination
  | list{"technology"} => technology
  | _ => home
  }

  if isOpen {
    <div className={style["container"]}>
      <NavButton linkName=home selected linkTo="/" />
      <NavButton linkName=destination selected linkTo="/destination" />
      <NavButton linkName=crew selected linkTo="/crew" />
      <NavButton linkName=technology selected linkTo="/technology" />
    </div>
  } else {
    <div />
  }
}
