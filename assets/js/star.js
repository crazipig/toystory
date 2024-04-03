window.onload = function () {
  var oCont = document.getElementsByClassName("content")[0];
  var oCont1 = document.getElementsByClassName("content1")[0];
  var aText1 = ["差", "較差", "好", "推薦", "力薦"];
  var aText2 = ["少", "較少", "一般", "多", "很多"];

  Stars(oCont, aText1);
  Stars(oCont1, aText2);
  function Stars(id, Txt) {
    var index = "";
    var aStar = id.getElementsByClassName("star");
    var oStars = id.getElementsByClassName("stars")[0];

    function gray() {
      for (var v = 0; v < aStar.length; v++) {
        aStar[v].style.backgroundColor = "#ccc";
      }
    }

    for (let i = 0; i < aStar.length; i++) {
      function starColor() {
        if (i <= 1) {
          gray();
          for (let t = 0; t <= i; t++) {
            aStar[t].style.backgroundColor = "#999";
          }
        } else {
          gray();
          for (let j = 0; j <= i; j++) {
            aStar[j].style.backgroundColor = "orange";
          }
        }
      }

      aStar[i].onmouseover = function () {
        oStars.innerHTML = Txt[i];
        starColor();

        this.onmouseout = function () {
          gray();
          oStars.innerHTML = "評分";

          if (index === "") {
            return;
          } else if (index <= 1) {
            for (var n = 0; n <= index; n++) {
              aStar[n].style.backgroundColor = "#999";
            }
            oStars.innerHTML = Txt[index];
          } else {
            for (var m = 0; m <= index; m++) {
              aStar[m].style.backgroundColor = "orange";
            }
            oStars.innerHTML = Txt[index];
          }
        };
      };

      aStar[i].onclick = function () {
        this.onmouseout = null;

        oStars.innerHTML = Txt[i];
        if (i <= 1) {
          for (let t = 0; t <= i; t++) {
            aStar[t].style.backgroundColor = "#999";

            index = t;
          }
        } else {
          for (let j = 0; j <= i; j++) {
            aStar[j].style.backgroundColor = "orange";

            index = j;
          }
        }
      };
    }
  }
};
