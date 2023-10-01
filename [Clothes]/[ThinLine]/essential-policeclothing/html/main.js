var moving = false
var lastOffsetX = 0
var lastOffsetY = 0
var lastScreenX = 0.5 * screen.width
var lastScreenY = 0.5 * screen.height

$(document).on('keydown', function(event) {
    switch (event.key) {
        case 'ArrowLeft':
            $.post('https://thinline_assets/RotatePedLeft', '[]');
            break;
		case 'ArrowRight':
			$.post('https://thinline_assets/RotatePedRight', '[]');
			break;
    }
});

window.addEventListener('message', function (event) {
	if (event.data.action == 'open') {
		var departmentButtons = '';
		var departments = Object.keys(event.data.departments);
        for (let key of departments.sort()) {
            let item = event.data.departments[key];
            departmentButtons += createDepartment(item);
        }
		$('.departments').html(departmentButtons);
		$('.eupui').css('display', 'block');
	} else if (event.data.action == 'changename') {
		$('#name').text(event.data.name);
	} else if (event.data.action == 'helmetmenu') {
        var helmetButtons = '';
		var helmets = Object.keys(event.data.helmets);
        for (let key of helmets.sort()) {
            let item = event.data.helmets[key];
            helmetButtons += createHelmet(item);
        }
        helmetButtons += createHelmetExit()
		$('.helmets').html(helmetButtons);
		$('.helmets').css('display', 'block');
    }
});

$('#buttonChoose').click(function(event) {
	event.preventDefault();
	$('.eupui').css('display', 'none');
	$.post('https://thinline_assets/close', '[]');
});

$('#buttonNext').click(function(event) {
	event.preventDefault();
	$.post('https://thinline_assets/next', '[]');
});

$('#buttonPrev').click(function(event) {
	event.preventDefault();
	$.post('https://thinline_assets/prev', '[]');
});

$('body').on('mousedown', function(event) {
    if (event.button == 0) {
        moving = true;
    }
});

$('body').on('mouseup', function(event) {
    if (moving && event.button == 0) {
        moving = false;
    }
});

$('body').on('mousemove', function(event) {
    if (moving) {
        let offsetX = event.screenX - lastScreenX;
        let offsetY = event.screenY - lastScreenY;
        if ((lastOffsetX > 0 && offsetX < 0) || (lastOffsetX < 0 && offsetX > 0)) {
            offsetX = 0
        }
        if ((lastOffsetY > 0 && offsetY < 0) || (lastOffsetY < 0 && offsetY > 0)) {
            offsetY = 0
        }
        lastScreenX = event.screenX;
        lastScreenY = event.screenY;
        lastOffsetX = offsetX;
        lastOffsetY = offsetY;
        $.post('https://thinline_assets/updateCamRotation', JSON.stringify({
            x: offsetX,
            y: offsetY,
        }));
    }
});

$('body').on('wheel', function(event) {
    let zoom = event.originalEvent.deltaY / 2000;
    $.post('https://thinline_assets/updateCamZoom', JSON.stringify({
        zoom: zoom,
    }));
});

function changedept(department) {
    $.post('https://thinline_assets/change', JSON.stringify({
		department: department
	}));
};

function changehelmet(setup) {
    $.post('https://thinline_assets/changehelmet', JSON.stringify({
		setup: setup
	}));
};

function exithelmet() {
    $('.helmets').css('display', 'none');
    $.post('https://thinline_assets/closehelmet', '[]');
};

function createDepartment(department) {
    return `
        <div class='department-container'>
            <div class='column'>
			    <div class='department' onclick='changedept("${department}")'>${department}</div>
            </div>
        </div>
    `;
};

function createHelmet(setup) {
    return `
        <div class='department-container'>
            <div class='column'>
			    <div class='department' onclick='changehelmet("${setup}")'>${setup}</div>
            </div>
        </div>
    `;
};

function createHelmetExit() {
    return `
        <div class='department-container'>
            <div class='column'>
			    <div class='department' onclick='exithelmet()'>Exit Menu</div>
            </div>
        </div>
    `;
};