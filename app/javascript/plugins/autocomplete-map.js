import places from "places.js";

const initAutocomplete = () => {
  const addressInput = document.getElementById("report_address");
  if (locationInput) {
    places({ container: locationInput });
  }
};

export { initAutocomplete };
