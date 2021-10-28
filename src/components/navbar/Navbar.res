@module("./Navbar.module.css") external style: {..} = "default"

@react.component
let make = () => {
  <div className={style["navbar"]}> <Logo /> <MenuOpen /> </div>
}
