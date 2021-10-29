@module("./NavButtonsContainer.module.css") external style: {..} = "default"

@react.component
let make = (~isOpen: bool) => {
  let url = RescriptReactRouter.useUrl()

  let home = "HOME"
  let crew = "CREW"
  let destination = "DESTINATION"
  let technology = "TECHNOLOGY"

  let selected = switch url.path {
  | list{"crew"} => crew
  | list{"destination"} => destination
  | list{"technology"} => technology
  | _ => home
  }

  if isOpen {
    <div className={style["container"]}>
      <NavButton linkName=home selected linkTo="/" numberTag="00 " />
      <NavButton linkName=destination selected linkTo="/destination" numberTag="01 " />
      <NavButton linkName=crew selected linkTo="/crew" numberTag="02 " />
      <NavButton linkName=technology selected linkTo="/technology" numberTag="03 " />
    </div>
  } else {
    <div />
  }
}
