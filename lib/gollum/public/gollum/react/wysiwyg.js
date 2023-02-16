import React from "react";
import * as ReactDOM from "react-dom/client";
import {
    Plate,
    PlateProvider,
    useResetPlateEditor,
    usePlateSelectors,
} from "@udecode/plate";
import { serialize } from "remark-slate";
import { unified } from "unified";

const markdownParser = require("remark-parse");
const slateCompiler = require("remark-slate");

class WYSIWYG extends React.Component {
    constructor(props) {
        super(props);
        this.value = [{ children: [{ text: "" }] }];
    }

    render() {
        return React.createElement(Plate, { value: this.value });
    }

    updateValue(val) {
        this.value = val;
        this.forceUpdate();
    }
}

window.initializeWYSIWYG = function () {
    const container = document.querySelector("#wysiwyg-content");
    const root = ReactDOM.createRoot(container);

    const markdownContent = document.querySelector("#gollum-editor-body").value;
    const slateContent = unified()
        .use(markdownParser.default)
        .use(slateCompiler.default)
        .processSync(markdownContent).result;

    console.log(slateContent);

    root.render(
        React.createElement(Plate, {
            initialValue: slateContent,
        })
    );
    // root.render(window.wysiwyg);
};

window.loadMarkdownToWYSIWYG = async function (markdownText) {
    const parsed = await unified()
        .use(markdownParser.default)
        .use(slateCompiler.default)
        .process(markdownText);

    window.wysiwygRef.current.updateValue(parsed.result);
};
