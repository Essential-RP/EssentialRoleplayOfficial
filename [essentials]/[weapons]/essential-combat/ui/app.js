window.addEventListener('message', (event) => {
    if (event.data.type === 'crosshair') {
        let ele = document.querySelector('#container');
        ele.style.display = event.data.value ? 'block' : 'none';
    } else if (event.data.type === 'ammo') {
        updateAmmoDisplay(event.data.data);
    }
});

const ammoCountElement = document.querySelector('.ammo-count');
const ammoMaxElement = document.querySelector('.ammo-max');

function updateAmmoDisplay(data) {
    if (data.ClipAmmo === 0 && data.MaxAmmo === 0) {
        // If both ClipAmmo and MaxAmmo are zero, hide the elements
        ammoCountElement.style.display = 'none';
        ammoMaxElement.style.display = 'none';
    } else {
        // Otherwise, update the text content and display the elements
        ammoCountElement.textContent = data.ClipAmmo;
        ammoMaxElement.textContent = `/ ${data.MaxAmmo}`;
        ammoCountElement.style.display = 'inline'; // Display the elements
        ammoMaxElement.style.display = 'inline';
    }
}