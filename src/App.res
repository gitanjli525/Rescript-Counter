open Counter

@react.component
let make = () => {
  //let defaultState: array<Counter.stateCounter> = [{serial: 0, amount: 0, total: 0}]
  let (statement: array<Counter.stateCounter>, setStatement) = React.useState(() => [
    {serial: 0, amount: 0, total: 0},
  ])
  <>
    <Counter statement setStatement />
    <Statement />
  </>
}
