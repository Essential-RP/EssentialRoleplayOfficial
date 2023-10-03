function updateColors()
{
    // cursor
    document.documentElement.style.setProperty("--cursor-dot", config.BASE.color.cursor_dot);
    document.documentElement.style.setProperty("--cursor-ring", config.BASE.color.cursor_ring);

}

let count = 0;
let thisCount = 0;

const handlers = {
    startInitFunctionOrder(data) {
        count = data.count;
    },

    startDataFileEntries(data) {
        count = data.count;
    },

    performMapLoadFunction(data) {
        ++thisCount;
    },
};

window.addEventListener("message", function (e) {
    (handlers[e.data.eventName] || function () {})(e.data);
});
