<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_21" />
        <signal name="XLXN_24" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="SF_CE" />
        <signal name="XLXN_68(3:0)" />
        <signal name="LCD_E" />
        <signal name="LCD_D(3:0)" />
        <signal name="XLXN_99" />
        <signal name="XLXN_103(3:0)" />
        <signal name="XLXN_106(7:0)" />
        <signal name="XLXN_109(7:0)" />
        <signal name="XLXN_110(7:0)" />
        <signal name="XLXN_122" />
        <signal name="XLXN_124" />
        <signal name="XLXN_127" />
        <signal name="XLXN_129(3:0)" />
        <signal name="XLXN_130" />
        <signal name="XLXN_53" />
        <signal name="Clk50MHz" />
        <signal name="DI(7:0)" />
        <signal name="WE" />
        <signal name="Busy" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_D(3:0)" />
        <port polarity="Input" name="Clk50MHz" />
        <port polarity="Input" name="DI(7:0)" />
        <port polarity="Input" name="WE" />
        <port polarity="Output" name="Busy" />
        <blockdef name="Nibble_Send">
            <timestamp>2016-4-5T15:11:42</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="Byte_Send">
            <timestamp>2016-4-19T15:23:52</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <rect width="336" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="Poweron_init">
            <timestamp>2016-4-5T15:11:55</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="Display_Configuration">
            <timestamp>2016-4-19T15:49:10</timestamp>
            <rect width="304" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="LCD_Write">
            <timestamp>2016-4-19T15:49:55</timestamp>
            <line x2="0" y1="480" y2="480" x1="64" />
            <rect width="64" x="0" y="532" height="24" />
            <line x2="0" y1="544" y2="544" x1="64" />
            <line x2="384" y1="480" y2="480" x1="320" />
            <rect width="64" x="320" y="404" height="24" />
            <line x2="384" y1="416" y2="416" x1="320" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="352" y2="352" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="208" y2="208" x1="320" />
            <line x2="384" y1="256" y2="256" x1="320" />
            <rect width="256" x="64" y="-320" height="896" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="MuXXX4">
            <timestamp>2016-3-22T16:43:11</timestamp>
            <rect width="64" x="272" y="-108" height="24" />
            <line x2="336" y1="-96" y2="-96" x1="272" />
            <rect width="208" x="64" y="-184" height="180" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="MuXXX8">
            <timestamp>2016-3-22T16:46:56</timestamp>
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="208" x="64" y="-180" height="168" />
            <rect width="64" x="272" y="-108" height="24" />
            <line x2="336" y1="-96" y2="-96" x1="272" />
        </blockdef>
        <block symbolname="Byte_Send" name="XLXI_3">
            <blockpin signalname="Clk50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_61" name="Send_In" />
            <blockpin signalname="Clk_50MHz" name="Send_Nibble_Ready" />
            <blockpin signalname="XLXN_106(7:0)" name="Byte(7:0)" />
            <blockpin signalname="XLXN_99" name="Send_Out" />
            <blockpin signalname="XLXN_124" name="Ready" />
            <blockpin signalname="XLXN_103(3:0)" name="Nibble(3:0)" />
        </block>
        <block symbolname="Poweron_init" name="XLXI_7">
            <blockpin signalname="Clk50MHz" name="Clk_50Mhz" />
            <blockpin signalname="XLXN_51" name="Start" />
            <blockpin signalname="Clk_50MHz" name="Send_Ready" />
            <blockpin signalname="XLXN_21" name="Send" />
            <blockpin signalname="XLXN_52" name="Done" />
            <blockpin signalname="XLXN_68(3:0)" name="Nibble(3:0)" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="XLXN_99" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="Display_Configuration" name="XLXI_10">
            <blockpin signalname="XLXN_122" name="Start" />
            <blockpin signalname="Clk50MHz" name="Clk_50Mhz" />
            <blockpin signalname="XLXN_124" name="Byte_send_ready" />
            <blockpin signalname="XLXN_60" name="Send" />
            <blockpin signalname="XLXN_53" name="Done" />
            <blockpin signalname="XLXN_109(7:0)" name="Byte(7:0)" />
        </block>
        <block symbolname="LCD_Write" name="XLXI_14">
            <blockpin signalname="Clk50MHz" name="Clk_50Mhz" />
            <blockpin signalname="XLXN_124" name="Send_Ready" />
            <blockpin signalname="XLXN_52" name="done_poweron" />
            <blockpin signalname="XLXN_53" name="done_function" />
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="DI(7:0)" name="Byte_In(7:0)" />
            <blockpin signalname="XLXN_59" name="Send" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="SF_CE" name="SF_CE" />
            <blockpin signalname="XLXN_51" name="init_poweron" />
            <blockpin signalname="XLXN_122" name="init_function" />
            <blockpin signalname="Busy" name="Busy" />
            <blockpin signalname="XLXN_110(7:0)" name="Byte_Out(7:0)" />
        </block>
        <block symbolname="or2" name="XLXI_15">
            <blockpin signalname="XLXN_60" name="I0" />
            <blockpin signalname="XLXN_59" name="I1" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_18">
            <blockpin signalname="XLXN_52" name="I" />
            <blockpin signalname="XLXN_127" name="O" />
        </block>
        <block symbolname="Nibble_Send" name="XLXI_2">
            <blockpin signalname="XLXN_24" name="Send" />
            <blockpin signalname="Clk50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_129(3:0)" name="Nibble(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="Clk_50MHz" name="Ready" />
            <blockpin signalname="LCD_D(3:0)" name="SF_D(3:0)" />
        </block>
        <block symbolname="inv" name="XLXI_20">
            <blockpin signalname="XLXN_53" name="I" />
            <blockpin signalname="XLXN_130" name="O" />
        </block>
        <block symbolname="MuXXX4" name="XLXI_24">
            <blockpin signalname="XLXN_129(3:0)" name="O(3:0)" />
            <blockpin signalname="XLXN_103(3:0)" name="D0(3:0)" />
            <blockpin signalname="XLXN_68(3:0)" name="D1(3:0)" />
            <blockpin signalname="XLXN_127" name="S" />
        </block>
        <block symbolname="MuXXX8" name="XLXI_25">
            <blockpin signalname="XLXN_110(7:0)" name="D0(7:0)" />
            <blockpin signalname="XLXN_109(7:0)" name="D1(7:0)" />
            <blockpin signalname="XLXN_130" name="S" />
            <blockpin signalname="XLXN_106(7:0)" name="O(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1248" y="1088" name="XLXI_7" orien="R0">
        </instance>
        <instance x="432" y="544" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_52">
            <wire x2="432" y1="832" y2="832" x1="400" />
            <wire x2="400" y1="832" y2="1184" x1="400" />
            <wire x2="1632" y1="1184" y2="1184" x1="400" />
            <wire x2="2032" y1="1184" y2="1184" x1="1632" />
            <wire x2="1632" y1="1120" y2="1184" x1="1632" />
        </branch>
        <instance x="1008" y="736" name="XLXI_15" orien="R0" />
        <branch name="XLXN_59">
            <wire x2="912" y1="576" y2="576" x1="816" />
            <wire x2="912" y1="576" y2="608" x1="912" />
            <wire x2="1008" y1="608" y2="608" x1="912" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="992" y1="1360" y2="1360" x1="800" />
            <wire x2="1008" y1="672" y2="672" x1="992" />
            <wire x2="992" y1="672" y2="1360" x1="992" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="1728" y1="640" y2="640" x1="1264" />
            <wire x2="1728" y1="640" y2="1296" x1="1728" />
            <wire x2="1792" y1="1296" y2="1296" x1="1728" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="848" y1="320" y2="320" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="320" name="LCD_RS" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="848" y1="384" y2="384" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="384" name="LCD_RW" orien="R0" />
        <branch name="SF_CE">
            <wire x2="848" y1="448" y2="448" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="448" name="SF_CE" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="2768" y1="896" y2="896" x1="2560" />
            <wire x2="2768" y1="896" y2="960" x1="2768" />
            <wire x2="2784" y1="960" y2="960" x1="2768" />
        </branch>
        <branch name="LCD_E">
            <wire x2="3232" y1="960" y2="960" x1="3168" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="3232" y1="1088" y2="1088" x1="3168" />
        </branch>
        <instance x="2784" y="1120" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3232" y="1088" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3232" y="960" name="LCD_E" orien="R0" />
        <instance x="1792" y="1456" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_68(3:0)">
            <wire x2="1648" y1="1056" y2="1056" x1="1632" />
            <wire x2="1648" y1="1056" y2="1120" x1="1648" />
            <wire x2="2368" y1="1120" y2="1120" x1="1648" />
        </branch>
        <branch name="XLXN_103(3:0)">
            <wire x2="2304" y1="1424" y2="1424" x1="2256" />
            <wire x2="2304" y1="1056" y2="1424" x1="2304" />
            <wire x2="2368" y1="1056" y2="1056" x1="2304" />
        </branch>
        <instance x="2032" y="1216" name="XLXI_18" orien="R0" />
        <branch name="XLXN_109(7:0)">
            <wire x2="1424" y1="1488" y2="1488" x1="800" />
        </branch>
        <branch name="XLXN_110(7:0)">
            <wire x2="1120" y1="960" y2="960" x1="816" />
            <wire x2="1120" y1="960" y2="1424" x1="1120" />
            <wire x2="1424" y1="1424" y2="1424" x1="1120" />
        </branch>
        <instance x="1168" y="1584" name="XLXI_20" orien="R0" />
        <instance x="368" y="1520" name="XLXI_10" orien="R0">
        </instance>
        <branch name="Clk_50MHz">
            <wire x2="1248" y1="1056" y2="1056" x1="1232" />
            <wire x2="1232" y1="1056" y2="1360" x1="1232" />
            <wire x2="1408" y1="1360" y2="1360" x1="1232" />
            <wire x2="1792" y1="1360" y2="1360" x1="1408" />
            <wire x2="1408" y1="1360" y2="1776" x1="1408" />
            <wire x2="3168" y1="1776" y2="1776" x1="1408" />
            <wire x2="3168" y1="1152" y2="1776" x1="3168" />
        </branch>
        <branch name="XLXN_124">
            <wire x2="432" y1="704" y2="704" x1="256" />
            <wire x2="256" y1="704" y2="1648" x1="256" />
            <wire x2="368" y1="1648" y2="1648" x1="256" />
            <wire x2="2368" y1="1648" y2="1648" x1="368" />
            <wire x2="368" y1="1488" y2="1648" x1="368" />
            <wire x2="2368" y1="1360" y2="1360" x1="2256" />
            <wire x2="2368" y1="1360" y2="1648" x1="2368" />
        </branch>
        <instance x="2304" y="992" name="XLXI_8" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="1648" y1="928" y2="928" x1="1632" />
            <wire x2="2304" y1="864" y2="864" x1="1648" />
            <wire x2="1648" y1="864" y2="928" x1="1648" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="2272" y1="1296" y2="1296" x1="2256" />
            <wire x2="2304" y1="928" y2="928" x1="2272" />
            <wire x2="2272" y1="928" y2="1296" x1="2272" />
        </branch>
        <instance x="2368" y="1216" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_127">
            <wire x2="2368" y1="1184" y2="1184" x1="2256" />
        </branch>
        <branch name="XLXN_129(3:0)">
            <wire x2="2720" y1="1120" y2="1120" x1="2704" />
            <wire x2="2720" y1="1088" y2="1120" x1="2720" />
            <wire x2="2784" y1="1088" y2="1088" x1="2720" />
        </branch>
        <instance x="1424" y="1584" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_130">
            <wire x2="1424" y1="1552" y2="1552" x1="1392" />
        </branch>
        <branch name="XLXN_106(7:0)">
            <wire x2="1776" y1="1488" y2="1488" x1="1760" />
            <wire x2="1792" y1="1424" y2="1424" x1="1776" />
            <wire x2="1776" y1="1424" y2="1488" x1="1776" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="1024" y1="752" y2="752" x1="816" />
            <wire x2="1024" y1="752" y2="1120" x1="1024" />
            <wire x2="1232" y1="1120" y2="1120" x1="1024" />
            <wire x2="1248" y1="1120" y2="1120" x1="1232" />
        </branch>
        <branch name="XLXN_122">
            <wire x2="304" y1="1248" y2="1360" x1="304" />
            <wire x2="352" y1="1360" y2="1360" x1="304" />
            <wire x2="368" y1="1360" y2="1360" x1="352" />
            <wire x2="832" y1="1248" y2="1248" x1="304" />
            <wire x2="832" y1="800" y2="800" x1="816" />
            <wire x2="832" y1="800" y2="1248" x1="832" />
        </branch>
        <branch name="Clk50MHz">
            <wire x2="352" y1="1984" y2="1984" x1="272" />
            <wire x2="1056" y1="1984" y2="1984" x1="352" />
            <wire x2="1792" y1="1984" y2="1984" x1="1056" />
            <wire x2="2752" y1="1984" y2="1984" x1="1792" />
            <wire x2="432" y1="640" y2="640" x1="352" />
            <wire x2="352" y1="640" y2="1424" x1="352" />
            <wire x2="368" y1="1424" y2="1424" x1="352" />
            <wire x2="352" y1="1424" y2="1984" x1="352" />
            <wire x2="1248" y1="928" y2="928" x1="1056" />
            <wire x2="1056" y1="928" y2="1984" x1="1056" />
            <wire x2="1792" y1="1488" y2="1984" x1="1792" />
            <wire x2="2784" y1="1024" y2="1024" x1="2752" />
            <wire x2="2752" y1="1024" y2="1984" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="272" y="1984" name="Clk50MHz" orien="R180" />
        <branch name="DI(7:0)">
            <wire x2="256" y1="1088" y2="1088" x1="240" />
            <wire x2="416" y1="1088" y2="1088" x1="256" />
            <wire x2="432" y1="1088" y2="1088" x1="416" />
        </branch>
        <iomarker fontsize="28" x="240" y="1088" name="DI(7:0)" orien="R180" />
        <branch name="XLXN_53">
            <wire x2="432" y1="896" y2="896" x1="368" />
            <wire x2="368" y1="896" y2="1024" x1="368" />
            <wire x2="368" y1="1024" y2="1152" x1="368" />
            <wire x2="880" y1="1152" y2="1152" x1="368" />
            <wire x2="880" y1="1152" y2="1424" x1="880" />
            <wire x2="880" y1="1424" y2="1552" x1="880" />
            <wire x2="1168" y1="1552" y2="1552" x1="880" />
            <wire x2="880" y1="1424" y2="1424" x1="800" />
        </branch>
        <branch name="WE">
            <wire x2="416" y1="1024" y2="1024" x1="208" />
            <wire x2="432" y1="1024" y2="1024" x1="416" />
        </branch>
        <iomarker fontsize="28" x="208" y="1024" name="WE" orien="R180" />
        <branch name="Busy">
            <wire x2="912" y1="1024" y2="1024" x1="816" />
            <wire x2="912" y1="736" y2="1024" x1="912" />
            <wire x2="1568" y1="736" y2="736" x1="912" />
            <wire x2="1568" y1="448" y2="736" x1="1568" />
        </branch>
        <iomarker fontsize="28" x="1568" y="448" name="Busy" orien="R270" />
    </sheet>
</drawing>