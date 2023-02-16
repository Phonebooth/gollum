import React from "react";
import * as ReactDOM from "react-dom/client";
import { Plate, TEditableProps } from "@udecode/plate";

window.initializeWYSIWYG = function () {
    const editorContainer = document.querySelector("#wysiwyg-content");
    const root = ReactDOM.createRoot(editorContainer);

    root.render(React.createElement(Plate));
};
