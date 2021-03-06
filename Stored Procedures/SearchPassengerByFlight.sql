CREATE PROCEDURE SearchPassengerByFlight
	@FlightNo char(5)
AS
BEGIN
	SELECT PASSENGER.Fname,PASSENGER.Lname,PASSENGER.Nationality,PASSENGER.PassportNo,PASSENGER.Status
	FROM PASSENGER, BOOKINGPASSENGER, BOOKING, FLIGHTINSTANCE
	WHERE PASSENGER.PassportNo = BOOKINGPASSENGER.PassportNo AND BOOKINGPASSENGER.BookingPNR = BOOKING.BookingPNR AND BOOKING.FlightInstance = FLIGHTINSTANCE.InstanceNo AND FLIGHTINSTANCE.FlightNo = @FlightNo
END
GO
