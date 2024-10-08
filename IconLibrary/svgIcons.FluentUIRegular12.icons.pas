unit svgIcons.FluentUIRegular12.icons;

(* Auto Generated by svgViewer.Generator on 9/14/2024 10:02:13 PM *)

interface

function GetIcon(Index:Integer):String;

implementation

uses
  System.SysUtils,
  svgIcons.FluentUIRegular12.source;

function GetIcon(Index:Integer):String;
begin
  case Index of
    0000 : Result := C_FluentUI_Add_Regular_12;
    0001 : Result := C_FluentUI_Add_Circle_Regular_12;
    0002 : Result := C_FluentUI_Alert_Regular_12;
    0003 : Result := C_FluentUI_Alert_Snooze_Regular_12;
    0004 : Result := C_FluentUI_Arrow_Bidirectional_Up_Down_Regular_12;
    0005 : Result := C_FluentUI_Arrow_Circle_Down_Regular_12;
    0006 : Result := C_FluentUI_Arrow_Circle_Left_Regular_12;
    0007 : Result := C_FluentUI_Arrow_Circle_Right_Regular_12;
    0008 : Result := C_FluentUI_Arrow_Circle_Up_Regular_12;
    0009 : Result := C_FluentUI_Arrow_Clockwise_Regular_12;
    0010 : Result := C_FluentUI_Arrow_Counterclockwise_Regular_12;
    0011 : Result := C_FluentUI_Arrow_Down_Regular_12;
    0012 : Result := C_FluentUI_Arrow_Left_Regular_12;
    0013 : Result := C_FluentUI_Arrow_Next_Regular_12;
    0014 : Result := C_FluentUI_Arrow_Previous_Regular_12;
    0015 : Result := C_FluentUI_Arrow_Right_Regular_12;
    0016 : Result := C_FluentUI_Arrow_Step_In_Regular_12;
    0017 : Result := C_FluentUI_Arrow_Step_In_Left_Regular_12;
    0018 : Result := C_FluentUI_Arrow_Step_In_Right_Regular_12;
    0019 : Result := C_FluentUI_Arrow_Step_Out_Regular_12;
    0020 : Result := C_FluentUI_Arrow_Sync_Regular_12;
    0021 : Result := C_FluentUI_Arrow_Sync_Off_Regular_12;
    0022 : Result := C_FluentUI_Arrow_Trending_Regular_12;
    0023 : Result := C_FluentUI_Arrow_Up_Regular_12;
    0024 : Result := C_FluentUI_Attach_Regular_12;
    0025 : Result := C_FluentUI_Backpack_Regular_12;
    0026 : Result := C_FluentUI_Balloon_Regular_12;
    0027 : Result := C_FluentUI_Bezier_Curve_Square_Regular_12;
    0028 : Result := C_FluentUI_Briefcase_Regular_12;
    0029 : Result := C_FluentUI_Building_Mosque_Regular_12;
    0030 : Result := C_FluentUI_Calendar_Regular_12;
    0031 : Result := C_FluentUI_Calendar_LTR_Regular_12;
    0032 : Result := C_FluentUI_Calendar_RTL_Regular_12;
    0033 : Result := C_FluentUI_Call_Regular_12;
    0034 : Result := C_FluentUI_Call_End_Regular_12;
    0035 : Result := C_FluentUI_Call_Missed_Regular_12;
    0036 : Result := C_FluentUI_Caret_Down_Regular_12;
    0037 : Result := C_FluentUI_Caret_Down_Right_Regular_12;
    0038 : Result := C_FluentUI_Caret_Left_Regular_12;
    0039 : Result := C_FluentUI_Caret_Right_Regular_12;
    0040 : Result := C_FluentUI_Caret_Up_Regular_12;
    0041 : Result := C_FluentUI_Channel_Share_Regular_12;
    0042 : Result := C_FluentUI_Chat_Regular_12;
    0043 : Result := C_FluentUI_Chat_Empty_Regular_12;
    0044 : Result := C_FluentUI_Checkbox_Unchecked_Regular_12;
    0045 : Result := C_FluentUI_Checkmark_Regular_12;
    0046 : Result := C_FluentUI_Checkmark_Circle_Regular_12;
    0047 : Result := C_FluentUI_Chevron_Circle_Down_Regular_12;
    0048 : Result := C_FluentUI_Chevron_Circle_Left_Regular_12;
    0049 : Result := C_FluentUI_Chevron_Circle_Right_Regular_12;
    0050 : Result := C_FluentUI_Chevron_Circle_Up_Regular_12;
    0051 : Result := C_FluentUI_Chevron_Down_Regular_12;
    0052 : Result := C_FluentUI_Chevron_Left_Regular_12;
    0053 : Result := C_FluentUI_Chevron_Right_Regular_12;
    0054 : Result := C_FluentUI_Chevron_Up_Regular_12;
    0055 : Result := C_FluentUI_Circle_Regular_12;
    0056 : Result := C_FluentUI_Circle_Half_Fill_Regular_12;
    0057 : Result := C_FluentUI_Circle_Line_Regular_12;
    0058 : Result := C_FluentUI_Clipboard_Regular_12;
    0059 : Result := C_FluentUI_Clock_Regular_12;
    0060 : Result := C_FluentUI_Comment_Regular_12;
    0061 : Result := C_FluentUI_Comment_Add_Regular_12;
    0062 : Result := C_FluentUI_Comment_Arrow_Left_Regular_12;
    0063 : Result := C_FluentUI_Comment_Arrow_Left_Temp_LTR_Regular_12;
    0064 : Result := C_FluentUI_Comment_Arrow_Left_Temp_RTL_Regular_12;
    0065 : Result := C_FluentUI_Comment_Arrow_Right_Regular_12;
    0066 : Result := C_FluentUI_Comment_Arrow_Right_Temp_LTR_Regular_12;
    0067 : Result := C_FluentUI_Comment_Arrow_Right_Temp_RTL_Regular_12;
    0068 : Result := C_FluentUI_Comment_Checkmark_Regular_12;
    0069 : Result := C_FluentUI_Compose_Regular_12;
    0070 : Result := C_FluentUI_Couch_Regular_12;
    0071 : Result := C_FluentUI_Cube_Regular_12;
    0072 : Result := C_FluentUI_Delete_Regular_12;
    0073 : Result := C_FluentUI_Dentist_Regular_12;
    0074 : Result := C_FluentUI_Dismiss_Regular_12;
    0075 : Result := C_FluentUI_Dismiss_Circle_Regular_12;
    0076 : Result := C_FluentUI_Doctor_Regular_12;
    0077 : Result := C_FluentUI_Drop_Regular_12;
    0078 : Result := C_FluentUI_Edit_Regular_12;
    0079 : Result := C_FluentUI_Equal_Off_Regular_12;
    0080 : Result := C_FluentUI_Error_Circle_Regular_12;
    0081 : Result := C_FluentUI_Eye_Regular_12;
    0082 : Result := C_FluentUI_Filter_Regular_12;
    0083 : Result := C_FluentUI_Food_Cake_Regular_12;
    0084 : Result := C_FluentUI_Glance_Regular_12;
    0085 : Result := C_FluentUI_Glance_Default_Regular_12;
    0086 : Result := C_FluentUI_Glance_Horizontal_Regular_12;
    0087 : Result := C_FluentUI_Globe_Regular_12;
    0088 : Result := C_FluentUI_Globe_Off_Regular_12;
    0089 : Result := C_FluentUI_Guest_Regular_12;
    0090 : Result := C_FluentUI_Hat_Graduation_Regular_12;
    0091 : Result := C_FluentUI_Heart_Regular_12;
    0092 : Result := C_FluentUI_Hexagon_Regular_12;
    0093 : Result := C_FluentUI_Hexagon_Three_Regular_12;
    0094 : Result := C_FluentUI_Home_Regular_12;
    0095 : Result := C_FluentUI_Important_Regular_12;
    0096 : Result := C_FluentUI_Info_Regular_12;
    0097 : Result := C_FluentUI_Link_Regular_12;
    0098 : Result := C_FluentUI_Link_Square_Regular_12;
    0099 : Result := C_FluentUI_Location_Regular_12;
    0100 : Result := C_FluentUI_Location_Arrow_Regular_12;
    0101 : Result := C_FluentUI_Location_Ripple_Regular_12;
    0102 : Result := C_FluentUI_Lock_Closed_Regular_12;
    0103 : Result := C_FluentUI_Lock_Open_Regular_12;
    0104 : Result := C_FluentUI_Mail_Regular_12;
    0105 : Result := C_FluentUI_Mail_Unread_Regular_12;
    0106 : Result := C_FluentUI_Mention_Regular_12;
    0107 : Result := C_FluentUI_Mic_Off_Regular_12;
    0108 : Result := C_FluentUI_My_Location_Regular_12;
    0109 : Result := C_FluentUI_Notepad_Regular_12;
    0110 : Result := C_FluentUI_Open_Regular_12;
    0111 : Result := C_FluentUI_Organization_Regular_12;
    0112 : Result := C_FluentUI_Paint_Brush_Regular_12;
    0113 : Result := C_FluentUI_Panel_Right_Regular_12;
    0114 : Result := C_FluentUI_Pause_Regular_12;
    0115 : Result := C_FluentUI_People_Regular_12;
    0116 : Result := C_FluentUI_People_Community_Regular_12;
    0117 : Result := C_FluentUI_Person_Regular_12;
    0118 : Result := C_FluentUI_Person_Board_Regular_12;
    0119 : Result := C_FluentUI_Person_Circle_Regular_12;
    0120 : Result := C_FluentUI_Phone_Regular_12;
    0121 : Result := C_FluentUI_Pin_Regular_12;
    0122 : Result := C_FluentUI_Play_Regular_12;
    0123 : Result := C_FluentUI_Premium_Regular_12;
    0124 : Result := C_FluentUI_Presence_Available_Regular_12;
    0125 : Result := C_FluentUI_Presence_Away_Regular_12;
    0126 : Result := C_FluentUI_Presence_Blocked_Regular_12;
    0127 : Result := C_FluentUI_Presence_DND_Regular_12;
    0128 : Result := C_FluentUI_Presence_Offline_Regular_12;
    0129 : Result := C_FluentUI_Presence_OOF_Regular_12;
    0130 : Result := C_FluentUI_Presence_Tentative_Regular_12;
    0131 : Result := C_FluentUI_Presence_Unknown_Regular_12;
    0132 : Result := C_FluentUI_Prohibited_Regular_12;
    0133 : Result := C_FluentUI_Puzzle_Piece_Regular_12;
    0134 : Result := C_FluentUI_Question_Circle_Regular_12;
    0135 : Result := C_FluentUI_Record_Regular_12;
    0136 : Result := C_FluentUI_Record_Stop_Regular_12;
    0137 : Result := C_FluentUI_Rectangle_Landscape_Regular_12;
    0138 : Result := C_FluentUI_Reward_Regular_12;
    0139 : Result := C_FluentUI_Ribbon_Regular_12;
    0140 : Result := C_FluentUI_Ribbon_Off_Regular_12;
    0141 : Result := C_FluentUI_Scan_Dash_Regular_12;
    0142 : Result := C_FluentUI_Search_Regular_12;
    0143 : Result := C_FluentUI_Server_Regular_12;
    0144 : Result := C_FluentUI_Shield_Regular_12;
    0145 : Result := C_FluentUI_Slash_Forward_Regular_12;
    0146 : Result := C_FluentUI_Split_Horizontal_Regular_12;
    0147 : Result := C_FluentUI_Split_Vertical_Regular_12;
    0148 : Result := C_FluentUI_Square_Regular_12;
    0149 : Result := C_FluentUI_Square_Dovetail_Joint_Regular_12;
    0150 : Result := C_FluentUI_Square_Hint_Hexagon_Regular_12;
    0151 : Result := C_FluentUI_Square_Shadow_Regular_12;
    0152 : Result := C_FluentUI_Star_Regular_12;
    0153 : Result := C_FluentUI_Star_Half_Regular_12;
    0154 : Result := C_FluentUI_Star_Off_Regular_12;
    0155 : Result := C_FluentUI_Star_One_Quarter_Regular_12;
    0156 : Result := C_FluentUI_Star_Three_Quarter_Regular_12;
    0157 : Result := C_FluentUI_Status_Regular_12;
    0158 : Result := C_FluentUI_Sticker_Regular_12;
    0159 : Result := C_FluentUI_Subtract_Regular_12;
    0160 : Result := C_FluentUI_Subtract_Circle_Regular_12;
    0161 : Result := C_FluentUI_Tablet_Regular_12;
    0162 : Result := C_FluentUI_Tent_Regular_12;
    0163 : Result := C_FluentUI_Text_Regular_12;
    0164 : Result := C_FluentUI_Text_T_Regular_12;
    0165 : Result := C_FluentUI_Timer_Regular_12;
    0166 : Result := C_FluentUI_Toolbox_Regular_12;
    0167 : Result := C_FluentUI_Triangle_Regular_12;
    0168 : Result := C_FluentUI_Triangle_Down_Regular_12;
    0169 : Result := C_FluentUI_Triangle_Left_Regular_12;
    0170 : Result := C_FluentUI_Triangle_Right_Regular_12;
    0171 : Result := C_FluentUI_Video_Person_Regular_12;
    0172 : Result := C_FluentUI_Warning_Regular_12;
  end;
end;

end.