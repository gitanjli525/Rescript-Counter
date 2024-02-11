type stateCounter = {
  serial: int,
  amount: int,
  total: int,
}

let getLastElementOfArray = (arr: array<stateCounter>) => {
  let lastIndex = Js.Array2.length(arr) - 1
  let lastElement: option<stateCounter> = Belt.Array.get(arr, lastIndex)
  let lastEle = switch lastElement {
  | Some(lastE) => lastE
  | None => {serial: lastIndex, amount: 000, total: 000}
  }
  lastEle
}
