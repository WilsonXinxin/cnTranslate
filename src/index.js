import { translate } from "./utils.js";
import "./style/index.css";

const handleTranslate = (type) => {
  const textarea = document.getElementById("textarea");
  textarea.value = translate(textarea.value, type);
};

const btnHK = document.getElementById("btnHK");
const btnCN = document.getElementById("btnCN");
btnHK.addEventListener("click", () => handleTranslate("HK"));
btnCN.addEventListener("click", () => handleTranslate("CN"));
