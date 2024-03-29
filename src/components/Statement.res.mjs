// Generated by ReScript, PLEASE EDIT WITH CARE

import * as JsxRuntime from "react/jsx-runtime";

function Statement(props) {
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx("div", {
                      children: "Bank Statement"
                    }),
                JsxRuntime.jsx("div", {
                      children: JsxRuntime.jsxs("table", {
                            children: [
                              JsxRuntime.jsxs("tr", {
                                    children: [
                                      JsxRuntime.jsx("th", {
                                            children: "Serial"
                                          }),
                                      JsxRuntime.jsx("th", {
                                            children: "Amount"
                                          }),
                                      JsxRuntime.jsx("th", {
                                            children: "Total"
                                          })
                                    ]
                                  }),
                              props.statement.map(function (row, index) {
                                    console.log("rendering");
                                    return JsxRuntime.jsxs("tr", {
                                                children: [
                                                  JsxRuntime.jsx("td", {
                                                        children: row.serial
                                                      }),
                                                  JsxRuntime.jsx("td", {
                                                        children: row.amount
                                                      }),
                                                  JsxRuntime.jsx("td", {
                                                        children: row.total
                                                      })
                                                ]
                                              }, String(index));
                                  })
                            ]
                          })
                    })
              ],
              className: "border border-pink-500 my-2"
            });
}

var make = Statement;

export {
  make ,
}
/* react/jsx-runtime Not a pure module */
