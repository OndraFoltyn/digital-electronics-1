# Lab 2: Ondřej Foltyn

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![K-maps](https://github.com/OndraFoltyn/digital-electronics-1/blob/main/labs/02-logic/images/b_vetsi_nez_A.png)

   Less than:

   ![K-maps](https://github.com/OndraFoltyn/digital-electronics-1/blob/main/labs/02-logic/images/b_menis_nez_A.png)

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](https://github.com/OndraFoltyn/digital-electronics-1/blob/main/labs/02-logic/images/sop_pos.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx45**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0100"; -- second last ID digit (4)
        s_a <= "0101"; wait for 100 ns; -- last ID digit (5)
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination 0100, 0101 FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![Console](https://github.com/OndraFoltyn/digital-electronics-1/blob/main/labs/02-logic/images/console_scrnshot2.png)

3. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/x/Afxn)
