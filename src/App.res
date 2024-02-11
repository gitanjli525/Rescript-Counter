@react.component
let make = () => {
  let (counter, setCounter) = React.useState(() => 0)
  let defaultState: array<Utils.stateCounter> = [{serial: 0, amount: 0, total: 0}]
  let (statement: array<Utils.stateCounter>, setStatement) = React.useState(() => defaultState)
  <>
    <Counter setStatement setCounter />
    <Statement statement counter />
  </>
}
