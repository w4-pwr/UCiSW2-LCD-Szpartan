<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="LCD_E" />
        <signal name="Clk" />
        <signal name="LCD_D(3:0)" />
        <signal name="GO" />
        <signal name="XLXN_38(7:0)" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_49(3:0)" />
        <signal name="XLXN_50(3:0)" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_79(3:0)" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="XLXN_83" />
        <signal name="XLXN_90" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="LCD_D(3:0)" />
        <port polarity="Input" name="GO" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <blockdef name="send_4bits">
            <timestamp>2016-4-18T7:30:8</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="lcd_init">
            <timestamp>2016-4-18T7:30:17</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="send_byte">
            <timestamp>2016-4-18T7:30:27</timestamp>
            <rect width="416" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="544" y1="-224" y2="-224" x1="480" />
            <line x2="544" y1="-128" y2="-128" x1="480" />
            <rect width="64" x="480" y="-44" height="24" />
            <line x2="544" y1="-32" y2="-32" x1="480" />
        </blockdef>
        <blockdef name="lcd_config">
            <timestamp>2016-4-18T7:30:36</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="320" />
        </blockdef>
        <blockdef name="mul_4b_2_1">
            <timestamp>2016-4-18T7:30:43</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <block symbolname="send_4bits" name="XLXI_2">
            <blockpin signalname="XLXN_76" name="GO" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_50(3:0)" name="half_byte(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="XLXN_45" name="BUSY" />
            <blockpin signalname="LCD_D(3:0)" name="SF_D(3:0)" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_45" name="I" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
        <block symbolname="lcd_config" name="XLXI_14">
            <blockpin signalname="XLXN_90" name="start" />
            <blockpin signalname="XLXN_42" name="byte_sent" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin name="busy" />
            <blockpin signalname="XLXN_40" name="send" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="XLXN_38(7:0)" name="byte_out(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="XLXN_81" name="I" />
            <blockpin signalname="XLXN_90" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="XLXN_41" name="I" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="XLXN_45" name="I" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="mul_4b_2_1" name="XLXI_20">
            <blockpin signalname="XLXN_81" name="set" />
            <blockpin signalname="XLXN_79(3:0)" name="line_0(3:0)" />
            <blockpin signalname="XLXN_49(3:0)" name="line_1(3:0)" />
            <blockpin signalname="XLXN_50(3:0)" name="line_out(3:0)" />
        </block>
        <block symbolname="or2" name="XLXI_21">
            <blockpin signalname="XLXN_75" name="I0" />
            <blockpin signalname="XLXN_80" name="I1" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
        <block symbolname="lcd_init" name="XLXI_22">
            <blockpin signalname="GO" name="GO" />
            <blockpin signalname="XLXN_83" name="SENT" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_81" name="BUSY" />
            <blockpin signalname="XLXN_80" name="SENDING" />
            <blockpin signalname="XLXN_79(3:0)" name="LCD_D(3:0)" />
        </block>
        <block symbolname="send_byte" name="XLXI_13">
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_46" name="ready_to_send_half_byte" />
            <blockpin signalname="XLXN_40" name="send_in" />
            <blockpin signalname="XLXN_38(7:0)" name="Byte_in(7:0)" />
            <blockpin signalname="XLXN_75" name="send_out" />
            <blockpin signalname="XLXN_41" name="busy" />
            <blockpin signalname="XLXN_49(3:0)" name="half_byte(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="352" y="1136" name="Clk" orien="R180" />
        <branch name="LCD_D(3:0)">
            <wire x2="3184" y1="1072" y2="1072" x1="2944" />
            <wire x2="3184" y1="1072" y2="1088" x1="3184" />
            <wire x2="3440" y1="1088" y2="1088" x1="3184" />
            <wire x2="3440" y1="1072" y2="1088" x1="3440" />
        </branch>
        <iomarker fontsize="28" x="208" y="1072" name="GO" orien="R180" />
        <instance x="1216" y="704" name="XLXI_4" orien="R180" />
        <branch name="Clk">
            <wire x2="448" y1="1136" y2="1136" x1="352" />
            <wire x2="448" y1="1136" y2="1264" x1="448" />
            <wire x2="880" y1="1264" y2="1264" x1="448" />
            <wire x2="880" y1="1264" y2="1360" x1="880" />
            <wire x2="1760" y1="1360" y2="1360" x1="880" />
            <wire x2="880" y1="1360" y2="1856" x1="880" />
            <wire x2="1152" y1="1856" y2="1856" x1="880" />
            <wire x2="1712" y1="1264" y2="1264" x1="880" />
            <wire x2="768" y1="1040" y2="1040" x1="448" />
            <wire x2="448" y1="1040" y2="1136" x1="448" />
            <wire x2="1712" y1="1008" y2="1264" x1="1712" />
            <wire x2="2560" y1="1008" y2="1008" x1="1712" />
        </branch>
        <branch name="GO">
            <wire x2="224" y1="1072" y2="1072" x1="208" />
            <wire x2="768" y1="912" y2="912" x1="224" />
            <wire x2="224" y1="912" y2="1072" x1="224" />
        </branch>
        <branch name="XLXN_38(7:0)">
            <wire x2="1744" y1="1856" y2="1856" x1="1536" />
            <wire x2="1760" y1="1552" y2="1552" x1="1744" />
            <wire x2="1744" y1="1552" y2="1856" x1="1744" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="2384" y1="2400" y2="2400" x1="1936" />
            <wire x2="2384" y1="1456" y2="1456" x1="2304" />
            <wire x2="2384" y1="1456" y2="2400" x1="2384" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="1760" y1="1424" y2="1424" x1="1728" />
            <wire x2="1728" y1="1424" y2="1760" x1="1728" />
            <wire x2="3008" y1="1760" y2="1760" x1="1728" />
            <wire x2="3008" y1="1600" y2="1760" x1="3008" />
        </branch>
        <branch name="XLXN_50(3:0)">
            <wire x2="2560" y1="1072" y2="1072" x1="2544" />
            <wire x2="2544" y1="1072" y2="1184" x1="2544" />
            <wire x2="2912" y1="1184" y2="1184" x1="2544" />
            <wire x2="2912" y1="1184" y2="1296" x1="2912" />
            <wire x2="2912" y1="1296" y2="1296" x1="2848" />
        </branch>
        <branch name="XLXN_49(3:0)">
            <wire x2="2320" y1="1552" y2="1552" x1="2304" />
            <wire x2="2464" y1="1424" y2="1424" x1="2320" />
            <wire x2="2320" y1="1424" y2="1552" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="3440" y="1072" name="LCD_D(3:0)" orien="R270" />
        <instance x="2976" y="1376" name="XLXI_17" orien="R90" />
        <branch name="LCD_E">
            <wire x2="2960" y1="944" y2="944" x1="2944" />
            <wire x2="3344" y1="816" y2="816" x1="2960" />
            <wire x2="2960" y1="816" y2="944" x1="2960" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="3008" y1="736" y2="736" x1="1216" />
            <wire x2="3008" y1="736" y2="1008" x1="3008" />
            <wire x2="3008" y1="1008" y2="1376" x1="3008" />
            <wire x2="3008" y1="1008" y2="1008" x1="2944" />
        </branch>
        <instance x="2560" y="1104" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3344" y="816" name="LCD_E" orien="R0" />
        <instance x="2464" y="1456" name="XLXI_20" orien="R0">
        </instance>
        <instance x="1152" y="1888" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_40">
            <wire x2="1696" y1="1792" y2="1792" x1="1536" />
            <wire x2="1696" y1="1488" y2="1792" x1="1696" />
            <wire x2="1760" y1="1488" y2="1488" x1="1696" />
        </branch>
        <instance x="1936" y="2368" name="XLXI_16" orien="R180" />
        <branch name="XLXN_42">
            <wire x2="1152" y1="1792" y2="1792" x1="1136" />
            <wire x2="1136" y1="1792" y2="2400" x1="1136" />
            <wire x2="1712" y1="2400" y2="2400" x1="1136" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="3376" y1="1920" y2="1920" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="3376" y="1920" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="3376" y="2000" name="LCD_RS" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="1552" y1="1984" y2="1984" x1="1536" />
            <wire x2="1552" y1="1984" y2="2000" x1="1552" />
            <wire x2="3376" y1="2000" y2="2000" x1="1552" />
        </branch>
        <instance x="2144" y="1040" name="XLXI_21" orien="R0" />
        <branch name="XLXN_75">
            <wire x2="2144" y1="976" y2="976" x1="2064" />
            <wire x2="2064" y1="976" y2="1040" x1="2064" />
            <wire x2="2384" y1="1040" y2="1040" x1="2064" />
            <wire x2="2384" y1="1040" y2="1360" x1="2384" />
            <wire x2="2384" y1="1360" y2="1360" x1="2304" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="2560" y1="944" y2="944" x1="2400" />
        </branch>
        <instance x="1280" y="976" name="XLXI_15" orien="R90" />
        <branch name="XLXN_79(3:0)">
            <wire x2="1232" y1="1040" y2="1040" x1="1152" />
            <wire x2="1232" y1="1040" y2="1216" x1="1232" />
            <wire x2="2448" y1="1216" y2="1216" x1="1232" />
            <wire x2="2448" y1="1216" y2="1360" x1="2448" />
            <wire x2="2464" y1="1360" y2="1360" x1="2448" />
        </branch>
        <branch name="XLXN_81">
            <wire x2="1312" y1="912" y2="912" x1="1152" />
            <wire x2="1312" y1="912" y2="960" x1="1312" />
            <wire x2="1312" y1="960" y2="976" x1="1312" />
            <wire x2="1888" y1="960" y2="960" x1="1312" />
            <wire x2="1888" y1="960" y2="1296" x1="1888" />
            <wire x2="2464" y1="1296" y2="1296" x1="1888" />
        </branch>
        <instance x="768" y="1072" name="XLXI_22" orien="R0">
        </instance>
        <branch name="XLXN_83">
            <wire x2="720" y1="736" y2="976" x1="720" />
            <wire x2="768" y1="976" y2="976" x1="720" />
            <wire x2="992" y1="736" y2="736" x1="720" />
        </branch>
        <branch name="XLXN_80">
            <wire x2="1216" y1="1104" y2="1104" x1="1152" />
            <wire x2="1216" y1="1104" y2="1232" x1="1216" />
            <wire x2="2128" y1="1232" y2="1232" x1="1216" />
            <wire x2="2144" y1="912" y2="912" x1="2128" />
            <wire x2="2128" y1="912" y2="1232" x1="2128" />
        </branch>
        <instance x="1760" y="1584" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_90">
            <wire x2="1072" y1="1632" y2="1728" x1="1072" />
            <wire x2="1152" y1="1728" y2="1728" x1="1072" />
            <wire x2="1312" y1="1632" y2="1632" x1="1072" />
            <wire x2="1312" y1="1200" y2="1632" x1="1312" />
        </branch>
    </sheet>
</drawing>