<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_3(7:0)" />
        <signal name="Clk50MHz" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="SF_CE" />
        <signal name="LCD_E" />
        <signal name="LCD_D(3:0)" />
        <port polarity="Input" name="Clk50MHz" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_D(3:0)" />
        <blockdef name="test_LCD">
            <timestamp>2016-4-19T15:51:21</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="test_LCD" name="XLXI_1">
            <blockpin signalname="Clk50MHz" name="Clk50MHz" />
            <blockpin signalname="XLXN_3(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_1" name="WE" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="SF_CE" name="SF_CE" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin name="Busy" />
        </block>
        <block symbolname="constant" name="XLXI_3">
            <attr value="42" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_3(7:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1552" y="896" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1072" y1="896" y2="912" x1="1072" />
            <wire x2="1536" y1="912" y2="912" x1="1072" />
            <wire x2="1552" y1="864" y2="864" x1="1536" />
            <wire x2="1536" y1="864" y2="912" x1="1536" />
        </branch>
        <branch name="XLXN_3(7:0)">
            <wire x2="1552" y1="704" y2="704" x1="1184" />
        </branch>
        <instance x="1040" y="672" name="XLXI_3" orien="R0">
        </instance>
        <branch name="Clk50MHz">
            <wire x2="1552" y1="544" y2="544" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1520" y="544" name="Clk50MHz" orien="R180" />
        <branch name="LCD_RS">
            <wire x2="1968" y1="544" y2="544" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="544" name="LCD_RS" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="1968" y1="608" y2="608" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="608" name="LCD_RW" orien="R0" />
        <branch name="SF_CE">
            <wire x2="1968" y1="672" y2="672" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="672" name="SF_CE" orien="R0" />
        <branch name="LCD_E">
            <wire x2="1968" y1="736" y2="736" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="736" name="LCD_E" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="1968" y1="800" y2="800" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="800" name="LCD_D(3:0)" orien="R0" />
    </sheet>
</drawing>