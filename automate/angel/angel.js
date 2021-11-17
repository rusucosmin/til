
// run this initially to get jQuery available

var jq = document.createElement('script');
jq.src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js";
document.getElementsByTagName('head')[0].appendChild(jq);

setTimeout(function() {
var i = 0;

// HealthCare
// var text = "I saw you're working in healthcare, curious how do you find developers comfortable with HIPAA compliance? I've worked with seed and series-A startups to scale their software products from $1M to $4M ARR. It involves... Worth exploring?"
// General
var text = "I saw you're looking to hire software engineers. Curios, how do you know structure the teams to achieve the higest velocity? I've worked with seed and series-A startups as lead, VP or CTO roles to scale their software team and products from $1M to $4M ARR. It involves... Worth exploring?"

var buttons = $('button:contains("Apply")')

function waitThenApply() {
  if ($('textarea[name="userNote"]').length > 0) {
    console.log("Waiting then apply");
    fillPopup(function() {
      setTimeout(function() {
        submitPopup();
        waitThenApply();
      }, 500);
    })
  } else {
    apply();
  }
}

function fillPopup(success) {
  if ($('textarea[name="userNote"]').length > 0) {
    console.log("Filling popup");
    // Fill the popup
    $('textarea[name="userNote"]').val(text);
    $('textarea[name="userNote"]').trigger('change');
    setTimeout(function() {
      success();
    }, 500);
  } else {
    setTimeout(function() {
      $('textarea[name="userNote"]').val(text);
      $('textarea[name="userNote"]').trigger('change');
      console.log("Waiting to fill popup");
      fillPopup(success);
    }, 500);
  }
}

function submitPopup() {
  var submit = $('button:contains("Send application")');
  if (submit) {
    submit.click();
  }
}

function apply() {
  //window.scrollTo(0, document.body.scrollHeight);
  //buttons = $('button:contains("Apply")')
  if (i < buttons.length) {
    buttons = $('button:contains("Apply")')
    console.log("Applying for the " + i + "th job");
    // Click the current button
    buttons[i].click();
    i = i + 1;
    // Wait for the popup to show
    fillPopup(function() {
      submitPopup();
      waitThenApply();
    });
  } else {
    loadMore();
  }
}

function loadMore() {
  console.log("loading more");
  window.scrollTo(0, 2 * document.body.scrollHeight);
  setTimeout(function() {
    console.log("Waiting for new jobs");
    if (buttons.length == $('button:contains("Apply")')) {
      loadMore();
    } else {
      buttons = $('button:contains("Apply")');
      console.log("Loaded new jobs.");
      console.log("Total = " + buttons.length);
      // Apply for the next one
      apply();
    }
  }, 5000)
}

console.log("Loaded initial jobs = " + buttons.length);
apply();
}, 2000);
