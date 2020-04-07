/*

run this initially to get jQuery available

var jq = document.createElement('script');
jq.src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js";
document.getElementsByTagName('head')[0].appendChild(jq);
// ... give time for script to load, then type (or see below for non wait option)
$.noConflict();

*/

var i = 0;

var text = "I'm really excited about your business. I am a full stack software engineer and I worked with lots of companies helping them start, grow and scale their businesses. You can find some of my work on https://linkedin.com/in/rusucosmin or my Toptal profile https://www.toptal.com/resume/cosmin-rusu or my blog rusu.io."

var buttons = $('button:contains("Apply")')

function waitThenApply() {
  if ($('textarea[name="userNote"]').length > 0) {
    if ($('button[disabled]:contains("Send Application")').length > 0) {
      console.log("Disabled, skip");
      $('button:contains("Cancel")').click();
      apply();
    } else {
      console.log("Waiting then apply");
      fillPopup(function() {
        setTimeout(function() {
          submitPopup();
          waitThenApply();
        }, 500);
      })
    }
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
    }, 1000);
  } else {
    setTimeout(function() {
      $('textarea[name="userNote"]').val(text);
      $('textarea[name="userNote"]').trigger('change');
      console.log("Waiting to fill popup");
      fillPopup(success);
    }, 1000);
  }
}

function submitPopup() {
  var submit = $('button:contains("Send application")');
  submit.click();
  i = i + 1;
}

function apply() {
  //window.scrollTo(0, document.body.scrollHeight);
  //buttons = $('button:contains("Apply")')
  if (i < buttons.length) {
    buttons = $('button:contains("Apply")')
    console.log("Applying for the " + i + "th job");
    // Click the current button
    buttons[i].click();
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
  window.scrollTo(0, document.body.scrollHeight);
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
