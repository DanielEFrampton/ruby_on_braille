window.onload = function() {
  let button = document.getElementById('transform-button');
  button.onmouseover = changeTextToBraille;
  button.onmouseout = changeTextToEnglish;

  function changeTextToBraille() {
    event.target.value = '⠞⠗⠁⠝⠎⠋⠕⠗⠍';
    event.target.className = 'braille_button';
  };

  function changeTextToEnglish() {
    event.target.value = 'Transform';
    event.target.className = '';
  };
};
