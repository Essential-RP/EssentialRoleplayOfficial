let circle_started = false;
let canvas = document.getElementById("circle");
let ctx = canvas.getContext("2d");

let W = canvas.width;
let H = canvas.height;
let degrees = 0;
let new_degrees = 0;
let time = 0;
let color = "#f52727d0"; // needle and winning line if fail
let txtcolor = "#ffffffab"; // number
let bgcolor = "#ee97f185"; // main circle color
let bgcolor2 = "#eb05f3e1"; // Winning line
let bgcolor3 = "#00ff00";
let key_to_press;
let g_start, g_end;
let animation_loop;


let needed = 4;
let streak = 0;

var GetTime = 0
var ClickLock = false
var zz1 = null;
var zz2 = null;
var zz3 = null;
var zz4 = null;



function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min + 1) + min); //The maximum is inclusive and the minimum is inclusive
}

function StartCircle() {
    // Clear the canvas every time a zz4t is drawn
    ctx.clearRect(0,0,W,H);

    // Background 360 degree arc
    ctx.beginPath();
    ctx.strokeStyle = bgcolor;
    ctx.lineWidth = 20;
    ctx.arc(W / 2, H / 2, 100, 0, Math.PI * 2, false);
    ctx.stroke();

    ctx.beginPath();
    ctx.strokeStyle = /* correct == true? bgcolor3 :  */bgcolor2;
    ctx.lineWidth = 20;
    zz1 = g_start;
    zz2 = Math.PI;
    zz3 = g_end;
    zz4 = Math.PI;
    ctx.arc(W / 2, H / 2, 100, zz1 - 90 * zz2 / 180, zz3 - 90 * zz4 / 180, false);
    ctx.stroke();

    // Angle in radians = angle in degrees * PI / 180
    let radians = degrees * Math.PI / 180;
    ctx.beginPath();
    ctx.strokeStyle = color;
    ctx.lineWidth = 40;
    ctx.arc(W / 2, H / 2, 90, radians - 0.1 - 90 * Math.PI / 180, radians - 90 * Math.PI / 180, false);
    ctx.stroke();

    ctx.fillStyle = txtcolor;
    ctx.font = "100px Oswald";
    let text_width = ctx.measureText(key_to_press).width;
    ctx.fillText(key_to_press, W / 2 - text_width / 2, H / 2 + 35);
}

function draw(time) {
    if (typeof animation_loop !== undefined) clearInterval(animation_loop);

    g_start = getRandomInt(20, 40) / 10;
    g_end = getRandomInt(5, 10) / 10;
    g_end = g_start + g_end;

    GetUIColor(bgcolor3)

    degrees = 0;
    new_degrees = 360;

    key_to_press = ''+getRandomInt(1,4);

    time = time;

    setTimeout(() => {
        ClickLock = false
        animation_loop = setInterval(animate_to, time);
    }, GetTime);
}

function animate_to() {
    if (degrees >= new_degrees) {
        CircleFail();
        return;
    }

    degrees+=1.8;
    StartCircle();
}

function correct(){
    streak += 1;
    time = time - 2
    if (time <= 0) {
        time = 0
    };
    if (streak == needed) {
        clearInterval(animation_loop)

        GetUIColor(bgcolor3)

        setTimeout(() => {
            ClickLock = false
            endGame(true);
        }, 200);
    }else{
        GetTime = 200
        draw(time);
    };
}

function CircleFail(){
    clearInterval(animation_loop);
    GetUIColor(color)
    setTimeout(() => {
        ClickLock = false
        endGame(false);
    }, 750);
}

function GetUIColor(change){
    ctx.beginPath();
    ctx.strokeStyle = change;
    ctx.lineWidth = 20;
    ctx.arc(W / 2, H / 2, 100, zz1 - 90 * zz2 / 180, zz3 - 90 * zz4 / 180, false);
    ctx.stroke();

    let radians = degrees * Math.PI / 180;
    ctx.beginPath();
    ctx.strokeStyle = color;
    ctx.lineWidth = 40;
    ctx.arc(W / 2, H / 2, 90, radians - 0.1 - 90 * Math.PI / 180, radians - 90 * Math.PI / 180, false);
    ctx.stroke();
}

document.addEventListener("keydown", function(ev) {
    let key_pressed = ev.key;
    let valid_keys = ['1','2','3','4'];
    if( valid_keys.includes(key_pressed) && circle_started ){
        if (ClickLock == false){
            ClickLock = true
            if( key_pressed === key_to_press ){
                let d_start = (180 / Math.PI) * g_start;
                let d_end = (180 / Math.PI) * g_end;
                if( degrees < d_start ){
                    CircleFail();
                }else if( degrees > d_end ){
                    CircleFail();
                }else{
                    correct();
                }
            }else{
                CircleFail();
            }
        }
    }
});

function startGame(time){
    $('#circle').show();
    circle_started = true;
    GetTime = 0
    draw(time);
}

function endGame(status){
    $('#circle').hide();
    circle_started = false;
    var xhr = new XMLHttpRequest();
    let u = "fail";
        if(status)
            u = "success";
    xhr.open("POST", `https://ps-ui/circle-${u}`, true);
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.send(JSON.stringify({}));
    streak = 0;
    needed = 4;
 }

  window.addEventListener("message", (event) => {
    if(event.data.action == "circle-start") {
        if(event.data.circles != null ){
            needed = event.data.circles
        }else{
            needed = 4
        }
        if(event.data.time != null ){
            time = event.data.time
        }else{
            time = 2
        }
      startGame(time)
    }
  })