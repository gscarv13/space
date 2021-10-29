@module("./Navbar.module.css") external style: {..} = "default"

@react.component
let make = () => {
  let (isOpen, setIsOpen) = React.useState(_ => false)
  let handleClick = _ => setIsOpen(p => !p)

  <div className={style["navbar"]}>
    <Logo /> <NavButtonsContainer isOpen /> <MenuButton isOpen handleClick />
  </div>
}
