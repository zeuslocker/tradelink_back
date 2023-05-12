today_midnight = DateTime.current.midnight
tomorrow_midnight = DateTime.tomorrow
[
  { title: 'res 1', start: today_midnight + 12.hours, finish: today_midnight + 13.hours },
  { title: 'res 2', start: today_midnight + 15.hours, finish: today_midnight + 17.hours },
  { title: 'res 3', start: today_midnight + 9.hours, finish: today_midnight + 9.5.hours },

  { title: 'res 1', start: tomorrow_midnight + 11.hours, finish: tomorrow_midnight + 12.5.hours },
  { title: 'res 2', start: tomorrow_midnight + 17.hours, finish: tomorrow_midnight + 20.hours },
  { title: 'res 3', start: tomorrow_midnight + 9.hours, finish: tomorrow_midnight + 9.5.hours }
].each do |attrs|
  Reservation.create!(attrs)
end
