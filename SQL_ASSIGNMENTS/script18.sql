-- Create new column in wing A and wing B showing number of family members.

use shrileela;

alter table wing_a add column number_of_family_members int;

alter table wing_b add column number_of_family_members int;