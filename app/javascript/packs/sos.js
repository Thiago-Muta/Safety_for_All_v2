import { csrfToken } from "@rails/ujs";

const initSos = () => {
  const button = document.getElementById('sos');
  if (button) {
    button.addEventListener('click', (event) => {
      event.preventDefault();
      navigator.geolocation.getCurrentPosition((position) => {
      
        fetch(button.dataset.path, {
          method: 'POST',
          headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken(), 'Content-Type': 'application/json'},
          body: JSON.stringify({latitude: position.coords.latitude, longitude: position.coords.longitude})
        }).then(response => response.json())
        .then(data => {
          alert(data.message);
        })
      })
      return false;
    })
  }
}

export { initSos }
