@react.component
let make = () => {
    let (count, setCount) = React.useState(() => 0)

  let handleClick = (_) => {
    setCount((prev) => (prev+1))
  }

  let handleDecrease = (_) => {
    setCount((prev) => (prev-1))
  }

  let handleReset = (_) => {
    setCount((_) => (0))
  }
  
  <div>
  <div>{React.string("Hello world")}</div>
  <div>{{count}->React.int}</div>
  <button className="border border-green-500 p-2 w-20 bg-green-100" onClick={handleClick}>{"Increase"->React.string}</button> 
  <button className="border border-red-700 p-2 w-20 bg-red-100" onClick={handleDecrease}>{React.string("Decrease")}</button>
  <button className="border border-red-700 p-2 w-20 bg-red-100" onClick={handleReset}>{React.string("Reset")}</button>
  </div>
}