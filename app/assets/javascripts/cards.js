document.addEventListener("DOMContentLoaded", function() {
  const preferenceItems = document.querySelectorAll('.preference-item');

  preferenceItems.forEach(item => {
    item.addEventListener('click', function() {
      // Remove 'selected' class from all items
      preferenceItems.forEach(item => {
        item.querySelector('.preference-image').classList.remove('selected');
      });

      // Add 'selected' class to the clicked item
      this.querySelector('.preference-image').classList.add('selected');
    });
  });
});
