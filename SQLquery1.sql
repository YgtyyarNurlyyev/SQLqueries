SELECT client_number, SUM(outcome='win'),SUM(outcome='lose') FROM bid, event_value
WHERE bid.play_id=event_value.play_id AND bid.coefficient=event_value.value 
GROUP BY client_number
ORDER BY client_number