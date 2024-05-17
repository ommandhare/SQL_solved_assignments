-- Create new column no. of guests in wing A and wing B table.
use shrileela;

alter table wing_a add column number_of_guests int;

alter table wing_b add column number_of_guests int;