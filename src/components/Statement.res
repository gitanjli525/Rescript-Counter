@react.component
let make = (~statement: array<Utils.stateCounter>, ~counter) => {
  //   React.useEffect1(() => {
  //     Js.log(statement)
  //     None
  //   }, [counter])
  //   Js.log2(statement, "statemn")
  <div className="border border-pink-500 my-2">
    <div> {"Bank Statement"->React.string} </div>
    <div>
      <table>
        <tr>
          <th> {"Serial"->React.string} </th>
          <th> {"Amount"->React.string} </th>
          <th> {"Total"->React.string} </th>
        </tr>
        // <tr>
        //   <td> {0->React.int} </td>
        //   <td> {0->React.int} </td>
        //   <td> {0->React.int} </td>
        // </tr>
        {statement
        ->Array.mapWithIndex((row: Utils.stateCounter, index: int) => {
          Js.log("rendering")
          <tr key={Belt.Int.toString(index)}>
            <td> {row.serial->React.int} </td>
            <td> {row.amount->React.int} </td>
            <td> {row.total->React.int} </td>
          </tr>
        })
        ->React.array}
      </table>
    </div>
  </div>
}
