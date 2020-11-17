document.addEventListener("DOMContentLoaded", async () => {
  document.getElementById("delete").addEventListener("click", () => {
    let arr = document.querySelectorAll("input[name=table]:checked");
    arr = [...arr].map((x) => x.value);

    let url = `delete.php?max=${arr.length}`;
    for (let i = 0; i < arr.length; i++) {
      url += "&" + i + "=" + arr[i];
    }

    /* delete */

    const xmlhttpDel = new XMLHttpRequest();
    xmlhttpDel.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        location.reload();
      }
    };
    xmlhttpDel.open("GET", url, true);
    xmlhttpDel.send();
  });
});
