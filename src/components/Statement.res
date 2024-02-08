@react.component
let make = () => {
    <div className="border border-pink-500 my-2">
    <div>{"Bank Statement"->React.string}</div>
    <div>
        <table>
            <tr>
                <th>{"Serial"->React.string}</th>
                <th>{"Amount"->React.string}</th>
                <th>{"Total"->React.string}</th>
            </tr>
        </table>
    </div>
    </div>
}