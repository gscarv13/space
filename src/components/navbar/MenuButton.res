@react.component
let make = (~handleClick, ~isOpen) => {
  isOpen ? <MenuClose handleClick /> : <MenuOpen handleClick />
}
