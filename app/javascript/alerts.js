$(document).ready(function() {
  // Function to handle Devise alerts
  function handleDeviseAlerts() {
    // Select all Devise alert messages
    var alerts = $('#devise-alerts .alert');

    // Display each alert message
    alerts.each(function() {
      // Fade in the alert message
      $(this).fadeIn();

      // Store reference to the alert element
      var alertElement = $(this);

      // Set a timeout to fade out the alert message after 3 seconds
      setTimeout(function() {
        alertElement.fadeOut(function() {
          // Remove the alert element from the DOM after fading out
          alertElement.remove();
        });
      }, 3000); // 3000 milliseconds = 3 seconds
    });
  }

  // Call the function to handle Devise alerts
  handleDeviseAlerts();
});
