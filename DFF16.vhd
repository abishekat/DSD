LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY DFF16 IS


PORT(
  d : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
  sync_reset : IN STD_LOGIC;
  clk : IN STD_LOGIC;
  q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END DFF16;

ARCHITECTURE DFF_ARCH OF DFF16 IS
BEGIN

  PROCESS (clk) IS
  BEGIN
	IF FALLING_EDGE(clk) THEN
      IF(sync_reset='0') THEN
        q <= d;
      END IF;
	 END IF;
  END PROCESS;
END ARCHITECTURE DFF_ARCH;