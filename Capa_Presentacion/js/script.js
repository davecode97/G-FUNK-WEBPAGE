/* -----------------    Tiempo de navegación     ---------- */
startday = new Date(); clockStart = startday.getTime(); function initStopwatch() { var myTime = new Date(); return ((myTime.getTime() - clockStart) / 1000); }
function getSecs() { var tSecs = Math.round(initStopwatch()); var iSecs = tSecs % 60; var iMins = Math.round((tSecs - 30) / 60); var sSecs = "" + ((iSecs > 9) ? iSecs : "0" + iSecs); var sMins = "" + ((iMins > 9) ? iMins : "0" + iMins); document.getElementById('timespent').value = sMins + ":" + sSecs; window.setTimeout('getSecs()', 1000); }
window.onload = function () {
    window.setTimeout('getSecs()', 1);

    /*  ----------------        Fecha ISO     ----------------  */
    var d = new Date("2015-03-25");
    document.getElementById("demo").innerHTML = d;

    var d = new Date("2015-03-25");
    document.getElementById("demo2").innerHTML = d;

    var d = new Date("2015-03-25");
    document.getElementById("demo3").innerHTML = d;
}

/*  -------------       Subscripción        ------------   */
function myFunction() {
    var email = prompt("Ingrese su correo:");
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)) {
        alert("Felicidades " + email + " se ha subscrito!");
    } else {
        alert("La dirección de email es incorrecta.");
    }
}

/*  ---------   Validad formulario de contacto    -------- */
document.getElementById('Contact').addEventListener('submit', function (e) {
    const Name = document.getElementById('Name').value;
    const lastName = document.getElementById('lastName').value;
    const Subject = document.getElementById('Subject').value;


    if (Name === '' || lastName === '' || Subject === '') {
        alert("Debe llenar todos los campos!");
    }
    else {
        alert("Su mensaje a sido enviado!");
    }
});

/*  ----------    Bottom volver Arriba     ------------ */

// Esta en index.html