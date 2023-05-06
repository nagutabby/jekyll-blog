import { listen } from "https://cdn.jsdelivr.net/npm/quicklink@2.3.0/dist/quicklink.mjs"
import hljs from "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.8.0/es/highlight.min.js";

listen();

let preCodes = document.querySelectorAll("pre code:not(.hljs)");
for (var i = 0; i < preCodes.length; i++)
  hljs.highlightBlock(preCodes[i]);


