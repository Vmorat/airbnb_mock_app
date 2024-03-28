document.addEventListener('DOMContentLoaded', () => {
  const alerts = document.querySelectorAll('.alert');

  alerts.forEach(alert => {
    // Show alert
    alert.classList.add('show');

    // Hide alert after 3 seconds
    setTimeout(() => {
      // Hide alert
      alert.classList.remove('show');

      // Remove alert after hiding animation (0.5s)
      setTimeout(() => {
        alert.remove();
      }, 500);
    }, 3000);
  });
});
