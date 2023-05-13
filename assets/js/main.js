import hljs from "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.8.0/es/highlight.min.js";

let preCodes = document.querySelectorAll("pre code:not(.hljs)");
for (var i = 0; i < preCodes.length; i++)
  hljs.highlightBlock(preCodes[i]);


