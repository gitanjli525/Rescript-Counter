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
  
  <div className="border border-pink-500 my-2 p-2">
  <div>{React.string("Counter")}</div>
  <div className="border border-yellow-500 w-10 bg-yellow-100">{{count}->React.int}</div>
  <button className="border border-green-500 p-2 w-20 bg-green-100" onClick={handleClick}>{"Increase"->React.string}</button> 
  <button className="border border-blue-700 p-2 w-20 bg-blue-100" onClick={handleDecrease}>{React.string("Decrease")}</button>
  <button className="border border-red-700 p-2 w-20 bg-red-100" onClick={handleReset}>{React.string("Reset")}</button>
  </div>
}