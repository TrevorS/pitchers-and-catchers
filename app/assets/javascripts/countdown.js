var ready = function() {
  var $countDownTitle = $('#countdown-title');
  var scheduling = getScheduling($('#time-pitchers-and-catchers'));
  var clock = $('#countdown').FlipClock({
    clockFace: 'DailyCounter'
  });
  properlySetClock(clock, scheduling);
  attachButtons(clock, $countDownTitle);
};

$(document).ready(ready);
$(document).on('page:load', ready);

function attachButtons(clock, $countDownTitle) {
  $('time').each(function() {
    var $selector  = $(this);
    var scheduling = getScheduling($selector);
    var eventName  = getName($selector);
    var $button    = getButton($selector);
    $button.click(function(event) {
      event.preventDefault();
      properlySetClock(clock, scheduling);
      $countDownTitle.text(eventName);
    });
  });
}

function properlySetClock(clock, rawScheduling) {
  var correctedScheduling = rawScheduling;
  var countdown = true;
  if (rawScheduling < 0) {
    correctedScheduling = rawScheduling * -1;
    countdown = false;
  }
  console.log('correctedScheduling: ' + correctedScheduling);
  console.log('countdown: ' + countdown);
  clock.setTime(correctedScheduling);
  clock.setCountdown(countdown);
  clock.start();
}

function getButton($selector) {
  return $selector.parents('.event').find('a');
}

function getName($selector) {
  return $selector.attr('id').replace('time-', '').replace(/-/g,' ');
}

function getScheduling($selector) {
  var scheduling = Date.parse($selector.attr('datetime')) / 1000;
  var diff = scheduling - (Date.now() / 1000);
  console.log('diff: ' + diff);
  return diff;
}
