/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Gender]
      ,[Age]
      ,[Customer_Type]
      ,[Type_of_Travel]
      ,[Class]
      ,[Flight_Distance]
      ,[Departure_Delay]
      ,[Arrival_Delay]
      ,[Departure_and_Arrival_Time_Convenience]
      ,[Ease_of_Online_Booking]
      ,[Check_in_Service]
      ,[Online_Boarding]
      ,[Gate_Location]
      ,[On_board_Service]
      ,[Seat_Comfort]
      ,[Leg_Room_Service]
      ,[Cleanliness]
      ,[Food_and_Drink]
      ,[In_flight_Service]
      ,[In_flight_Wifi_Service]
      ,[In_flight_Entertainment]
      ,[Baggage_Handling]
      ,[Satisfaction]
  FROM [Airline Passengers Satisfaction].[dbo].[airline_passenger_satisfaction]
  
---Q1:Select top 5  row of the table
  select top(5) * from airline_passenger_satisfaction

  ---Q2:Count the total number of customer in airline datasets
  select COUNT(id) as Total_Customer from airline_passenger_satisfaction
  ---Ans
----129880
---Q3:Average of Arrival Delay
select round(AVG(arrival_delay),2) as Average_of_Arrival_Delay
 from airline_passenger_satisfaction
 ---Ans
----15.09
---Q4:Average of Departure Delay
select ROUND(avg(departure_delay),2) as Average_of_Departure_Delay
from airline_passenger_satisfaction
---Ans
----14.71
---Q5:Percentage of Arrival Delay
select 
round((sum(case when arrival_delay>0 then 1 else 0 end)*100.0/count(id)),2) As Percentage_Delay
from airline_passenger_satisfaction
---Ans
43.680000000000
--Q6:Percentage of Deperture Delay
select 
(round(sum(case when departure_delay>0 then 1 else 0 end)*100.0/count(id),2)) As Percentage_Delay
from airline_passenger_satisfaction
---Ans:
43.520000000000
---Q7.Average Stisfacting of bag handeling Star rating
select round(avg(baggage_handling),2) as Average_baggage_handeling_Satisfaction
from airline_passenger_satisfaction
--Ans:
3.63
---Q8.Average Satisfaction of Ease of online booking
select round(avg(Ease_of_Online_Booking),2) as Ease_of_online_Booking_Satisfaction
from airline_passenger_satisfaction
---Ans:
2.76

---Q9.Average Satisfaction of Wifi service
select round(avg(In_flight_Service),2) as In_flight_wifi_service_Satisfaction
from airline_passenger_satisfaction
---Ans:
3.64

---Q10:Average Satisfaction of ease of satisfaction of average departure and arrival timing
select round(avg(Departure_and_Arrival_Time_Convenience),2) as Departure_and_Arrival_Time_Convenience_Satisfaction
from airline_passenger_satisfaction
---Ans:
3.06
