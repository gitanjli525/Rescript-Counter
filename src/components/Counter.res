@react.component
let make = (~setStatement, ~setCounter) => {
  let (count, setCount) = React.useState(() => 0)

  let handleIncrease = _ => {
    setCount(prev => prev + 1)
    setStatement((prev: array<Utils.stateCounter>) => {
      // let lastIndex = Js.Array2.length(prev) - 1
      // let lastElement: option<Utils.stateCounter> = Belt.Array.get(prev, lastIndex)
      // Js.log2(lastElement, "last element")
      // let lastElement2 = switch lastElement {
      // | Some(lastEle) => lastEle
      // | None => {serial: lastIndex, amount: 000, total: 000}
      // }
      let lastElement2 = Utils.getLastElementOfArray((prev: array<Utils.stateCounter>))
      Js.log2(lastElement2, "last element")
      prev->Array.push({serial: lastElement2.serial + 1, amount: 1, total: lastElement2.total + 1})
      prev
    })
    setCounter(prev => prev + 1)
  }

  let handleDecrease = _ => {
    setCount(prev => prev - 1)
    setStatement((prev: array<Utils.stateCounter>) => {
      let lastEle = Utils.getLastElementOfArray((prev: array<Utils.stateCounter>))
      Js.log2(lastEle, "last element")
      prev->Array.push({serial: lastEle.serial + 1, amount: -1, total: lastEle.total - 1})
      prev
    })
    setCounter(prev => prev + 1)
  }

  let handleReset = _ => {
    setCount(_ => 0)
    setStatement(_ => [])
    setCounter(prev => prev + 1)
  }

  let my_tuple = ("gitanjli", 23, "developer")

  <div className="border border-pink-500 my-2 p-2">
    <div> {React.string("Counter")} </div>
    <div className="border border-yellow-500 w-10 bg-yellow-100"> {{count}->React.int} </div>
    <button className="border border-green-500 p-2 w-20 bg-green-100" onClick={handleIncrease}>
      {"Increase"->React.string}
    </button>
    <button className="border border-blue-700 p-2 w-20 bg-blue-100" onClick={handleDecrease}>
      {React.string("Decrease")}
    </button>
    <button className="border border-red-700 p-2 w-20 bg-red-100" onClick={handleReset}>
      {React.string("Reset")}
    </button>
  </div>
}
