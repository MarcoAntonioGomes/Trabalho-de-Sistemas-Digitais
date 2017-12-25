library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;


Entity trab_auto_led_esteira_sd is 
port (
	A: in bit;
	B: in bit;
	C: in bit;
	D: in bit;
	E: in bit;
	F: in bit;
	
	Led_laranja: out bit;
	Led_Roxo: out bit;
	Led_Vermelho: out bit;
	Sirene: out bit
	


	); end trab_auto_led_esteira_sd;
architecture arch of trab_auto_led_esteira_sd is

	Signal AUX1: bit;
	Signal AUX2: bit;
	Signal AUX3: bit;
	Signal AUX4: bit;
	Signal AUX5: bit;

begin 

	AUX1 <= (E OR F OR A);
	AUX2 <= (E OR F OR B);
	AUX3 <= (E OR F OR c);
	AUX4 <= (E OR F OR D);
	AUX5 <= (E OR F);

	
	Sirene <= ((AUX5) AND (((((((((AUX5 NOR AUX1) NAND AUX2) AND AUX4) NOR AUX2) AND AUX3) NAND AUX4) OR AUX1) NAND AUX2) OR AUX2) AND F);
	
	Led_laranja <= (((((((((AUX5 NOR AUX1) NAND AUX2) AND AUX4) NOR AUX2) AND AUX3) NOR AUX4) OR AUX1) NAND AUX2) OR AUX2);

	Led_Roxo <= (AUX5);
	
	Led_Vermelho <= F;
	
	
	
	
end arch; 