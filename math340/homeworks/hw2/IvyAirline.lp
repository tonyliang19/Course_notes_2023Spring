\* ivy_airline *\
Maximize
TicketPrice: 280 ticket_B_IB + 220 ticket_B_IN + 130 ticket_B_NB
 + 140 ticket_M_IB + 100 ticket_M_IN + 80 ticket_M_NB + 360 ticket_Y_IB
 + 300 ticket_Y_IN + 160 ticket_Y_NB
Subject To
B_IB_Demand: ticket_B_IB <= 10
B_IN_Demand: ticket_B_IN <= 8
B_NB_Demand: ticket_B_NB <= 13
M_IB_Demand: ticket_M_IB <= 20
M_IN_Demand: ticket_M_IN <= 10
M_NB_Demand: ticket_M_NB <= 22
SeatRequirement: ticket_B_IB + ticket_B_IN + ticket_B_NB + ticket_M_IB
 + ticket_M_IN + ticket_M_NB + ticket_Y_IB + ticket_Y_IN + ticket_Y_NB <= 30
Y_IB_Demand: ticket_Y_IB <= 3
Y_IN_Demand: ticket_Y_IN <= 4
Y_NB_Demand: ticket_Y_NB <= 8
Bounds
 0 <= ticket_B_IB
 0 <= ticket_B_IN
 0 <= ticket_B_NB
 0 <= ticket_M_IB
 0 <= ticket_M_IN
 0 <= ticket_M_NB
 0 <= ticket_Y_IB
 0 <= ticket_Y_IN
 0 <= ticket_Y_NB
Generals
ticket_B_IB
ticket_B_IN
ticket_B_NB
ticket_M_IB
ticket_M_IN
ticket_M_NB
ticket_Y_IB
ticket_Y_IN
ticket_Y_NB
End
