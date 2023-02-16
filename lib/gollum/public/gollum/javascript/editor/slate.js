//= require react/umd/react.development.js
//= require react-dom/umd/react-dom.development.js
//= require react-dom/umd/react-dom-server.browser.development.js
//= require slate/dist/slate.js
//= require slate-react/dist/slate-react.js

console.log("Hello Slate!");

window.initializeWYSIWYG = function () {
    const container = document.querySelector("#wysiwyg-content");
    const root = ReactDOM.createRoot(container);
    const editor = Slate.createEditor();
    root.render(
        React.createElement(SlateReact.Slate, {
            editor,
            value: [{ children: [{ text: "" }] }],
        })
    );
};
