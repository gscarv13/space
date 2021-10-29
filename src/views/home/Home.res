@module("./Home.module.css") external style: {..} = "default"

@react.component
let make = () => {
  <div className={style["home"]}>
    <header>
      <h4> {"So, you want to travel to"->React.string} </h4>
      <h1> {"SPACE"->React.string} </h1>
      <p>
        {`Let’s face it; if you want to go to space, you might as well genuinely 
           go to outer space and not hover kind of on the edge of it. Well sit back,
           and relax because we’ll give you a truly out of this world experience!`->React.string}
      </p>
    </header>
    <button className={style["explore-button"]}> {"EXPLORE"->React.string} </button>
  </div>
}
