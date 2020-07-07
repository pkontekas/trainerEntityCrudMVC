// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

function deleted() {
 if(confirm("Are you sure you want to delete this Trainer?")) 
      return true;
      else
          return false;
  }


function submitted() {
  if (confirm('Are you sure you want to Submit the Form?')) 
      return true;
      else
          return false;
}

function updated() {
  if (confirm('Are you sure you want to Update the Form with these changes?')) 
      return true;
      else
          return false;
  } 
