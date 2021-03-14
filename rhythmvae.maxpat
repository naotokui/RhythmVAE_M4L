{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"openrect" : [ 27.0, 83.0, 1375.0, 163.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 1375.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "velvet",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 10.0,
					"id" : "obj-216",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 233.0, 259.0, 135.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -6.958729851245877, 140.868613138686129, 40.0, 18.0 ],
					"text" : "v0.80",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-202",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2055.66666666666697, 262.257293701171875, 35.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 202.257372736930847, 119.0, 31.0, 17.0 ],
					"text" : "Loss",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-157",
					"loopruler" : 0,
					"maxclass" : "live.step",
					"nseq" : 9,
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1689.5, 572.0, 369.5, 125.166656494140625 ],
					"presentation" : 1,
					"presentation_rect" : [ 994.132372375251748, 25.661492850585937, 312.695551350988353, 135.000000000000028 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "live.step[2]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "live.step",
							"parameter_type" : 3
						}

					}
,
					"unitruler" : 0,
					"varname" : "live.step[2]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-1",
					"loopruler" : 0,
					"maxclass" : "live.step",
					"nseq" : 9,
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1319.0, 572.0, 369.5, 125.166656494140625 ],
					"presentation" : 1,
					"presentation_rect" : [ 683.132372375251748, 26.064323425292962, 311.0, 135.000000000000028 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "live.step[1]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "live.step",
							"parameter_type" : 3
						}

					}
,
					"unitruler" : 0,
					"varname" : "live.step[1]"
				}

			}
, 			{
				"box" : 				{
					"bgstepcolor" : [ 0.047058823529412, 0.047058823529412, 0.047058823529412, 0.741176470588235 ],
					"bgstepcolor2" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"bordercolor" : [ 0.047058823529412, 0.047058823529412, 0.047058823529412, 0.741176470588235 ],
					"bordercolor2" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"columns" : 48,
					"direction" : 0,
					"hbgcolor" : [ 0.917647058823529, 0.396078431372549, 0.411764705882353, 0.59 ],
					"id" : "obj-18",
					"ignoreclick" : 1,
					"marker_horizontal" : 12,
					"marker_vertical" : 0,
					"matrixmode" : 1,
					"maxclass" : "live.grid",
					"numinlets" : 2,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1205.16666666666697, 890.911456644132613, 445.833333333333258, 134.052086711734773 ],
					"presentation" : 1,
					"presentation_rect" : [ 683.132372000000032, 26.064323000000002, 311.0, 135.0 ],
					"rounded" : 0.0,
					"rows" : 9,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "live.grid",
							"parameter_shortname" : "live.grid",
							"parameter_type" : 3
						}

					}
,
					"spacing" : 0.0,
					"varname" : "live.grid"
				}

			}
, 			{
				"box" : 				{
					"bgstepcolor" : [ 0.047058823529412, 0.047058823529412, 0.047058823529412, 0.741176470588235 ],
					"bgstepcolor2" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"bordercolor" : [ 0.047058823529412, 0.047058823529412, 0.047058823529412, 0.741176470588235 ],
					"bordercolor2" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"columns" : 48,
					"direction" : 0,
					"hbgcolor" : [ 0.917647058823529, 0.396078431372549, 0.411764705882353, 0.59 ],
					"id" : "obj-161",
					"ignoreclick" : 1,
					"marker_horizontal" : 12,
					"marker_vertical" : 0,
					"matrixmode" : 1,
					"maxclass" : "live.grid",
					"numinlets" : 2,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1651.333333333333485, 890.911456644132613, 445.833333333333258, 134.052086711734773 ],
					"presentation" : 1,
					"presentation_rect" : [ 994.132372000000032, 25.661493, 312.695551000000023, 135.0 ],
					"rounded" : 0.0,
					"rows" : 9,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "live.grid[1]",
							"parameter_shortname" : "live.grid",
							"parameter_type" : 3
						}

					}
,
					"spacing" : 0.0,
					"varname" : "live.grid[1]"
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.577713564497685,
					"bgcolor" : [ 0.483607888221741, 0.483681797981262, 0.483572363853455, 1.0 ],
					"bordercolor" : [ 0.035294117647059, 0.035294117647059, 0.035294117647059, 1.0 ],
					"hidden" : 1,
					"id" : "obj-200",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1185.666666726271615, 1033.41891646425438, 929.999999940395355, 141.600000202655792 ],
					"presentation" : 1,
					"presentation_rect" : [ 682.632372736930847, 25.661492850585937, 624.999999999999886, 136.00000011920929 ],
					"proportion" : 0.39,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "led",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"parameter_mappable" : 0,
					"patching_rect" : [ 388.5, 514.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 252.007372736930847, 7.5, 12.875, 12.875 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1450.0, 811.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1411.16666666666697, 79.75, 33.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1363.15207926432322, 79.75, 34.0, 22.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"activetextcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-179",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1411.16666666666697, 60.439323425292969, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 568.54127037525177, 35.161492850585944, 42.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[17]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text[16]",
							"parameter_type" : 2
						}

					}
,
					"text" : "Load",
					"varname" : "live.text[17]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"activetextcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-164",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1363.15207926432322, 60.439323425292969, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 524.54127037525177, 35.161492850585944, 42.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[16]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text[16]",
							"parameter_type" : 2
						}

					}
,
					"text" : "Save",
					"varname" : "live.text[16]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 10.0,
					"id" : "obj-131",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1584.0, -39.5, 39.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 524.54127037525177, 15.161492850585944, 59.0, 18.0 ],
					"text" : "Z Presets",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1771.0, 271.257293701171875, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1771.0, 243.0, 151.0, 22.0 ],
					"text" : "M4L.api.ObserveTransport"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1771.0, 217.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-218",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1139.670088768005371, 793.814388513565063, 118.0, 22.0 ],
					"text" : "pak 0 0 0 0 0 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-217",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1132.16666666666697, 611.340171933174133, 79.0, 20.0 ],
					"text" : "Track Freeze"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"bgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-215",
					"lcdcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1139.670088768005371, 769.999999999999886, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1313.241271000000097, 147.286958999999968, 30.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[15]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text[6]",
							"parameter_type" : 2
						}

					}
,
					"text" : " ",
					"texton" : " ",
					"varname" : "live.text[15]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"bgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-214",
					"lcdcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1139.670088768005371, 753.416976572329872, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1313.241271000000097, 132.134129499999972, 30.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[14]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text[6]",
							"parameter_type" : 2
						}

					}
,
					"text" : " ",
					"texton" : " ",
					"varname" : "live.text[14]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"bgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-213",
					"lcdcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1139.670088768005371, 738.01414714360817, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1313.241271000000097, 116.981299999999976, 30.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[13]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text[6]",
							"parameter_type" : 2
						}

					}
,
					"text" : " ",
					"texton" : " ",
					"varname" : "live.text[13]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"bgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-212",
					"lcdcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1139.670088768005371, 722.611317714886582, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1313.241271000000097, 101.82847049999998, 30.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[12]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text[6]",
							"parameter_type" : 2
						}

					}
,
					"text" : " ",
					"texton" : " ",
					"varname" : "live.text[12]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"bgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-211",
					"lcdcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1139.670088768005371, 707.208488286164993, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1313.241271000000097, 86.675640999999985, 30.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[11]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text[6]",
							"parameter_type" : 2
						}

					}
,
					"text" : " ",
					"texton" : " ",
					"varname" : "live.text[11]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"bgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-210",
					"lcdcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1139.670088768005371, 691.805658857443291, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1313.241271000000097, 71.522811499999989, 30.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[10]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text[6]",
							"parameter_type" : 2
						}

					}
,
					"text" : " ",
					"texton" : " ",
					"varname" : "live.text[10]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"bgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-208",
					"lcdcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1139.670088768005371, 676.402829428721589, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1313.241271000000097, 56.369981999999993, 30.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[9]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text[6]",
							"parameter_type" : 2
						}

					}
,
					"text" : " ",
					"texton" : " ",
					"varname" : "live.text[9]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"bgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-207",
					"lcdcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1139.670088768005371, 661.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1313.241271000000097, 41.217152499999997, 30.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[8]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text[6]",
							"parameter_type" : 2
						}

					}
,
					"text" : " ",
					"texton" : " ",
					"varname" : "live.text[8]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.0,
					"id" : "obj-206",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 959.261903285980225, 411.01458740234375, 59.0, 17.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1311.241271244121435, 2.661493135257469, 35.0, 28.0 ],
					"text" : "Track Freeze",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"bgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-201",
					"lcdcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1139.670088768005371, 644.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1313.241271000000097, 26.064323000000002, 30.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[6]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text[6]",
							"parameter_type" : 2
						}

					}
,
					"text" : " ",
					"texton" : " ",
					"varname" : "live.text[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 800.0, 59.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"activetextcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"annotation" : "Open a bigger XY pad for Z",
					"fontname" : "Ableton Sans Light",
					"hint" : "Open a bigger XY pad for Z",
					"id" : "obj-66",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 727.98541259765625, 32.871353149414062, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 472.632372736930847, 7.862908137939453, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_info" : "Open a bigger XY pad for Z",
							"parameter_invisible" : 2,
							"parameter_longname" : "z-popup-button",
							"parameter_mmax" : 1,
							"parameter_shortname" : "z-popup-button",
							"parameter_type" : 2
						}

					}
,
					"text" : "open",
					"texton" : "close",
					"varname" : "live.text[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 457.944444444444457, 243.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 50.0, 82.0, 77.0, 22.0 ],
									"text" : "unpack s 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 177.5, 157.0, 41.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 152.0, 41.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 177.5, 133.0, 121.0, 22.0 ],
									"text" : "scale -600 600 0 127"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 128.0, 121.0, 22.0 ],
									"text" : "scale -600 600 0 127"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-179",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-184",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 234.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-188",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 177.5, 234.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-163", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-188", 0 ],
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-179", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 508.0, -145.5, 199.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 99.0, 703.0, 554.0, 565.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 78.0, 52.0, 54.0, 22.0 ],
									"text" : "pack 0 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-14",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 150.0, 624.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 316.0, 577.0, 54.0, 22.0 ],
									"text" : "pack 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 316.0, 607.0, 72.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 316.0, 635.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 78.0, 623.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 505.0, 8.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 78.0, 8.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.141176470588235, 0.305882352941176, 0.43921568627451, 1.0 ],
									"bottomvalue" : -600,
									"color" : [ 0.964705882352941, 0.992156862745098, 0.996078431372549, 1.0 ],
									"elementcolor" : [ 0.345098039215686, 0.345098039215686, 0.345098039215686, 1.0 ],
									"id" : "obj-22",
									"leftvalue" : -600,
									"maxclass" : "pictslider",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 78.0, 82.0, 446.0, 439.276381909547752 ],
									"presentation" : 1,
									"presentation_rect" : [ 3.091102361679077, 3.064323425292969, 546.5, 559.235001915761245 ],
									"rightvalue" : 600,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ -200, -200 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "pictslider[1]",
											"parameter_shortname" : "pictslider",
											"parameter_type" : 3
										}

									}
,
									"topvalue" : 600,
									"varname" : "pictslider"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"order" : 0,
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 1,
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 1,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "tap",
								"default" : 								{
									"fontname" : [ "Lato Light" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 508.0, 163.067970275878906, 137.5, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p zcoord_L",
					"varname" : "patcher"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"activefgdialcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
					"activeneedlecolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"appearance" : 1,
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-197",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1689.5, -38.25, 25.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 548.223475098609924, 120.0, 60.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_exponent" : 2.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "transition",
							"parameter_mmax" : 10000.0,
							"parameter_shortname" : "Transition",
							"parameter_type" : 0,
							"parameter_unitstyle" : 2
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"triangle" : 1,
					"varname" : "live.dial[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1629.5, 36.0, 54.0, 22.0 ],
					"text" : "pack 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1629.5, 66.189323425292969, 40.0, 22.0 ],
					"text" : "line"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-178",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1627.5, -54.5, 32.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 520.300398468971252, 86.675641140179494, 33.0, 17.0 ],
					"text" : "Recall",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-173",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1569.0, -54.5, 29.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 520.300398468971252, 54.26756106494674, 33.0, 17.0 ],
					"text" : "Store",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1482.0, 36.0, 83.0, 22.0 ],
					"text" : "prepend store"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-162",
					"maxclass" : "live.tab",
					"num_lines_patching" : 4,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1629.5, -34.75, 59.0, 55.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 548.223475098609924, 86.675641140179494, 66.0, 24.338506434085602 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8" ],
							"parameter_longname" : "live.tab[4]",
							"parameter_mmax" : 7,
							"parameter_shortname" : "live.tab[3]",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.tab[4]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 1.0, 0.374436408281326, 0.419637024402618, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-78",
					"maxclass" : "live.tab",
					"num_lines_patching" : 4,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1569.0, -34.75, 59.0, 57.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 548.223475098609924, 54.26756106494674, 67.408897638320923, 23.402829859378564 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8" ],
							"parameter_longname" : "live.tab[3]",
							"parameter_mmax" : 7,
							"parameter_shortname" : "live.tab[3]",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.tab[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1467.5, -47.067970275878906, 77.0, 22.0 ],
					"text" : "clientwindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1453.0, -76.0, 89.0, 22.0 ],
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1453.0, 127.310676574707031, 153.0, 22.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 4, 44, 358, 172 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 583, 69, 1034, 197 ]
					}
,
					"text" : "pattrstorage @savemode 0",
					"varname" : "u392016333"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 428.25, -95.128646850585938, 72.0, 22.0 ],
					"restore" : [ -165, 309 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr zcoord",
					"varname" : "zcoord"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1546.0, 227.0, 91.0, 20.0 ],
					"text" : "sequencer time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1488.0, 530.5, 117.0, 20.0 ],
					"text" : "new seq generated! "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1345.0, 797.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-231",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 191.0, 308.0, 1189.0, 537.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 963.615391194820404, 100.00000014941412, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.038456499576569, 100.00000014941412, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 963.615391194820404, 444.332907894744949, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-169",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 870.615391194820404, 286.179061452045516, 97.0, 22.0 ],
									"text" : "r ---to_vel"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "bang" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 290.0, 79.0, 873.0, 967.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "no_top",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 804.0, 6.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 674.5, 470.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 54.0, 233.000002324581146, 77.0, 22.0 ],
													"text" : "list_dup 2 48"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 177.0, 233.000002324581146, 77.0, 22.0 ],
													"text" : "list_dup 2 48"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 370.0, 245.905662000179291, 104.0, 22.0 ],
													"text" : "list_dup 2 48"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 424.0, 128.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 455.0, 561.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 8,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 523.0, 311.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 1,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 1,
														"objectsnaponopen" : 1,
														"statusbarvisible" : 2,
														"toolbarvisible" : 1,
														"lefttoolbarpinned" : 0,
														"toptoolbarpinned" : 0,
														"righttoolbarpinned" : 0,
														"bottomtoolbarpinned" : 0,
														"toolbars_unpinned_last_save" : 0,
														"tallnewobj" : 0,
														"boxanimatetime" : 200,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"description" : "",
														"digest" : "",
														"tags" : "",
														"style" : "",
														"subpatcher_template" : "no_top",
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 423.0, 450.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 86.0, 133.0, 71.0, 22.0 ],
																	"text" : "fromsymbol"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-8",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 8,
																			"minor" : 1,
																			"revision" : 8,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
																		"bglocked" : 0,
																		"openinpresentation" : 0,
																		"default_fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"gridonopen" : 1,
																		"gridsize" : [ 15.0, 15.0 ],
																		"gridsnaponopen" : 1,
																		"objectsnaponopen" : 1,
																		"statusbarvisible" : 2,
																		"toolbarvisible" : 1,
																		"lefttoolbarpinned" : 0,
																		"toptoolbarpinned" : 0,
																		"righttoolbarpinned" : 0,
																		"bottomtoolbarpinned" : 0,
																		"toolbars_unpinned_last_save" : 0,
																		"tallnewobj" : 0,
																		"boxanimatetime" : 200,
																		"enablehscroll" : 1,
																		"enablevscroll" : 1,
																		"devicewidth" : 0.0,
																		"description" : "",
																		"digest" : "",
																		"tags" : "",
																		"style" : "",
																		"subpatcher_template" : "no_top",
																		"assistshowspatchername" : 0,
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-66",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ],
																					"patching_rect" : [ 50.0, 122.0, 51.0, 22.0 ],
																					"text" : "unjoin 2"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-17",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 121.5, 236.0, 99.0, 22.0 ],
																					"text" : "prepend extra1 1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial Bold",
																					"fontsize" : 10.0,
																					"id" : "obj-9",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 158.5, 148.0, 42.0, 20.0 ],
																					"text" : "zlclear"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial Bold",
																					"fontsize" : 10.0,
																					"id" : "obj-10",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 121.5, 209.0, 49.0, 20.0 ],
																					"text" : "zl group"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-11",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 113.5, 100.0, 20.0, 20.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial Bold",
																					"fontsize" : 10.0,
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "int" ],
																					"patching_rect" : [ 113.5, 148.0, 40.0, 20.0 ],
																					"text" : "uzi 96"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "number",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 66.0, 178.0, 50.0, 22.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-5",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-6",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 113.5, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-7",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 121.5, 318.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"source" : [ "obj-1", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"midpoints" : [ 123.0, 172.5, 75.5, 172.5 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-17", 0 ],
																					"source" : [ "obj-10", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"order" : 1,
																					"source" : [ "obj-11", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"order" : 0,
																					"source" : [ "obj-11", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-7", 0 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"midpoints" : [ 75.5, 204.0, 131.0, 204.0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-66", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-11", 0 ],
																					"source" : [ "obj-6", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-66", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 223.5, 360.0, 196.5, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"description" : "",
																		"digest" : "",
																		"globalpatchername" : "",
																		"tags" : ""
																	}
,
																	"text" : "p list_repeat"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-18",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "int", "int" ],
																	"patching_rect" : [ 402.0, 197.0, 40.0, 22.0 ],
																	"text" : "t b i i"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-69",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 223.5, 261.0, 51.5, 22.0 ],
																	"text" : "- 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-63",
																	"items" : [ "bass", "drum", ",", "snare", "drum", ",", "low", "tom", ",", "mid", "tom", ",", "high", "tom", ",", "rim", "shot", ",", "hand", "clap", ",", "closed", "hi-hat", ",", "open", "hi-hat", ",", "crash", "cymbal", ",", "ride", "cymbal", ",", "cow", "bell", ",", "tambourine" ],
																	"maxclass" : "umenu",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "int", "", "" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 223.5, 297.0, 122.0, 22.0 ]
																}

															}
, 															{
																"box" : 																{
																	"coll_data" : 																	{
																		"count" : 9,
																		"data" : [ 																			{
																				"key" : 0,
																				"value" : [ "bass_drum", 0 ]
																			}
, 																			{
																				"key" : 1,
																				"value" : [ "snare_drum", 1 ]
																			}
, 																			{
																				"key" : 2,
																				"value" : [ "closed_hihat", 8 ]
																			}
, 																			{
																				"key" : 3,
																				"value" : [ "open_hihat", 9 ]
																			}
, 																			{
																				"key" : 4,
																				"value" : [ "low_tom", 5 ]
																			}
, 																			{
																				"key" : 5,
																				"value" : [ "mid_tom", 6 ]
																			}
, 																			{
																				"key" : 6,
																				"value" : [ "high_tom", 7 ]
																			}
, 																			{
																				"key" : 7,
																				"value" : [ "hand_clap", 3 ]
																			}
, 																			{
																				"key" : 8,
																				"value" : [ "rim_shot", 2 ]
																			}
 ]
																	}
,
																	"id" : "obj-60",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 223.5, 328.0, 159.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"embed" : 1,
																		"precision" : 6
																	}
,
																	"text" : "coll seq_id_to_midi_vae"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-87",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 402.0, 137.0, 55.0, 22.0 ],
																	"text" : "zl.slice 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-79",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 86.0, 177.0, 99.0, 22.0 ],
																	"text" : "prepend extra1 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-76",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 423.0, 240.0, 82.0, 22.0 ],
																	"text" : "target_seq $1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-74",
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 402.0, 166.0, 50.0, 22.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-61",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 100.0, 55.0, 22.0 ],
																	"text" : "zl.slice 1"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-4",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 35.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-7",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 86.0, 450.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-69", 0 ],
																	"midpoints" : [ 422.0, 239.5, 233.0, 239.5 ],
																	"source" : [ "obj-18", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-76", 0 ],
																	"source" : [ "obj-18", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 1 ],
																	"source" : [ "obj-18", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-61", 0 ],
																	"order" : 1,
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-87", 0 ],
																	"midpoints" : [ 59.5, 90.0, 411.5, 90.0 ],
																	"order" : 0,
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-60", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-61", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-60", 0 ],
																	"source" : [ "obj-63", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-63", 0 ],
																	"source" : [ "obj-69", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-18", 0 ],
																	"source" : [ "obj-74", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-76", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-79", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"midpoints" : [ 233.0, 415.5, 95.5, 415.5 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-74", 0 ],
																	"source" : [ "obj-87", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-79", 0 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 177.0, 141.0, 77.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p timeshift"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 8,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 324.0, 316.0, 755.0, 624.0 ],
														"bglocked" : 0,
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 1,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 1,
														"objectsnaponopen" : 1,
														"statusbarvisible" : 2,
														"toolbarvisible" : 1,
														"lefttoolbarpinned" : 0,
														"toptoolbarpinned" : 0,
														"righttoolbarpinned" : 0,
														"bottomtoolbarpinned" : 0,
														"toolbars_unpinned_last_save" : 0,
														"tallnewobj" : 0,
														"boxanimatetime" : 200,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"description" : "",
														"digest" : "",
														"tags" : "",
														"style" : "",
														"subpatcher_template" : "no_top",
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 423.0, 484.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 86.0, 133.0, 71.0, 22.0 ],
																	"text" : "fromsymbol"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-8",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 8,
																			"minor" : 1,
																			"revision" : 8,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 531.0, 580.0, 640.0, 480.0 ],
																		"bglocked" : 0,
																		"openinpresentation" : 0,
																		"default_fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"gridonopen" : 1,
																		"gridsize" : [ 15.0, 15.0 ],
																		"gridsnaponopen" : 1,
																		"objectsnaponopen" : 1,
																		"statusbarvisible" : 2,
																		"toolbarvisible" : 1,
																		"lefttoolbarpinned" : 0,
																		"toptoolbarpinned" : 0,
																		"righttoolbarpinned" : 0,
																		"bottomtoolbarpinned" : 0,
																		"toolbars_unpinned_last_save" : 0,
																		"tallnewobj" : 0,
																		"boxanimatetime" : 200,
																		"enablehscroll" : 1,
																		"enablevscroll" : 1,
																		"devicewidth" : 0.0,
																		"description" : "",
																		"digest" : "",
																		"tags" : "",
																		"style" : "",
																		"subpatcher_template" : "no_top",
																		"assistshowspatchername" : 0,
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-66",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ],
																					"patching_rect" : [ 50.0, 122.0, 51.0, 22.0 ],
																					"text" : "unjoin 2"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-17",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 121.5, 236.0, 91.0, 22.0 ],
																					"text" : "prepend pitch 1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial Bold",
																					"fontsize" : 10.0,
																					"id" : "obj-9",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 158.5, 148.0, 42.0, 20.0 ],
																					"text" : "zlclear"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial Bold",
																					"fontsize" : 10.0,
																					"id" : "obj-10",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 121.5, 209.0, 49.0, 20.0 ],
																					"text" : "zl group"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-11",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 113.5, 100.0, 20.0, 20.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial Bold",
																					"fontsize" : 10.0,
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "int" ],
																					"patching_rect" : [ 113.5, 148.0, 40.0, 20.0 ],
																					"text" : "uzi 96"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "number",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 66.0, 178.0, 50.0, 22.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-5",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-6",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 113.5, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-7",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 121.5, 318.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"source" : [ "obj-1", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"midpoints" : [ 123.0, 172.5, 75.5, 172.5 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-17", 0 ],
																					"source" : [ "obj-10", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"order" : 1,
																					"source" : [ "obj-11", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"order" : 0,
																					"source" : [ "obj-11", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-7", 0 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"midpoints" : [ 75.5, 204.0, 131.0, 204.0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-66", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-11", 0 ],
																					"source" : [ "obj-6", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-66", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 223.5, 360.0, 196.5, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"description" : "",
																		"digest" : "",
																		"globalpatchername" : "",
																		"tags" : ""
																	}
,
																	"text" : "p list_repeat"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-18",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "int", "int" ],
																	"patching_rect" : [ 402.0, 197.0, 40.0, 22.0 ],
																	"text" : "t b i i"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-69",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 223.5, 261.0, 51.5, 22.0 ],
																	"text" : "- 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-63",
																	"items" : [ "bass", "drum", ",", "snare", "drum", ",", "low", "tom", ",", "mid", "tom", ",", "high", "tom", ",", "rim", "shot", ",", "hand", "clap", ",", "closed", "hi-hat", ",", "open", "hi-hat", ",", "crash", "cymbal", ",", "ride", "cymbal", ",", "cow", "bell", ",", "tambourine" ],
																	"maxclass" : "umenu",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "int", "", "" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 223.5, 297.0, 122.0, 22.0 ]
																}

															}
, 															{
																"box" : 																{
																	"coll_data" : 																	{
																		"count" : 9,
																		"data" : [ 																			{
																				"key" : 0,
																				"value" : [ "bass_drum", 0 ]
																			}
, 																			{
																				"key" : 1,
																				"value" : [ "snare_drum", 1 ]
																			}
, 																			{
																				"key" : 2,
																				"value" : [ "closed_hihat", 8 ]
																			}
, 																			{
																				"key" : 3,
																				"value" : [ "open_hihat", 9 ]
																			}
, 																			{
																				"key" : 4,
																				"value" : [ "low_tom", 5 ]
																			}
, 																			{
																				"key" : 5,
																				"value" : [ "mid_tom", 6 ]
																			}
, 																			{
																				"key" : 6,
																				"value" : [ "high_tom", 7 ]
																			}
, 																			{
																				"key" : 7,
																				"value" : [ "hand_clap", 3 ]
																			}
, 																			{
																				"key" : 8,
																				"value" : [ "rim_shot", 2 ]
																			}
 ]
																	}
,
																	"id" : "obj-60",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 223.5, 328.0, 159.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"embed" : 1,
																		"precision" : 6
																	}
,
																	"text" : "coll seq_id_to_midi_vae"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-87",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 402.0, 137.0, 55.0, 22.0 ],
																	"text" : "zl.slice 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-79",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 86.0, 177.0, 106.0, 22.0 ],
																	"text" : "prepend velocity 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-76",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 423.0, 240.0, 82.0, 22.0 ],
																	"text" : "target_seq $1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-74",
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 402.0, 166.0, 50.0, 22.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-61",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 100.0, 55.0, 22.0 ],
																	"text" : "zl.slice 1"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-4",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 220.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-7",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 90.166672000000005, 484.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-69", 0 ],
																	"midpoints" : [ 422.0, 239.5, 233.0, 239.5 ],
																	"source" : [ "obj-18", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-76", 0 ],
																	"source" : [ "obj-18", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 1 ],
																	"source" : [ "obj-18", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-61", 0 ],
																	"order" : 1,
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-87", 0 ],
																	"order" : 0,
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-60", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-61", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-60", 0 ],
																	"source" : [ "obj-63", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-63", 0 ],
																	"source" : [ "obj-69", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-18", 0 ],
																	"source" : [ "obj-74", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-76", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-79", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-74", 0 ],
																	"source" : [ "obj-87", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-79", 0 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 54.0, 141.0, 77.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p pitch"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-19",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 370.0, 6.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 8,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 1,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 1,
														"objectsnaponopen" : 1,
														"statusbarvisible" : 2,
														"toolbarvisible" : 1,
														"lefttoolbarpinned" : 0,
														"toptoolbarpinned" : 0,
														"righttoolbarpinned" : 0,
														"bottomtoolbarpinned" : 0,
														"toolbars_unpinned_last_save" : 0,
														"tallnewobj" : 0,
														"boxanimatetime" : 200,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"description" : "",
														"digest" : "",
														"tags" : "",
														"style" : "",
														"subpatcher_template" : "no_top",
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-2",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 131.0, 292.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-5",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 102.0, 72.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 102.0, 128.0, 24.0, 24.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-7",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 102.0, 159.0, 48.0, 22.0 ],
																	"text" : "uzi 9"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 131.0, 200.0, 82.0, 22.0 ],
																	"text" : "target_seq $1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 8,
																			"minor" : 1,
																			"revision" : 8,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 84.0, 129.0, 782.0, 627.0 ],
																		"bglocked" : 0,
																		"openinpresentation" : 0,
																		"default_fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"gridonopen" : 1,
																		"gridsize" : [ 15.0, 15.0 ],
																		"gridsnaponopen" : 1,
																		"objectsnaponopen" : 1,
																		"statusbarvisible" : 2,
																		"toolbarvisible" : 1,
																		"lefttoolbarpinned" : 0,
																		"toptoolbarpinned" : 0,
																		"righttoolbarpinned" : 0,
																		"bottomtoolbarpinned" : 0,
																		"toolbars_unpinned_last_save" : 0,
																		"tallnewobj" : 0,
																		"boxanimatetime" : 200,
																		"enablehscroll" : 1,
																		"enablevscroll" : 1,
																		"devicewidth" : 0.0,
																		"description" : "",
																		"digest" : "",
																		"tags" : "",
																		"style" : "",
																		"subpatcher_template" : "no_top",
																		"assistshowspatchername" : 0,
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-12",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 66.0, 183.0, 22.0, 22.0 ],
																					"text" : "t 0"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-8",
																					"linecount" : 26,
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 223.0, 302.0, 52.0, 357.0 ],
																					"text" : "velocity 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-17",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 121.5, 238.0, 106.0, 22.0 ],
																					"text" : "prepend velocity 1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial Bold",
																					"fontsize" : 10.0,
																					"id" : "obj-9",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 158.5, 148.0, 42.0, 20.0 ],
																					"text" : "zlclear"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial Bold",
																					"fontsize" : 10.0,
																					"id" : "obj-10",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 121.5, 209.0, 49.0, 20.0 ],
																					"text" : "zl group"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-11",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 113.5, 100.0, 20.0, 20.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial Bold",
																					"fontsize" : 10.0,
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "int" ],
																					"patching_rect" : [ 113.5, 148.0, 40.0, 20.0 ],
																					"text" : "uzi 96"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-6",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 113.5, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-7",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 121.5, 318.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"source" : [ "obj-1", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-12", 0 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-17", 0 ],
																					"source" : [ "obj-10", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"order" : 1,
																					"source" : [ "obj-11", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"order" : 0,
																					"source" : [ "obj-11", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"source" : [ "obj-12", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-7", 0 ],
																					"order" : 1,
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-8", 1 ],
																					"order" : 0,
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-11", 0 ],
																					"source" : [ "obj-6", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 50.0, 200.0, 76.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"description" : "",
																		"digest" : "",
																		"globalpatchername" : "",
																		"tags" : ""
																	}
,
																	"text" : "p list_repeat"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-16",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 292.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"order" : 1,
																	"source" : [ "obj-7", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"order" : 0,
																	"source" : [ "obj-7", 2 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 370.0, 175.0, 104.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p reset all velocity"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 476.0, 176.0, 110.0, 20.0 ],
													"text" : "reset"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-12",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 674.5, 544.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 54.0, 47.0, 244.0, 22.0 ],
													"text" : "route seq_output timeshift_output generated"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 674.5, 142.0, 48.0, 22.0 ],
													"text" : "del 300"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-53",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 674.5, 176.0, 75.0, 22.0 ],
													"text" : "target_seq 0"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 54.0, 0.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-3",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 54.0, 553.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 2 ],
													"midpoints" : [ 813.5, 209.792456865310669, 464.5, 209.792456865310669 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 2 ],
													"midpoints" : [ 813.5, 224.094344973564148, 244.5, 224.094344973564148 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 2 ],
													"midpoints" : [ 813.5, 209.943400919437408, 121.5, 209.943400919437408 ],
													"order" : 2,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"midpoints" : [ 379.5, 316.5, 63.5, 316.5 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"midpoints" : [ 186.5, 315.0, 63.5, 315.0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"midpoints" : [ 244.5, 374.0, 464.5, 374.0 ],
													"source" : [ "obj-15", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"midpoints" : [ 121.5, 374.0, 464.5, 374.0 ],
													"source" : [ "obj-16", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 1 ],
													"source" : [ "obj-17", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"order" : 0,
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"midpoints" : [ 684.0, 429.5, 63.5, 429.5 ],
													"order" : 2,
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"midpoints" : [ 684.0, 429.5, 464.5, 429.5 ],
													"order" : 1,
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"midpoints" : [ 213.5, 99.0, 684.0, 99.0 ],
													"source" : [ "obj-55", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-55", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"source" : [ "obj-8", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 1 ],
													"source" : [ "obj-9", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "tap",
												"default" : 												{
													"fontname" : [ "Lato Light" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 870.615391194820404, 337.179061452045516, 112.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p to_velocity"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 73.80768495798111, 200.871368149414138, 169.0, 22.0 ],
									"text" : "display_seq $1, target_seq $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 73.80768495798111, 156.640598276748733, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1012.615391194820404, 246.946966925754623, 82.0, 33.0 ],
									"text" : "reset the sequencer"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1023.615391194820404, 337.179061452045516, 73.0, 22.0 ],
									"text" : "setup_1_16"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1023.615391194820404, 282.332907477512435, 60.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-214",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 670.5, 178.871368149414138, 139.0, 20.0 ],
									"text" : "hide unnecessary cursor"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-213",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 649.5, 200.871368149414138, 160.0, 22.0 ],
									"text" : "if $i1 > 48 then 0 else out2 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 545.384615480899811, 138.102135935916976, 158.0, 20.0 ],
									"text" : "distribute to two sequencers"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-184",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 791.09616231918335, 282.332907477512435, 29.5, 22.0 ],
									"text" : "- 48"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-173",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 459.5, 200.871368149414138, 185.0, 22.0 ],
									"text" : "if $i1 <= 48 then $i1 else out2 $i1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-225",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 73.80768495798111, 103.000015149414196, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-226",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 459.5, 100.00000014941412, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-228",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 166.0, 449.871369818344192, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-229",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 463.173077404499054, 461.871369818344192, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"midpoints" : [ 635.0, 244.505321720733718, 800.59616231918335, 244.505321720733718 ],
									"source" : [ "obj-173", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-228", 0 ],
									"midpoints" : [ 469.0, 279.14059785951622, 175.5, 279.14059785951622 ],
									"source" : [ "obj-173", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-229", 0 ],
									"midpoints" : [ 800.59616231918335, 347.967522541179733, 472.673077404499054, 347.967522541179733 ],
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-228", 0 ],
									"midpoints" : [ 24.538456499576569, 430.301074301153221, 175.5, 430.301074301153221 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-229", 0 ],
									"midpoints" : [ 24.538456499576569, 430.301074301153221, 472.673077404499054, 430.301074301153221 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"midpoints" : [ 800.0, 244.390599528446273, 800.59616231918335, 244.390599528446273 ],
									"source" : [ "obj-213", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-228", 0 ],
									"midpoints" : [ 659.0, 280.10213635314949, 175.5, 280.10213635314949 ],
									"source" : [ "obj-213", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-225", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-173", 0 ],
									"order" : 1,
									"source" : [ "obj-226", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-213", 0 ],
									"midpoints" : [ 469.0, 164.935684149414129, 659.0, 164.935684149414129 ],
									"order" : 0,
									"source" : [ "obj-226", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-228", 0 ],
									"midpoints" : [ 1033.115391194820404, 404.025215635194854, 175.5, 404.025215635194854 ],
									"order" : 1,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-229", 0 ],
									"midpoints" : [ 1033.115391194820404, 404.025215635194854, 472.673077404499054, 404.025215635194854 ],
									"order" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"order" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 1 ],
									"midpoints" : [ 1033.115391194820404, 320.255984464778976, 926.615391194820404, 320.255984464778976 ],
									"order" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-49", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-228", 0 ],
									"midpoints" : [ 880.115391194820404, 402.102138647928314, 175.5, 402.102138647928314 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-229", 0 ],
									"midpoints" : [ 926.615391194820404, 402.102138647928314, 472.673077404499054, 402.102138647928314 ],
									"source" : [ "obj-49", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 2 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-228", 0 ],
									"midpoints" : [ 83.30768495798111, 347.832900394744911, 175.5, 347.832900394744911 ],
									"order" : 1,
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-229", 0 ],
									"midpoints" : [ 83.30768495798111, 346.871361901111641, 472.673077404499054, 346.871361901111641 ],
									"order" : 0,
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1319.0, 499.999999999999943, 167.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p routing"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-221",
					"maxclass" : "live.button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1467.5, 530.5, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.432372748851776, 7.862908137939453, 15.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "live.button[1]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.button[1]",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.button[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-209",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 130.0, 1093.0, 603.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 497.0, 93.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 100.5, 100.0, 22.0, 22.0 ],
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 201.0, 120.0, 22.0 ],
													"text" : "pack 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 50.0, 165.0, 41.0, 22.0 ],
													"text" : "uzi 48"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 231.0, 90.0, 22.0 ],
													"text" : "prepend setcell"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 100.5, 127.0, 40.0, 22.0 ],
													"text" : "uzi 9"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-35",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 100.5, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-36",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 313.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"midpoints" : [ 110.0, 156.5, 59.5, 156.5 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 1 ],
													"source" : [ "obj-27", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-30", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-35", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 414.75, 148.0, 34.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 306.5, 416.0, 52.0, 22.0 ],
									"text" : "gate 1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 801.0, 363.0, 29.5, 22.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 407.0, 52.0, 22.0 ],
									"text" : "gate 1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 864.0, 104.0, 158.0, 22.0 ],
									"text" : "loadmess 0 0 0 0 0 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 869.0, 304.885413288265227, 71.0, 47.0 ],
									"text" : "filter with \"track freeze\""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 801.0, 83.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 828.0, 285.885413288265227, 29.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 801.0, 327.885413288265227, 56.5, 22.0 ],
									"text" : "zl.nth"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 828.0, 253.885413288265227, 47.0, 22.0 ],
									"text" : "zl.nth 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 645.0, 148.0, 101.0, 47.0 ],
									"text" : "send 0 to hide unnesesary cursor"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 645.0, 112.0, 101.0, 20.0 ],
									"text" : "sequencer cursor"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 613.0, 104.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 613.0, 148.0, 29.5, 22.0 ],
									"text" : "t 0 i"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 567.0, 104.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-210",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 567.0, 148.0, 29.5, 22.0 ],
									"text" : "t i 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 294.0, 170.0, 77.0, 22.0 ],
									"text" : "pack 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 294.0, 140.0, 29.5, 22.0 ],
									"text" : "- 48"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 294.0, 112.0, 77.0, 22.0 ],
									"text" : "unpack 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 174.0, 61.0, 150.0, 20.0 ],
									"text" : "routing for two matices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-202",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 497.0, 156.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-201",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 294.0, 202.885413288265227, 90.0, 22.0 ],
									"text" : "prepend setcell"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-200",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 83.0, 263.0, 22.0 ],
									"text" : "if $i1 <= 48 then $i1 $i2 $i3 else out2 $i1 $i2 $i3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 414.75, 108.0, 72.0, 22.0 ],
									"text" : "r ---clearcell"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-164",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 49.0, 62.0, 22.0 ],
									"text" : "r ---setcell"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 497.0, 191.885413288265227, 35.0, 22.0 ],
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 171.0, 90.0, 22.0 ],
									"text" : "prepend setcell"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-206",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 43.0, 465.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-207",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 288.000040666667019, 471.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-206", 0 ],
									"midpoints" : [ 622.5, 282.0, 52.5, 282.0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-207", 0 ],
									"midpoints" : [ 633.0, 282.0, 297.500040666667019, 282.0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-200", 0 ],
									"source" : [ "obj-164", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-207", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 810.5, 399.0, 316.0, 399.0 ],
									"order" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"midpoints" : [ 810.5, 398.0, 69.5, 398.0 ],
									"order" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-206", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-200", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-200", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"midpoints" : [ 303.5, 238.885413288265227, 837.5, 238.885413288265227 ],
									"order" : 0,
									"source" : [ "obj-201", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"order" : 1,
									"source" : [ "obj-201", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"midpoints" : [ 506.5, 186.942706644132613, 506.5, 186.942706644132613 ],
									"source" : [ "obj-202", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-206", 0 ],
									"midpoints" : [ 576.5, 282.0, 52.5, 282.0 ],
									"source" : [ "obj-210", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-207", 0 ],
									"midpoints" : [ 587.0, 282.0, 297.500040666667019, 282.0 ],
									"source" : [ "obj-210", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 873.5, 150.885413288265227, 810.5, 150.885413288265227 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"midpoints" : [ 424.25, 222.442706644132613, 837.5, 222.442706644132613 ],
									"order" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"order" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"order" : 2,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 2 ],
									"source" : [ "obj-4", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-201", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"midpoints" : [ 59.5, 238.942706644132613, 837.5, 238.942706644132613 ],
									"order" : 0,
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"order" : 1,
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-206", 0 ],
									"midpoints" : [ 506.5, 258.0, 52.5, 258.0 ],
									"order" : 1,
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-207", 0 ],
									"midpoints" : [ 506.5, 258.0, 297.500040666667019, 258.0 ],
									"order" : 0,
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-210", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "tap",
								"default" : 								{
									"fontname" : [ "Lato Light" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 1205.16666666666697, 853.0, 55.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p routing"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2178.5, 618.5, 83.0, 20.0 ],
					"text" : "MIDI Mapping"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1689.5, 763.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1689.5, 717.0, 92.0, 22.0 ],
					"text" : "zl slice 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-204",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2068.5, 86.189323425292969, 54.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 348.069872736930847, 40.420391639653772, 47.0, 17.0 ],
					"text" : "Bending",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Network Bending - intentionally \"break\" the trained network to introduce some randomness in rhythm generation.",
					"hint" : "Network Bending - intentionally \"break\" the trained network to introduce some randomness in rhythm generation.",
					"id" : "obj-203",
					"maxclass" : "live.button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 626.0, 246.682029724121094, 23.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 355.167269587516785, 54.670391639653772, 23.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_info" : "Network Bending - intentionally \"break\" the trained network to introduce some randomness in rhythm generation.",
							"parameter_longname" : "live.button[4]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.button[4]",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.button[4]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Network Bending coef: how much do you want to \"break\" the network?  The range around 0.05-0.1 is suitable. ",
					"hint" : "Network Bending coef: how much do you want to \"break\" the network?  The range around 0.05-0.1 is suitable. ",
					"id" : "obj-195",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 666.0, 246.682029724121094, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 352.132372736930847, 79.846485137939453, 31.069793701171875, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_info" : "Network Bending coef: how much do you want to \"break\" the network?  The range around 0.05-0.1 is suitable. ",
							"parameter_longname" : "live.numbox[16]",
							"parameter_mmax" : 0.5,
							"parameter_shortname" : "live.numbox[16]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.numbox[16]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 666.0, 264.628646850585938, 52.0, 22.0 ],
					"text" : "bend $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 626.0, 297.446617126464844, 71.0, 22.0 ],
					"text" : "bend 0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1467.5, 458.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-186",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.702331999999956, 139.0, 197.0, 60.0 ],
									"text" : "everytime user changes MIDI mapping, a new rhtyhm pattern shoud be  generated to reflect the new mapping"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 82.5, 216.059277772903442, 22.0, 22.0 ],
									"text" : "t b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 82.5, 189.059277772903442, 81.0, 22.0 ],
									"text" : "r re_generate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-181",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 235.904638886451721, 236.75, 40.0, 22.0 ],
									"text" : "* 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-180",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 181.0, 236.75, 40.0, 22.0 ],
									"text" : "* 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-179",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 180.904638886451721, 213.059277772903442, 74.0, 22.0 ],
									"text" : "unpack 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-178",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 181.0, 189.059277772903442, 56.0, 22.0 ],
									"text" : "r ---set_z"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 426.5, 165.0, 121.0, 22.0 ],
									"text" : "scale 0 127 -600 600"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.5, 165.0, 121.0, 22.0 ],
									"text" : "scale 0 127 -600 600"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-182",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.5, 105.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-183",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 426.5, 105.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-184",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 234.75, 318.75, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-185",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 325.202331999999956, 318.75, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-179", 0 ],
									"source" : [ "obj-178", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-180", 0 ],
									"source" : [ "obj-179", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-181", 0 ],
									"source" : [ "obj-179", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-183", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 508.0, -95.128646850585938, 199.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 457.944444444444457, 488.0, 59.0, 22.0 ],
					"text" : "s ---set_z"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 855.5, 330.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 400.25, 202.0, 99.0, 22.0 ],
					"text" : "s ---strict_greedy"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-177",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2053.5, 71.189323425292969, 54.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 348.069872736930847, 103.467153569343054, 47.0, 17.0 ],
					"text" : "Encoder",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 746.0, 305.01458740234375, 48.98541259765625, 48.98541259765625 ],
					"presentation" : 1,
					"presentation_rect" : [ 348.069872736930847, 120.0, 33.98541259765625, 33.98541259765625 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-174",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 739.0, 264.628646850585938, 166.0, 33.0 ],
					"text" : "Encoder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 950.0, 937.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 715.0, 381.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 715.0, 438.0, 167.0, 22.0 ],
									"text" : "encode_start 1, encode_done"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 715.0, 476.0, 92.0, 22.0 ],
									"text" : "s ---node_script"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.0, 701.0, 81.0, 22.0 ],
									"text" : "encode_done"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 527.0, 476.0, 92.0, 22.0 ],
									"text" : "s ---node_script"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 328.0, 743.5, 92.0, 22.0 ],
									"text" : "s ---node_script"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 479.0, 633.682029724121094, 97.0, 22.0 ],
									"text" : "r ---strict_greedy"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 328.0, 637.682029724121094, 29.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 328.0, 670.682029724121094, 170.0, 22.0 ],
									"text" : "pack encode_add 0 0. 0. 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 527.0, 400.0, 22.0, 22.0 ],
									"text" : "t b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 527.0, 430.0, 78.0, 22.0 ],
									"text" : "encode_start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 328.0, 608.0, 93.0, 22.0 ],
									"text" : "route note done"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 32.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 184.5, 547.0, 128.0, 22.0 ],
									"text" : "t get_selected_notes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 184.5, 512.0, 306.0, 22.0 ],
									"text" : "route select_all_notes get_selected_notes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 430.0, 86.0, 22.0 ],
									"text" : "prepend error"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "Empty Clip Slot!" ],
									"patching_rect" : [ 50.0, 353.0, 128.0, 22.0 ],
									"text" : "t \"Empty Clip Slot!\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 100.0, 100.0, 20.0 ],
									"text" : "get Path",
									"texton" : "get Path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 184.5, 446.0, 80.0, 22.0 ],
									"text" : "prepend call"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "select_all_notes", "" ],
									"patching_rect" : [ 184.5, 381.0, 128.0, 22.0 ],
									"text" : "t select_all_notes l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 184.5, 476.0, 128.0, 22.0 ],
									"saved_object_attributes" : 									{
										"_persistence" : 1
									}
,
									"text" : "live.object"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 184.5, 353.0, 68.0, 22.0 ],
									"text" : "prepend id"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 252.0, 68.0, 22.0 ],
									"text" : "route clip"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 309.0, 153.5, 22.0 ],
									"text" : "route 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 280.0, 56.0, 22.0 ],
									"text" : "route id"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 191.0, 74.0, 22.0 ],
									"text" : "prepend get"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "clip", "" ],
									"patching_rect" : [ 50.0, 163.0, 93.0, 22.0 ],
									"text" : "t clip l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 221.5, 93.0, 22.0 ],
									"saved_object_attributes" : 									{
										"_persistence" : 1
									}
,
									"text" : "live.object"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 50.0, 132.0, 278.0, 22.0 ],
									"text" : "live.path live_set view highlighted_clip_slot"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 720.5, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 1 ],
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"midpoints" : [ 194.0, 578.0, 168.0, 578.0, 168.0, 435.0, 194.0, 435.0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 6 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-31", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 1,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "tap",
								"default" : 								{
									"fontname" : [ "Lato Light" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 746.0, 364.446617126464844, 128.5, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 114.14285714285711, 408.5, 62.0, 22.0 ],
					"text" : "s ---to_vel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 438.25, 514.0, 74.0, 22.0 ],
					"text" : "s ---clearcell"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 479.0, 64.0, 22.0 ],
					"text" : "s ---setcell"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-153",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1169.5, 36.0, 166.0, 33.0 ],
					"text" : "Sequencer"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-152",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1871.66666666666697, -64.0, 259.0, 60.0 ],
					"text" : "User Interfaces \n(for presentation mode)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 332.0, 148.0, 62.0, 22.0 ],
					"text" : "t b s"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-143",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1952.0, 222.0625, 114.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.04127037525177, 97.0, 66.75, 17.0 ],
					"text" : "MIDI mapping",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"hint" : "Select MIDI Mapping (See github page for more detail). Please set this before dropping MIDI files/folders. ",
					"id" : "obj-142",
					"maxclass" : "live.tab",
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 400.25, 148.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.04127037525177, 95.0, 78.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "strict", "greedy" ],
							"parameter_longname" : "live.tab[2]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.tab[2]",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.tab[2]"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-141",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -7.5, 77.371353149414062, 179.0, 52.0 ],
					"text" : "Press this! When you open this patch for the first time"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.254749, 0.632064, 0.682652, 1.0 ],
					"bgcolor2" : [ 0.117536, 0.116592, 0.144338, 1.0 ],
					"bgfillcolor_angle" : 269.577713564497685,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_color1" : [ 0.254749, 0.632064, 0.682652, 1.0 ],
					"bgfillcolor_color2" : [ 0.117536, 0.116592, 0.144338, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_pt1" : [ 0.504951, 0.278261 ],
					"bgfillcolor_pt2" : [ 0.5, 0.95 ],
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-137",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 138.871353149414062, 98.0, 22.0 ],
					"text" : "script npm install"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 520.435566663742065, 479.0, 75.0, 22.0 ],
					"text" : "route loaded"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-155",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1937.0, 169.628646850585938, 57.0, 28.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 620.664118707180023, 30.661492850585937, 48.0, 28.0 ],
					"text" : "random variation",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"activefgdialcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
					"activeneedlecolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-154",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1029.0, -69.067970275878906, 42.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 624.664118707180023, 73.467153284671525, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "noise range",
							"parameter_mmax" : 2.0,
							"parameter_shortname" : "noise",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.dial"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 970.0, -50.067970275878906, 47.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-146",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 970.0, -90.128646850585938, 57.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 620.664118707180023, 122.0, 37.0, 17.0 ],
					"text" : "interval",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-147",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 970.0, -69.067970275878906, 37.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 620.664118707180023, 134.03125, 37.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.1 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 2,
							"parameter_longname" : "shuffle[1]",
							"parameter_mmax" : 10.0,
							"parameter_mmin" : 1.0,
							"parameter_shortname" : "shuffle",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.numbox[15]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 888.5, -50.5, 69.0, 22.0 ],
					"text" : "metro 1000"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-150",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 888.5, -73.25, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 624.664118707180023, 56.26756106494674, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[7]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text[7]",
							"parameter_type" : 2
						}

					}
,
					"text" : "disabled",
					"texton" : "enabled",
					"varname" : "live.text[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "live.button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 888.5, -15.25, 29.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 656.664118707180023, 135.628419425292975, 17.0, 17.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "live.button",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.button",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.button"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 1.0, 0.509803921568627, 0.509803921568627, 1.0 ],
					"hidden" : 1,
					"id" : "obj-83",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 161.303234501347646, 670.0, 50.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 302.04127037525177, 101.0, 34.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 2,
							"parameter_longname" : "live.numbox[3]",
							"parameter_mmax" : 1000.0,
							"parameter_shortname" : "live.numbox",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.numbox[1]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 1.0, 0.509803921568627, 0.509803921568627, 1.0 ],
					"id" : "obj-123",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 285.0, 673.5, 50.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 302.04127037525177, 101.0, 34.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 2,
							"parameter_longname" : "live.numbox[14]",
							"parameter_shortname" : "live.numbox",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.numbox[14]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.25, 595.190475821495056, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-152",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 115.0, 100.0, 29.5, 22.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-151",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 115.0, 129.0, 61.0, 22.0 ],
									"text" : "hidden $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-149",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 61.0, 22.0 ],
									"text" : "hidden $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-153",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.5, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-154",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 211.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-155",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 115.0, 211.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 0 ],
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"source" : [ "obj-152", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"order" : 1,
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 0 ],
									"order" : 0,
									"source" : [ "obj-153", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 344.25, 666.5, 58.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"bgoncolor" : [ 0.0, 0.509803921568627, 0.509803921568627, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-144",
					"maxclass" : "live.tab",
					"num_lines_patching" : 1,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 344.25, 627.801587104797363, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 203.257372736930847, 132.134129426344373, 31.539682269096375, 26.952380657196045 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "Train", "Val" ],
							"parameter_longname" : "live.tab[1]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.tab[1]",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"varname" : "live.tab[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 273.666666666666629, 841.0, 89.0, 20.0 ],
					"text" : "Validation Loss"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 144.803234501347674, 841.0, 80.0, 20.0 ],
					"text" : "Training Loss"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 506.0, 275.0, 640.0, 693.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 212.0, 515.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 425.0, 86.0, 34.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 365.0, 55.0, 79.0, 22.0 ],
									"text" : "route training"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -4.0, 422.0, 77.0, 22.0 ],
									"text" : "prepend size"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -4.0, 76.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.0, 15.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 167.0, 35.0, 20.0 ],
									"text" : "reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 466.0, 119.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 85.0, 376.0, 29.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "float" ],
									"patching_rect" : [ 450.0, 290.0, 31.0, 22.0 ],
									"text" : "t i 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 422.0, 167.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 422.0, 261.0, 47.0, 22.0 ],
									"text" : "uzi 100"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-16",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 169.0, 119.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 85.0, 169.0, 169.5, 22.0 ],
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-13",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 71.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-10",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 235.5, 270.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 85.0, 270.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 422.0, 92.0, 22.0 ],
									"text" : "pack select 0 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 85.0, 203.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 85.0, 239.0, 92.0, 22.0 ],
									"text" : "counter 0 1 100"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 85.0, 509.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"midpoints" : [ 5.5, 232.0, 459.5, 232.0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 4 ],
									"midpoints" : [ 5.5, 232.0, 167.5, 232.0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 2,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 2 ],
									"midpoints" : [ 245.0, 320.5, 167.5, 320.5 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-17", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"midpoints" : [ 459.5, 352.5, 94.5, 352.5 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 2 ],
									"midpoints" : [ 471.5, 390.5, 167.5, 390.5 ],
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 5.5, 449.0, 94.5, 449.0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 2 ],
									"order" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 257.666666666666629, 645.0, 43.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p loss"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.483607888221741, 0.483681797981262, 0.483572363853455, 1.0 ],
					"id" : "obj-136",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 256.666666666666629, 716.0, 140.0, 119.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 239.30895984172821, 98.635036496350352, 99.285714507102938, 61.993610000000004 ],
					"setminmax" : [ 0.0, 200.0 ],
					"setstyle" : 1,
					"size" : 150,
					"slidercolor" : [ 1.0, 0.509803921568627, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1042.5, 188.871353149414062, 61.0, 22.0 ],
					"text" : "hidden $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1042.5, 161.682029724121094, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-126",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 808.5, -8.25, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1221.16666666666697, 204.5625, 22.0, 22.0 ],
					"text" : "t 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1221.16666666666697, 172.628646850585938, 34.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1033.5, 60.439323425292969, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-125",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 959.261903285980225, 458.5, 59.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1381.775167286396027, 58.128646419928998, 28.0, 17.0 ],
					"text" : "Type",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-124",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 959.261903285980225, 432.0, 60.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1381.775167286396027, 27.661493135257473, 48.0, 17.0 ],
					"text" : "Sequence",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"hltcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"id" : "obj-122",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1221.16666666666697, 405.0, 61.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1381.775167286396027, 42.89506977759325, 59.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "All Drums", "Kick", "Snare", "Closed Hihat", "Open Hihat", "Low Tom", "Mid Tom", "High Tom", "Clap", "Rim" ],
							"parameter_longname" : "live.menu[2]",
							"parameter_mmax" : 9,
							"parameter_shortname" : "live.menu",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1129.0, 163.067970275878906, 61.0, 22.0 ],
					"text" : "hidden $1"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"fontsize" : 10.0,
					"id" : "obj-116",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 1129.0, 87.939323425292969, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1380.04127037525177, 5.661493135257469, 51.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.menu[1]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.menu",
							"parameter_type" : 2
						}

					}
,
					"text" : "viewer",
					"texton" : "editor",
					"varname" : "live.toggle[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1129.0, 127.310676574707031, 29.5, 22.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 10.0,
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1673.5, 324.682029724121094, 60.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 847.132372736930847, 6.362908137939453, 62.0, 18.0 ],
					"text" : "seq division",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-69",
					"maxclass" : "live.tab",
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1569.0, 324.682029724121094, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 911.132372736930847, 6.362908137939453, 66.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "1", "2", "4" ],
							"parameter_longname" : "live.tab",
							"parameter_mmax" : 2,
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.tab"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 12.0,
					"id" : "obj-115",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2038.5, 28.371353149414062, 86.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 441.382372736930847, 79.846485137939453, 19.0, 21.0 ],
					"text" : "z",
					"textcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.0,
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 959.261903285980225, 384.5, 60.0, 17.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1338.04127037525177, 2.661493135257469, 46.0, 28.0 ],
					"text" : " MIDI Note",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 12.0,
					"id" : "obj-111",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2033.66666666666697, 105.439323425292969, 78.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.04127037525177, 119.0, 51.0, 21.0 ],
					"text" : "Console",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2040.666666666666742, 133.067970275878906, 67.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 199.257372736930847, 3.4375, 52.0, 21.0 ],
					"text" : "Training",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.74 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2178.5, 640.5, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 134.0, 179.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 175.91666666666697, 352.0, 197.0, 60.0 ],
									"text" : "everytime user changes MIDI mapping, a new rhtyhm pattern shoud be  generated to reflect the new mapping"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.916666666666515, 305.0, 86.16666666666697, 22.0 ],
									"text" : "t l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 88.5, 360.0, 83.0, 22.0 ],
									"text" : "s re_generate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 329.66666666666697, 98.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 294.66666666666697, 98.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 259.66666666666697, 98.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 226.0, 98.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 191.0, 98.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 156.0, 98.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 120.0, 98.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 85.0, 98.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 98.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-152",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.5, 225.257293701171875, 102.0, 22.0 ],
									"text" : "prepend nsub 8 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-153",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 294.66666666666697, 196.0, 102.0, 22.0 ],
									"text" : "prepend nsub 7 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-154",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 254.0, 167.0, 102.0, 22.0 ],
									"text" : "prepend nsub 6 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-149",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 171.5, 233.257293701171875, 102.0, 22.0 ],
									"text" : "prepend nsub 5 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-150",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 154.66666666666697, 199.0, 102.0, 22.0 ],
									"text" : "prepend nsub 4 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-151",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 141.0, 175.0, 102.0, 22.0 ],
									"text" : "prepend nsub 3 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 69.5, 225.257293701171875, 102.0, 22.0 ],
									"text" : "prepend nsub 2 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-136",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 52.66666666666697, 199.0, 102.0, 22.0 ],
									"text" : "prepend nsub 1 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-134",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 175.0, 102.0, 22.0 ],
									"text" : "prepend nsub 0 2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-155",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 39.999969701171835, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-156",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 39.999969701171835, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-157",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.0, 39.999969701171835, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-158",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.0, 39.999969701171835, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-159",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 187.0, 39.999969701171835, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-160",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 222.0, 39.999969701171835, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-161",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 254.0, 39.999969701171835, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-162",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 289.0, 39.999969701171835, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-163",
									"index" : 9,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 324.0, 39.999969701171835, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-164",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 42.916666666666515, 352.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-152", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-156", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-158", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-159", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-161", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-162", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-164", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2163.279167155425057, 940.0, 70.099996089935303, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 134.0, 179.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 112.0, 29.5, 22.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 50.0, 141.5, 29.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-125",
									"maxclass" : "newobj",
									"numinlets" : 10,
									"numoutlets" : 10,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 50.0, 244.5, 126.0, 22.0 ],
									"text" : "route 0 1 2 3 4 5 6 7 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 203.5, 78.0, 22.0 ],
									"text" : "pack 0 set 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-123",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 93.5, 156.5, 51.0, 22.0 ],
									"text" : "unjoin 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 53.25, 77.0, 40.0, 22.0 ],
									"text" : "uzi 9"
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 9,
										"data" : [ 											{
												"key" : 0,
												"value" : [ "bass_drum", 0 ]
											}
, 											{
												"key" : 1,
												"value" : [ "snare_drum", 1 ]
											}
, 											{
												"key" : 2,
												"value" : [ "closed_hihat", 8 ]
											}
, 											{
												"key" : 3,
												"value" : [ "open_hihat", 9 ]
											}
, 											{
												"key" : 4,
												"value" : [ "low_tom", 5 ]
											}
, 											{
												"key" : 5,
												"value" : [ "mid_tom", 6 ]
											}
, 											{
												"key" : 6,
												"value" : [ "high_tom", 7 ]
											}
, 											{
												"key" : 7,
												"value" : [ "hand_clap", 3 ]
											}
, 											{
												"key" : 8,
												"value" : [ "rim_shot", 2 ]
											}
 ]
									}
,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 93.5, 129.5, 159.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"precision" : 6
									}
,
									"text" : "coll seq_id_to_midi_vae"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-138",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 53.25, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-139",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 334.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-140",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 85.0, 334.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-141",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 120.0, 334.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-142",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 155.0, 334.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-143",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 190.0, 334.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-144",
									"index" : 6,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 225.0, 334.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-145",
									"index" : 7,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 260.0, 334.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-146",
									"index" : 8,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 295.0, 334.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-147",
									"index" : 9,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 330.0, 334.5, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 83.75, 105.0, 59.5, 105.0 ],
									"source" : [ "obj-119", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 2 ],
									"source" : [ "obj-123", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-139", 0 ],
									"source" : [ "obj-125", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-140", 0 ],
									"source" : [ "obj-125", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 0 ],
									"source" : [ "obj-125", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"source" : [ "obj-125", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 0 ],
									"source" : [ "obj-125", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-144", 0 ],
									"source" : [ "obj-125", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-145", 0 ],
									"source" : [ "obj-125", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"source" : [ "obj-125", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"source" : [ "obj-125", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-131", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"source" : [ "obj-138", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2178.5, 699.0, 62.499997913837433, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 9,
						"data" : [ 							{
								"key" : 0,
								"value" : [ "bass_drum", 0 ]
							}
, 							{
								"key" : 1,
								"value" : [ "snare_drum", 1 ]
							}
, 							{
								"key" : 2,
								"value" : [ "closed_hihat", 8 ]
							}
, 							{
								"key" : 3,
								"value" : [ "open_hihat", 9 ]
							}
, 							{
								"key" : 4,
								"value" : [ "low_tom", 5 ]
							}
, 							{
								"key" : 5,
								"value" : [ "mid_tom", 6 ]
							}
, 							{
								"key" : 6,
								"value" : [ "high_tom", 7 ]
							}
, 							{
								"key" : 7,
								"value" : [ "hand_clap", 3 ]
							}
, 							{
								"key" : 8,
								"value" : [ "rim_shot", 2 ]
							}
 ]
					}
,
					"id" : "obj-135",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 2163.279167155425057, 968.357293010562898, 159.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"precision" : 6
					}
,
					"text" : "coll seq_id_to_midi_vae"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2178.5, 669.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-112",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2226.66666666666697, 910.742706298828125, 43.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1345.241271244121435, 26.467152854014596, 31.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.numbox[13]",
							"parameter_shortname" : "live.numbox[5]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.numbox[13]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-100",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2226.66666666666697, 890.742706298828125, 43.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1345.241271244121435, 41.4671528540146, 31.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.numbox[12]",
							"parameter_shortname" : "live.numbox[5]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.numbox[12]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-98",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2226.66666666666697, 869.742706298828125, 43.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1345.241271244121435, 56.4671528540146, 31.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.numbox[11]",
							"parameter_shortname" : "live.numbox[5]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.numbox[11]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-97",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2226.66666666666697, 845.742706298828125, 43.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1345.241271244121435, 71.467152854014586, 31.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.numbox[10]",
							"parameter_shortname" : "live.numbox[5]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.numbox[10]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-96",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2226.66666666666697, 825.742706298828125, 43.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1345.241271244121435, 86.467152854014586, 31.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.numbox[9]",
							"parameter_shortname" : "live.numbox[5]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.numbox[9]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-90",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2226.66666666666697, 805.742706298828125, 43.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1345.241271244121435, 101.467152854014586, 31.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.numbox[8]",
							"parameter_shortname" : "live.numbox[5]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.numbox[8]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-87",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2226.66666666666697, 783.242706298828125, 43.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1345.241271244121435, 116.467152854014586, 31.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.numbox[7]",
							"parameter_shortname" : "live.numbox[5]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.numbox[7]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-73",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2226.66666666666697, 760.242706298828125, 43.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1345.241271244121435, 131.467152854014586, 31.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.numbox[6]",
							"parameter_shortname" : "live.numbox[5]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.numbox[6]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-62",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2226.66666666666697, 732.5, 43.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1345.241271244121435, 147.335765992700715, 31.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.numbox[5]",
							"parameter_shortname" : "live.numbox[5]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.numbox[5]"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-58",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 602.0, 550.78350555896759, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1614.5, 374.242706298828125, 60.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 104.04127037525177, 120.0, 64.0, 18.0 ],
					"text" : "Max Console",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1887.5, 717.0, 56.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1070.632372736930847, 6.862908137939453, 51.0, 17.0 ],
					"text" : "grid offset ",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 10.0,
					"id" : "obj-55",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1844.5, 718.0, 34.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1121.632372736930847, 7.862908137939453, 33.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 2,
							"parameter_longname" : "timeshift",
							"parameter_mmax" : 5.0,
							"parameter_shortname" : "timeshift",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "timeshift"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"hltcolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1125.5, 405.0, 84.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1381.775167286396027, 73.362223062264775, 59.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "All", "Pitch", "Velocity", "Duration", "Grid Offset" ],
							"parameter_longname" : "live.menu",
							"parameter_mmax" : 4,
							"parameter_shortname" : "live.menu",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1125.5, 426.0, 92.0, 23.0 ],
					"text" : "prepend mode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1566.5, 411.01458740234375, 105.0, 20.0 ],
					"text" : "reset every 2 bars"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1467.5, 227.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-80",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2040.666666666666742, 189.439323425292969, 62.0, 50.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 45.04127037525177, 40.420391639653772, 123.0, 28.0 ],
					"text" : "Drag and Drop MIDI files or folders",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 11.0,
					"id" : "obj-76",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2044.666666666666742, 163.067970275878906, 57.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 202.257372736930847, 49.920391639653772, 38.0, 20.0 ],
					"text" : "Model",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 632.0, 542.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 269.0, 259.0, 46.0, 22.0 ],
									"text" : "route 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 269.0, 232.0, 83.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "loadPath",
											"parameter_shortname" : "loadPath",
											"parameter_type" : 3
										}

									}
,
									"saved_object_attributes" : 									{
										"initial" : [ 0 ],
										"parameter_enable" : 1,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr loadPath",
									"varname" : "loadPath"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 81.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 123.0, 41.0, 22.0 ],
									"text" : "JSON"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 50.0, 100.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 74.0, 321.0, 57.0, 22.0 ],
													"text" : "tosymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 74.0, 347.0, 86.0, 22.0 ],
													"text" : "prepend name"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 74.0, 264.0, 105.0, 22.0 ],
													"text" : "$3 $1 $2 $4 $5 $6"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 74.0, 293.0, 231.0, 22.0 ],
													"text" : "sprintf model_%d%d%d_%d%d%d.model"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 111.0, 169.0, 31.0, 22.0 ],
													"text" : "time"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 74.0, 169.0, 32.0, 22.0 ],
													"text" : "date"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "bang" ],
													"patching_rect" : [ 50.0, 137.0, 67.0, 22.0 ],
													"text" : "t b b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 74.0, 231.0, 39.0, 22.0 ],
													"text" : "zl.join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "list", "list", "int" ],
													"patching_rect" : [ 74.0, 205.0, 59.0, 22.0 ],
													"text" : "date"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-29",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 56.0, 429.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-10", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-10", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 1 ],
													"source" : [ "obj-5", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 55.0, 142.0, 107.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p default_filename"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 81.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 296.0, 291.0, 111.0, 22.0 ],
									"text" : "prepend loadmodel"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 269.0, 179.0, 144.0, 22.0 ],
									"text" : "conformpath slash boot"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 269.0, 151.0, 72.0, 23.0 ],
									"text" : "opendialog"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 232.0, 114.0, 22.0 ],
									"text" : "prepend savemodel"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 55.0, 206.0, 144.0, 22.0 ],
									"text" : "conformpath slash boot"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "bang" ],
									"patching_rect" : [ 55.0, 178.0, 71.0, 23.0 ],
									"text" : "savedialog"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-61",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 81.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-62",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 61.0, 370.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"midpoints" : [ 489.5, 214.5, 278.5, 214.5 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 383.25, 323.182029724121094, 179.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p save_load",
					"varname" : "save_load"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"activetextcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 463.5, 292.371353149414062, 72.0, 22.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 289.757372736930847, 49.920391639653772, 41.0, 18.5 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_invisible" : 2,
							"parameter_longname" : "live.text[4]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "Load",
					"varname" : "live.text[4]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"activetextcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 383.25, 292.371353149414062, 72.0, 22.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 244.007372736930847, 49.920391639653772, 45.0, 18.5 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_invisible" : 2,
							"parameter_longname" : "live.text[3]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "Save",
					"varname" : "live.text[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"parameter_mappable" : 0,
					"patching_rect" : [ 438.25, 479.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 58.0, 154.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-5",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "n4m.monitor.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 132.0, 181.0, 400.0, 220.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 128.0, 65.0, 22.0 ],
									"text" : "route error"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 158.5, 128.0, 83.0, 22.0 ],
									"text" : "route success"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 50.0, 89.0, 236.0, 22.0 ],
									"text" : "route stdout terminated restarted restarting"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 185.0, 47.0, 22.0 ],
									"text" : "dict.iter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 219.0, 62.0, 22.0 ],
									"text" : "print node"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 539.0, 336.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 539.0, 379.0, 33.0, 22.0 ],
									"text" : "front"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 539.0, 411.0, 67.0, 22.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-80",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 1,
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 0,
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 372.0, 402.0, 77.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 114.0, 912.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 163.04127037525177, 120.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-191",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 114.0, 946.0, 90.0, 31.0 ],
					"text" : ";\rmax maxwindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 506.0, 275.0, 640.0, 693.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 212.0, 515.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 425.0, 86.0, 34.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 365.0, 55.0, 79.0, 22.0 ],
									"text" : "route training"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -4.0, 422.0, 77.0, 22.0 ],
									"text" : "prepend size"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -4.0, 76.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.0, 15.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 167.0, 35.0, 20.0 ],
									"text" : "reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 466.0, 119.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 85.0, 376.0, 29.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "float" ],
									"patching_rect" : [ 450.0, 290.0, 31.0, 22.0 ],
									"text" : "t i 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 422.0, 167.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 422.0, 261.0, 47.0, 22.0 ],
									"text" : "uzi 100"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-16",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 169.0, 119.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 85.0, 169.0, 169.5, 22.0 ],
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-13",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 71.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-10",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 235.5, 270.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 85.0, 270.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 422.0, 92.0, 22.0 ],
									"text" : "pack select 0 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 85.0, 203.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 85.0, 239.0, 92.0, 22.0 ],
									"text" : "counter 0 1 100"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 85.0, 509.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"midpoints" : [ 5.5, 232.0, 459.5, 232.0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 4 ],
									"midpoints" : [ 5.5, 232.0, 167.5, 232.0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 2,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 2 ],
									"midpoints" : [ 245.0, 320.5, 167.5, 320.5 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-17", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"midpoints" : [ 459.5, 352.5, 94.5, 352.5 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 2 ],
									"midpoints" : [ 471.5, 390.5, 167.5, 390.5 ],
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 5.5, 449.0, 94.5, 449.0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 2 ],
									"order" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 137.303234501347646, 640.083328247070312, 43.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p loss"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.483607888221741, 0.483681797981262, 0.483572363853455, 1.0 ],
					"hidden" : 1,
					"id" : "obj-91",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 108.666666666666657, 716.0, 140.0, 119.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 239.30895984172821, 98.635036496350352, 99.285714507102966, 61.993610354235585 ],
					"setminmax" : [ 0.0, 200.0 ],
					"setstyle" : 1,
					"size" : 150,
					"slidercolor" : [ 1.0, 0.509803921568627, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2091.0, 246.371353149414062, 50.0, 20.0 ],
					"text" : "all clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 536.916671752929688, 87.0, 22.0 ],
					"text" : "loadmess 150."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 688.0, -111.0, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "Y",
							"parameter_shortname" : "Y",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.numbox[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 508.0, -111.0, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "X",
							"parameter_shortname" : "X",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.numbox[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 135.0, 63.0, 22.0 ],
									"text" : "metro 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 100.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-125",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-126",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 217.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-121", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 0 ],
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 0 ],
									"source" : [ "obj-125", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 388.5, 479.0, 44.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-110",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1042.5, 230.0, 45.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1380.04127037525177, 55.531476279307554, 45.0, 17.0 ],
					"text" : "High Tom",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-109",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1042.5, 281.871353149414062, 42.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1380.04127037525177, 70.765052921643331, 42.0, 17.0 ],
					"text" : "Mid Tom",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-108",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1042.5, 298.0, 43.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1380.04127037525177, 84.998629563979108, 43.0, 17.0 ],
					"text" : "Low Tom",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1042.5, 266.992706298828125, 26.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1380.04127037525177, 40.297899636971792, 26.0, 17.0 ],
					"text" : "Clap",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-106",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1042.5, 247.992706298828125, 40.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1380.04127037525177, 25.064322994636033, 40.0, 17.0 ],
					"text" : "Rimshot",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-105",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1042.5, 315.0, 52.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1380.04127037525177, 100.232206206314856, 52.0, 17.0 ],
					"text" : "Open Hihat",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-104",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1042.5, 336.0, 58.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1380.04127037525177, 116.465782848650633, 58.0, 17.0 ],
					"text" : "Closed Hihat",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-103",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1042.5, 380.371353149414062, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1380.04127037525177, 129.69935949098641, 31.0, 17.0 ],
					"text" : "Snare",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-102",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1042.5, 359.5, 25.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1380.04127037525177, 145.932936133322158, 25.0, 17.0 ],
					"text" : "Kick",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 10.0,
					"id" : "obj-99",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2038.5, 56.189323425292969, 53.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 682.632372736930847, 6.862908137939453, 65.0, 18.0 ],
					"text" : "SEQUENCER",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 203.0, 215.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.0, 263.0, 90.0, 22.0 ],
									"text" : "r ---node_script"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 148.5, 133.0, 104.0, 22.0 ],
									"text" : "script npm update"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 156.0, 175.0, 217.0, 22.0 ],
									"text" : "script npm install @tensorflow/tfjs-node"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.5, 126.0, 98.0, 22.0 ],
									"text" : "script npm install"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 29.0, 100.0, 83.0, 22.0 ],
									"text" : "script npm init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.5, 102.0, 65.0, 22.0 ],
									"text" : "script stop"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-93",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 331.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "tap",
								"default" : 								{
									"fontname" : [ "Lato Light" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 11.0, 273.682029724121094, 61.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 114.14285714285711, 292.371353149414062, 32.0, 22.0 ],
					"text" : "train"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1937.0, 207.0625, 114.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.04127037525177, 77.420391639653786, 94.0, 17.0 ],
					"text" : "# of bars in train. data",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"activetextcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"fontsize" : 12.0,
					"id" : "obj-75",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 114.14285714285711, 243.0, 75.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 198.757372736930847, 26.467153284671532, 75.75, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_invisible" : 2,
							"parameter_longname" : "live.text[2]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "Start",
					"varname" : "live.text[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 261.666666666666629, 276.182029724121094, 65.0, 22.0 ],
					"text" : "clear_train"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"activetextcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-68",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 261.666666666666629, 246.682029724121094, 64.0, 18.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 139.79127037525177, 7.5, 43.25, 18.705746782957192 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_invisible" : 2,
							"parameter_longname" : "live.text[1]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "Clear",
					"varname" : "live.text[1]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"activetextcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-67",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 203.303234501347674, 246.682029724121094, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 289.757372736930847, 27.467153284671532, 50.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_invisible" : 2,
							"parameter_longname" : "live.text",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "Stop",
					"varname" : "live.text"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"id" : "obj-65",
					"ignoreclick" : 1,
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 338.0, 488.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 133.04127037525177, 77.420391639653786, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 2,
							"parameter_longname" : "live.numbox",
							"parameter_mmax" : 127000000.0,
							"parameter_shortname" : "live.numbox",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.numbox"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 145.803234501347674, 514.0, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2040.666666666666742, 271.257293701171875, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 282.757372736930847, 73.467153284671525, 18.0, 20.0 ],
					"text" : "/",
					"textcolor" : [ 0.92156862745098, 0.92156862745098, 0.92156862745098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 639.5, 64.0, 22.0 ],
					"text" : "epochs $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"cantchange" : 1,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.160092632690301,
					"id" : "obj-51",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 88.666666666666657, 514.0, 52.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 252.007372736930847, 73.467153284671525, 30.0, 19.0 ],
					"textcolor" : [ 1.0, 0.509803921568627, 0.509803921568627, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 88.666666666666657, 479.0, 76.136567834681017, 22.0 ],
					"text" : "unpack 0 0"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1482.0, 803.0, 138.0, 38.0 ],
					"text" : "Chose MIDI Output\n"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"fontsize" : 10.0,
					"id" : "obj-25",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 1467.5, 260.75, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 748.632372736930847, 7.862908137939453, 51.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.menu[3]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.menu",
							"parameter_type" : 2
						}

					}
,
					"text" : "disabled",
					"texton" : "enabled",
					"varname" : "live.toggle[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1319.0, 756.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1319.0, 717.0, 92.0, 22.0 ],
					"text" : "zl slice 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1467.5, 424.0, 99.0, 22.0 ],
					"text" : "count_for_me 96"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 9.0,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1556.5, 295.0, 57.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 984.632372736930847, 6.862908137939453, 35.0, 17.0 ],
					"text" : "shuffle",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 10.0,
					"id" : "obj-35",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 1513.5, 296.0, 34.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1024.632372736930847, 7.862908137939453, 33.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.1 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 2,
							"parameter_longname" : "shuffle",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "shuffle",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"varname" : "live.numbox[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "bang", "int" ],
					"patching_rect" : [ 1467.5, 384.5, 108.0, 22.0 ],
					"text" : "shuffle_metro 0.25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 1392.0, 763.0, 252.0, 22.0 ],
					"text" : "makenote_for_me @velocity 1 @timeshift 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1392.0, 811.0, 49.0, 22.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-84",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 821.500000000000227, 965.4375, 63.0, 57.0 ],
					"text" : "Let other input MIDI messages pass through this patch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-85",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 764.000000000000227, 948.9375, 55.0, 18.0 ],
					"text" : "MIDI thru"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 770.500000000000227, 996.4375, 49.0, 20.0 ],
					"text" : "midiout"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 770.500000000000227, 968.9375, 42.0, 20.0 ],
					"text" : "midiin"
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 0.898039, 0.898039, 0.898039, 0.0 ],
					"border" : 1,
					"id" : "obj-101",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1987.66666666666697, 333.5, 120.0, 72.0 ],
					"proportion" : 0.39,
					"prototypename" : "M4L.square-transp",
					"rounded" : 16
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.303234501347674, 273.682029724121094, 31.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 98.0, 144.0, 72.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 181.0, 78.0, 22.0 ],
									"text" : "bgcolor 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 130.0, 181.0, 91.0, 22.0 ],
									"text" : "bgcolor 255 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 144.0, 44.0, 22.0 ],
									"text" : "sel 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 80.0, 22.0 ],
									"text" : "zl.ecils 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-40",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-42",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 86.666687000000024, 263.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 291.166666666666629, 514.0, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p color_text"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Ableton Sans Light",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 285.5, 550.78350555896759, 164.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.04127037525177, 140.868613138686129, 142.0, 18.0 ],
					"textcolor" : [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2033.66666666666697, 79.75, 80.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.04127037525177, 3.4375, 90.0, 21.0 ],
					"text" : "Training Data",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.74 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2025.0, 4.371353149414062, 75.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.132372736930847, 2.034670140621436, 68.0, 21.0 ],
					"text" : "Generation",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.74 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 243.0, 403.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 141.0, 358.0, 232.0, 20.0 ],
									"text" : "TODO: any better way in JavaScript?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 141.0, 336.0, 232.0, 20.0 ],
									"text" : "to avoid overloading the generation model"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-14",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 493.0, 114.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-13",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 442.0, 114.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 389.0, 17.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 442.0, 83.0, 121.0, 22.0 ],
									"text" : "route range speedlim"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 389.0, 50.0, 72.0, 22.0 ],
									"text" : "patcherargs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 336.0, 80.0, 22.0 ],
									"text" : "speedlim 300"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 343.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 278.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 243.0, 247.0, 22.0 ],
									"text" : "pack 0. 0. 0.5 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 202.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 282.0, 103.0, 22.0 ],
									"text" : "prepend generate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 126.0, 181.0, 41.0, 22.0 ],
									"text" : "/ 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 181.0, 49.0, 22.0 ],
									"text" : "/ 100."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-17",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-18",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 126.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-19",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 381.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"midpoints" : [ 451.5, 154.0, 89.5, 154.0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 1 ],
									"midpoints" : [ 451.5, 154.0, 157.5, 154.0 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"midpoints" : [ 502.5, 319.5, 120.5, 319.5 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 352.5, 215.5, 59.5, 215.5 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 508.0, 210.030707955360413, 177.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p @speedlim 300 @range 200."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 11.0,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2040.666666666666742, 247.257293701171875, 38.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 202.257372736930847, 70.967153284671525, 38.0, 20.0 ],
					"text" : "epoch",
					"textcolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2094.5, 271.257293701171875, 30.0, 20.0 ],
					"text" : "loss"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.483607888221741, 0.483681797981262, 0.483572363853455, 1.0 ],
					"bottomvalue" : -600,
					"color" : [ 0.964705882352941, 0.992156862745098, 0.996078431372549, 1.0 ],
					"elementcolor" : [ 0.345098039215686, 0.345098039215686, 0.345098039215686, 1.0 ],
					"id" : "obj-22",
					"leftvalue" : -600,
					"maxclass" : "pictslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 508.0, -62.0, 199.0, 196.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 385.132372736930847, 26.064323425292969, 131.5, 134.564323425292969 ],
					"rightvalue" : 600,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -200, -200 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "pictslider",
							"parameter_shortname" : "pictslider",
							"parameter_type" : 3
						}

					}
,
					"topvalue" : 600,
					"varname" : "pictslider"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 10.066682202859146,
					"id" : "obj-10",
					"maxclass" : "number",
					"maximum" : 1000,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"parameter_mappable" : 0,
					"patching_rect" : [ 21.0, 582.916671752929688, 56.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 298.257372736930847, 73.467153284671525, 42.0, 21.0 ],
					"textcolor" : [ 1.0, 0.509803921568627, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 332.0, 178.682029724121094, 105.0, 22.0 ],
					"text" : "pack midi s 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 332.0, 117.0, 133.0, 22.0 ],
					"text" : "conformpath slash boot"
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.915970146656036, 0.395096808671951, 0.410995662212372, 1.0 ],
					"id" : "obj-41",
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 332.0, 54.0, 137.0, 51.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.04127037525177, 31.513914929689285, 137.0, 43.906476709964494 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 10,
					"numoutlets" : 10,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 85.5, 447.5, 438.0, 22.0 ],
					"text" : "route matrix_output epoch loss val_loss status train_bars training matrix_clear zs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 277.5, 402.0, 79.0, 22.0 ],
					"text" : "route running"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 196.628646850585938, 66.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 85.5, 374.0, 211.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 1,
						"defer" : 0,
						"node_bin_path" : "",
						"npm_bin_path" : "",
						"watch" : 0
					}
,
					"text" : "node.script rhythmvae.js @autostart 1"
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.577713564497685,
					"bgcolor" : [ 0.310923963785172, 0.310971558094025, 0.310901194810867, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.67843137254902, 0.67843137254902, 0.67843137254902, 1.0 ],
					"id" : "obj-167",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2033.66666666666697, 358.5, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 617.632372736930847, 25.661492850585937, 59.031745970249176, 136.402829859378556 ],
					"proportion" : 0.39,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 764.98541259765625, 86.053382873535156, 37.0, 22.0 ],
					"text" : "close"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 727.98541259765625, 54.371353149414062, 44.0, 22.0 ],
					"text" : "sel 1 0"
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.577713564497685,
					"background" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.964705882352941, 0.964705882352941, 0.964705882352941, 0.42 ],
					"id" : "obj-134",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2017.66666666666697, 340.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 35.041270148754123, 0.0, 157.153602000000006, 166.0 ],
					"proportion" : 0.5,
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.577713564497685,
					"background" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.964705882352941, 0.964705882352941, 0.964705882352941, 0.42 ],
					"id" : "obj-133",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2002.66666666666697, 325.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 193.194873148754112, 0.0, 152.875, 166.0 ],
					"proportion" : 0.5,
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.577713564497685,
					"background" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.964705882352941, 0.964705882352941, 0.964705882352941, 0.42 ],
					"id" : "obj-114",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1987.66666666666697, 310.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 347.132373148754141, 0.0, 1097.971397999999908, 166.0 ],
					"proportion" : 0.5,
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 727.98541259765625, 114.371353149414062, 51.0, 22.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 727.98541259765625, 86.053382873535156, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"background" : 1,
					"data" : [ 76742, "png", "IBkSG0fBZn....PCIgDQRA..dDC..L.5HX....vhEm+p....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6c2zijccV.G+T2ptUWU6tl51U0S2ZhsSFm3wFrRLwAjHiHhDPJgHfEQJxRrKaXE6XAeB3CP1.6PHw5rgEFT3Eo.HjLHgvPhjAaGviQieKia6wddeFOSyhQXICN1UObl6Kmme+9.blistUU2pq6+yynSU8MNJQpY8rzSc1Oa1Vuevy77YasXyb5ybP5I9heprrV25V2N8W8m9CyxZ0W8q7a9DYasdtm8+LcwCu9+uWmS+n6mdnO2xLriRopQiS+ce++8rrV8U+5O8Sks05O+68bYas5i9hm8gS6tdQVVqW9Ediz4do2NKq0W4W6LYYcRoT5u+u3kx1Z0G80+VOYptdbVVqCuvUR+i+MuXVVK1b+xeyelzcN51YYsN++w6lN2O9mjk0pO5W3q7noYOvnrrVQ3yC6i9E+ZOVZ8IefrrVk96Yky6+Kkx2mG9a7ze4zodnlrrVu94uX5O668Ojk0pOJmeOrTp7uuzbd+e45yC+7O0ij9xesGOC6nT5V27No+j+v+xrrV8U476g87+KuV5buzals0iMyu8u62Laq0ez286ms0BhpEquSZxz7rVW5sGkd+ajmuKEatacz6jNJ89YYslLZYpJkoKH5gluyQoYKxyOI26eyT5RGVkk0xqC2b2NckzsO5pYYsFkljpGsaVVq9pcO0cx1Z8Nuddtduu95v9padzEx1ZMczIy1ZwlqO95Pf35zO1doG4w1KKq0K+huU5bu3akk0hM2IO01o8N07rrVu0qeszEd87bu08QMq2N8Tm8Sms06G7L4426Mm2O70uznz0tb498+RoT5m8KsNaq0+1+7gYYc5qeuz69bYkmee7m6Y+uRW7v77ei8w6Gtu98R+Lm4DosWTmk05bu36kt1kuUVVq932KMmed3UuzsRuxK8dYYs5q+M95iuNrupu92ZuO94g8U80WGxlqu94grYzC1vmdvNdzC1vmdv1b5Aa3SOXCe5AayoGrgO8fs4zC1vmdvNdzC1vmdvF9zCFzu32Fa3qu9aT2G0Wede75vMWe84tqupO979zWecXeUe74tiim93qCAhK8fM7oGrMmdvJC8wm+8952KUOXat952Ksu97u2G+do5A63oO95v9p95eq893mG1W0WecHat95mGxlQOXCe5A63QOXCe5AayoGrgO8fM7oGrMmdvRoIc8FnuXxzwoCNU99CqP6a6smlt10tVVVq4yyyeT49rbd89jouRVVmYaWmN7B44l+VexUYYc5yx006QvtqWjsq4eyW6cxx5jRorc8dDTWONaWyu8Nka7C8Y24namsq4ms8rrrN8UylOIc3ExyO7dD97v9ns2Ie2WZo+dV479+xoSzLOc4KekrsVkrb98vhfbd8dt97vcNwrrc89N6jmGHw9rbd891aW1uGeeUttdG..........n6oGrgO8fc7nGrgOO2saN8fM7oGrgO8fs4zC1vmdv1b5Aa3SOXGO5Aa3SOXCe5AC..........JG5Aa3SOXGO5Aa3yyc6lSOXCe5Aa3SOXaN8fkRUc8F........................................t+vPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.......................................EJCwX.......................................JTFhw.......................................TnLDiA......................................nPYHFC......................................PgxPLF......................................fBkgXL.........CPUiG00aAn0TW6wafXw6wC..............PYQq.DI5Ainw6wC.........CEdpN.........X.5jmZ6tdK.sll8l4fqfPoY0Vc8V................xH8fQjnGLhF8fA.........CEdhN.........X.Z17woYymz0aCn0zr2rtdK.slUGLuq2B...............PFoGLhF8fQjnGL.........XnvPLF........fApkq2pq2BPqw06DI0SqRy2otq2F...............PFoOFhDWuSjnGL.........XnvPLF......HrpFOJMa9jtda.slEMS65s.zZhRnuMh3m.odZkOKiPYWuGO.............eH5AinwyPOQhdvfxidvHZzCF.........LDXHFC......DVKZllFMdTWuMfVQ03QoUmbVWuMfVy58iw06UiGkVJpYBjkqb8NwwhlooJeeE.............9.5AiHQOXDM5ACJS5AiHQOX.........vPfgXL......PXsJHAMCoTJ0HxWBj55pzhloc81n0302DIh3mHoZ7nP84Y.............7IQOXDI5EgHQOXP4ROXDI5AC.........FBLDiA......Bo55pzr4S55sAzZVcv7tdK.sll8h0gRz1KpS009oeINbPsPj3f1C............f6ROXDM5AiHQOXPYSOXDI5AC.........567jKA......DRB3mHY9N0o5o9YgHNVtNdAsGsCpChM2GGQxr4SbX6A............PxyQLwhdvHZzCFT1bebDI5AC.........567zIB......DRMALnYhqcc8NAxhlog7PZIhGTGDW0SqRy2otq2FPqw6wC............fdvHVzCFQhdvfxmdvHZ7d7.........PeV7dZs.......Bukq2JUMdTWuMfVQ03QoEMS65sAzZVtJlg8VOsxq0ITbfLQj3.2C............H5zCFQhdvHZzCFDC5AiHQOX.........PelgXL......P3zDzflIlVzL0gzBgQccrO3Fh5A1AwjCgLhjpwiRKcvU.............DX5AiHQOXDI5AymuQbnGLhD8fA.........8YFhw.......gRccUZ6E0c81.ZMq1eVWuEfVSjOvJRo69e+009IfINh9q4IVbv6A............DU5AinQOXDIQuMD8fQzD8WySrnGL.........nuxSrD......Pnr5f4c8V.ZMylOIMa9jtda.sFuGuH9IVbvLQjr8hZGLQ.............gjVAHRzCFQi2iWOXDK5AiHQOX.........PekeMa......fPoY8Vc8V.ZMh4kHY9N0o5o94OcvcPj3vYhnw6wC............DQ5AiHQOXDI5A6tzJ.QhdvHZ7d7.........PejmZK......fvXQyzT03Qc81.ZEUiGkVzLsq2FPqYWGJQoTJkpmVkluScWuMfViCnIhD2aG............PznGLhD8fQznGr6ROXDM5AiHw81A.........8QFhw.......gwxUBZl3vgzBQR03QokNzJ9.N.OHRDwOQR8zJWyC............DJ5AiHQOXDI5A6CSOXDIZigHQOX.........PejgXL......PHTWKvKhkU6Oqq2BPqowgRzGxx0a4PqgvvgVCQiChO............fnPOXDM5AiHQOXeX5AiHQOXDM5AC.........5aLDiA......Bgl8DvOwQccUZ17Ic81.ZMqNXdWuE5cbPMQj3fqgHYQyzTcsG2G............fxmdvHRzCFQidv9+ROXDI5AiHQOX.........PeieEa......fPX4ZwLRbHfehj46Tmpm5m87+sU66vZh3X6E0h3mPwASD............PDnGLhD8fQjnGrOZ5AiHQOXDM5AC.........5S7Ta..Yyi+Edvz9epkc81.ZMeoeoOaWuEfViq2A..F5VzLUPyDJMNjVHP1006ejlMeRZ17Ic81.ZMNvlHRb8N.......jK5AinQeLDItdG..XnSOXDM5AiHQOXezzCFQi9XHRb8N.......jK5AinQeLDIs406dBcAfr5gdj0c8V.ZMSldTWuEfViq2A..F5VtRPyDGKWuUpZ7ntda.shpwiRKcnU7S0p8m00aAn0rnYZWuEfVS8zpz7cp65sA.......THzCFQh9XHRb8N..vPmdvHRzCFQhdv93oGLhD8fQjnGL.......HmzCFQh9XHRZyq2MDiAfrxMsQjb3ENrq2BPq4l23FoS+n620aC...tmTWWIhQBkFGRKDHd+8Od9+ODI0ScOeDK65PaB.......xD8fQjnGLhD8fA..LjoGLhF8fQj382+34++PjnGLhF8fA.......4hdvHRzCFQRa1ClgXL.jUtoMhj29vKJheBkS9fmnq2B...bOQ7hDI00UosWT20aCn0rZ+Yc8VnWqZ7nzRQMSfrzA2DAxx0akpFOpq2F.......PAPOXDI5AinQOX...CU5AiHQOXDM5A6imdvHZzCFQhdv.......fbQOXDI5Ainos5AyPLF.xJ2zFQiH9IRN5na10aA...tmr5f4c8V.ZMtdmHY17IoYymz0aiduFQ7SfrnYZpt1iAAwgCnO.......HGzCFQidvHRzCF..vPk9XHRb8NQhdv1L5AiHQOXDM5AC.......xA8fQznGLhj1pGLOEWPg5o+Ne8zm9y7S+FE+7+7mNa+aclG6Lo+3+fmI8puxOIaqICam7AOQ5b+XWOPLHhehjW6UeitdK...vw17cpS0SEtHwQyZwoSbrZ+Yc8VXPX6E0o55pzst0c55sBzJZ1aV5Bu9U65sAzJVs+rz6d3M55sA.......T.zCFQhdvHRzCF..vPjdvHZzCFQhdv1L5AinQOXDI5AC.......xE8fQjnGLhj1pGLCwXnP8a8c9Foy9UexV6eu+5m4exPLlOfaZiHQD+DIW6pWO83egGN8B+nWsq2J...rw1U.+DHKZllpFOpq2FPqnZ7nzhloc81XvX0AySu44uRWuMfVwx0a4PqfvX17IoYymjt90d+tdq........Cb5AiHQOXDI5AC..XHROXDI5AiHQOXGO5AiHQOXDI5AC.......xE8fQjnGLhj1pGrp6qqN.DRtoMhj6dSaOXWuMfVSydy65s....arpwiRKcnUPfrbkq2INbHsb7z3yCIPpmVkluScWuMfVyp8m00aA.......n.nGLhD8fQznGL..fgD8fQznGLhD8fc7nGLhD8fQznGL.......HGzCFQhdvHZZidvlbe+eAJNOwO2ijV1rnU925cu3kRO++5K2J+aAjO28l1d3zK7id0tdq.sBQ7Sjbiab0tdK...vFqQ.+DH00UoEMS65sAzZDn6wS03QoEMSSW5h2rq2JPqX20akt1kuUWuMfVwhloopyOJcmaeTWuU.......fAL8fQznGLhD8fA..LjnGLhD8fQznGriG8fQznGLhD8fA.......4fdvHZzCFQRazClgXLGa+9e2emzY+pOYq7u0y929CSe6e0euV4eKf7xMsQjHhehjW4kOe5ANw1oq7dWuq2J...7IZ0A96SPbzrm.9INlMeRZ1b+LmGWKWskCsBBikq2J8Fm+Jh3mP3+4fI5cO7Fc8VA.......F3zCFQhdvHRzCF..vPhdvHRzCFQhdvt2nGLhD8fQjnGL.......HWzCFQhdvHRZidvptusx.Pn4l1HRt6MsILDhiO2iePWuE...3Sz7cpS0S8m.m3X45s55s.zZb898lEMSS009rQhilUduBhCWuC.......4fdvHRzCFQidv...FBzCFQi9XHRb898F8fQznOFhDWuC.......4fdvHRzCFQy86dv7TIA.2W3l1HZDwOQx1Klz0aAf+a169KD677.+N9iFMy3Yj7n43QxyrXIirQNqZWhctHzBdKDCawI8hktaYwMTBaLTZgtsD1Rk261lrsPJTLrgbWuxEh6EEJNWU5UKF5MsDbXKrdgFOFKczeNRJZxQdz3Qi9yIF0Kb1lnXKqQy4879bl2ee9bWv1x+b33wOuZluuO..7P8DBZlfrTu48RZgnzyWieOq2w76aO4X4i4qUPNNzRy4ESD.......L1zCFoQOXjD8fA..refdvHI5AiznGr8N8fQRzCFIQOX.......PSPOXjF8fQRlz8fo1Lh2e6u3yU9S+teqO8ef+qM6ee9e++7up7G767mzr+hBS4N0oWq7W8Nmu1y.ZEh3mjr0V2n1S...fOWybvCTVp270dFPqY4UDkK4X4i9XkYN3Ap8L12Z4i9XkMtxN0dFPqXgEmsrvhyVt8s940dJPqXk0Vr7SuzMq8L.......f84zCFIQOXjD8fA..LsSOXjF8fQRzC13QOXjD8fQZzCF.......zDzCFIQOXjjIcOXyLQ+UG.hlCsQRDwOI4JCtVY0mZ4ZOC...dfVp27BZlXL2by3kzBQomWRKik4lelxhO9b0dFPqYkUWn1S.ZM8Np+aj.......v3SOXjD8fQRzCF..vzN8fQRzCFoQOXiG8fQZzCFIQOX.......PSPOXjD8fQRlz8f4RLF.lXbnMRhH9IMm3YOZsm....OPhSjjz6X97N4Xt4lobnk7BWXb8DhZlf3kYFIYlCd.uLy.......fwldvHI5AiznGL..foY5AijnGLRhdvZF5AijnGLRhdv.......flfdvHI5AizLI6AykXL.Lw3PajFQ7SRlc96U6I...vmoEVb1xBKNasmAzZVV74DjUVawZOgNgkO5iIhehgH9IMKuhyFB.......iG8fQZzCFIQOX...SqzCFoQOXjD8f0LzCFIQOXjF8fA.......iK8fQZzCFIYR1ClKwX.Xhxg1HIh3mjboKLn1S...fOSqr5B0dBPqYwGetxby6a0C4nmWRKMldhZlf3y6jjk5MeYt4b9P.......X7nGLRhdvHI5AC..XZkdvHI5AiznGrli9XHI97NIQOX.......PSPOXjD8fQRlj8f46TM.LQ4PajjgaLr1S.ZM2ZmaWdlma0ZOC...tOybvCTVp270dFPq4IDvOAY4i9XkYN3Ap8L5LV9X95GjiCszbh3mnz6XdQ9A.......iG8fQRzCFIQOX...SizCFoQOXjD8f0rzCFIQOXjF8fA.......iK8fQRzCFIYB4.JNn...H.jDQAQU1ClexL.fIJGZijb8gaJhehxSd7iT6I...v8YodyKnYhwLG7.kk8RqffrzxdoD0jVXwYKKr3r0dFPqYk0Vr1S.ZMNiH.......LtzCFIQOXjF8fA..LsQOXjD8fQZzCVyROXjF8fQRbFQ.......XboGLRhdvHMSpdvbIFC.STNzFoQD+jj6cu6V6I...v8YkUWn1S.ZM8VQLhji4lalxR87Rqno4+tIIomH9IHyM+LkEe74p8L.......f8wzCFoQOXjD8fA..LswOW6jD8fQRzC1jg+6ljD8fQRzCF.......LtzCFoQOXjjIUOXtDiAfINGZijHheRxG798q8D...3+u4lalxBKNasmAzZVYsEq8DfVSui4kqvjvR8luLyAOPsmAzJl4fGnrrWbEDjmvm2A......fwjdvHI5AijnGL..foI5AiznGLRhdvlLzCFIQOXjF8fA.......iK8fQRzCFIYR0ClKwX.Xhyg1HIWdvUq8DfV0oe9iW6I...PoTDvOYYwGetxby6awC4Pn4SFybvCTVp270dFPqYok84cxwxG8w7hIB.......FK5AijnGLRidv...lVnGLRhdvHM5AaxPOXjF8fQRzCF.......LtzCFIQOXjlIQOX9IZD.l3bnMRxs141h3mnz6XBCD..X5POAMSPdBedmfrTu48RZYBZkUWn1S.ZMK0a9xby4qmPN5shyLB.......6c5AijnGLRidv...lVnGLRhdvHI5AaxROXjD8fQZzCF.......LNzCFIQOXjlIQOX9Ix..l3bnMRiH9IIezGsYsm....kkO5iUl4fGn1y.ZEybvCTV1KsBBxxBtchZgEmUD+DkdGyKpExwJq46WE.......r2oGLRidvHI5AC..XZfdvHI5AiznGrIK8fQZzCFIQOX.......v3POXjF8fQRlD8f4m.I.nU3Pajj6bmcp8DfVyUFbsxgOhePuA..pqdBZlfrTu4q8DfVybyMiOy2BD0LIwK9IRxbyOSYgEms1y........1GSOXjD8fQRzCF..vz.8fQRzFCIQOXsC8fQRzCFIQOX.......v3ROXjD8fQRlD8f4RLF.ZENzFI47m6Rh3mnbpSuVsm...PvlatYJGZo4p8LfVyJq52yAxQui4y6sgdh3mfL27dY3PVb1Q.......XbnGLRhdvHM5AC..nlzCFowOSujD8f0NzCFIQOXjFmcD.......FG5AijnGLRSS2ClKwX.nU3PajFQ7SRNzRyV6I...DrUVawZOAn0rvhyVVXQOCF4XYuLEZEybvC3+ulnrzxdoUPNVp27kYN3Ap8L.......f8ozCFoQOXjD8fA..TS5AijnGLRiFkZG5AiznGLRhdv.......fwgdvHM5Aijzz8f4RLF.ZMNzFIQD+jjMt1F0dB...AqmHaIHqrpeH.HGK93yUladeqLaKh3mjr7QeLQ7SLl4fGnrTOeMd.......XuSOXjD8fQRzCF..PMoGLRhdvHI5AqcoGLRhdvHI5AC.......FW5AijnGLRRS2CleRu.fViCsQRDwOI45C2rr5SsbsmA..PfVp27BNjXH3PRyS3kRTqZodyWlaNeqiIG8VwWigb3EeF.......LNzCFIQOXjD8fA..TK5AijnGLRidvZW5AiznGLRhdv.......fwgdvHI5Aijzz8f4m7H.n0r0V2n1S.ZMh3mzbhm8n0dB...AZYwFRP7RZgjLyAOPYYuzJZcy9XGr1S.ZMdQPQRVXQ+fjB.......6c5AijnGLRidv...pA8fQRzCFIQOX0gdvHI5AijnGL.......XbnGLRhdvHMMYOXtDiAfVyUFbMGZinHheRxryeuZOA..fvL2byH1PhxJqtPsm.zZ54kRD.........vTA8fQZzCFIQOX...sM8fQZzCFIQOX..........SGzCFoQOXjjlrGLWhw.Pqxg1HIh3mjboKLn1S...HL8Nl.9IGKr3rkEVb1ZOCn0rxZKV6I..........vufdvHI5AijnGL..f1ldvHI5AiznGL.........foG5AijnGLRRS1ClKwX.nU4PajDQ7SRt0N2t7LO2p0dF...A4POt.9IGK0a9ZOAnUM279VXB.........LsPOXjD8fQRzCF..PaSOXjD8fQZzCF.........vzC8fQRzCFIoI6AyOwW.PqZ3FCq8DfViH9IMO4wORsm................zfzCFIQOXjF8fA..............P2hdvHI5AizzT8f4RLF.ZUWe3lNzFQQD+jj6cu6V6I................MH8fQZzCFIQOX...............zsnGLRidvHIMUOXtDiAfVmCsQRDwOI4Cd+90dB...............PCSOXjD8fQRzCF...............cO5AijnGLRRS0ClKwX.n04PajDQ7SZN8ye7ZOA...............nAoGLRhdvHM5AC..............ftE8fQRzCFooI5AykXL.z5bnMRiH9II8N1h0dB...............PCROXjF8fQRzCF...............cK5AiznGLRRSzClKwX.nJbnMRhH9IIezGsYsm................zvzCFIQOXjD8fA..............P2idvHI5AijzD8f4RLF.pBGZijHheRxUFbsxgOxB0dF...............PCROXjD8fQRzCF...............cO5AijnGLRRSzClKwX.nJbnMRhH9IMm5zqU6I................MH8fQRzCFoQOX...............zsnGLRhdvHMiaOXtDiAfpvg1HMh3mjbnkls1S................ZP5AiznGLRhdv...............naQOXjF8fQRF2dvbIFC.UiCsQRDwOIYiqsQsm................zvzCFIQOXjD8fA..............P2idvHI5AijLt8f4RLF.pFGZijHheRx0GtYY0mZ4ZOC...............nAoGLRhdvHI5AC..............ftG8fQRzCFIYb6AykXL.TMNzFIQD+jlS7rGs1S................ZP5AijnGLRidv...............naQOXjD8fQZFmdvbIFC.UiCsQZDwOIY14uWsm................zfzCFoQOXjD8fA..............P2hdvHM5AijLN8f4RLF.pJGZijHheRxktvfZOA...............ngoGLRhdvHI5AC..............ftG8fQRzCFIYb5AykXL.TUNzFIQD+jjasysKOyysZsmA...............zfzCFIQOXjD8fA..............P2idvHI5AijLN8f4RLF.pJGZijHheRySd7iT6I................MH8fQRzCFoQOX...............zsnGLRhdvHM60dvbIFC.UkCsQZDwOI4d26t0dB...............PCROXjF8fQRzCF...............cK5AiznGLRxdsGLWhw.P04PajDQ7SR9f2uesm................zvzCFIQOXjD8fA..............P2idvHI5AijrW6AykXL.TcNzFIQD+jlS+7Gu1S................ZP5AijnGLRidv...............naQOXjD8fQZ1K8f4RLF.pNGZizHheRxS7jKT6I................MH8fQZzCFIQOX...............zsnGLRidvHI6kdvbIFC.SEbnMRRuisXsm.zZ1ZqaT6I................ML8fQRzCFIQOX...............z8nGLRhdvHI6kdvbIFC.SEbnMRxG8QaV6I.slqL3ZkCejEp8L...............fFjdvHI5AijnGL...............5dzCFIQOXjj8ROXtDiAfoBNzFIQD+jlSc50p8D...............fFjdvHI5AiznGL...............5VzCFIQOXjlG0dvbIFC.SEbnMRiH9IIK73drC...............5RzCFoQOXjD8fA..............P2hdvHM5Aij7n1Cl5w.foFNzFI4PKMasm.zZFtwvZOA...............ngoGLRhdvHI5AC..............ftG8fQRzCFI4QsGLWhw.vTCGZijrw01n1S.ZMWe3lkUepkq8L...............fFjdvHI5AijnGL...............5dzCFIQOXjjG0dvbIFC.SMbnMRhH9IMm3YOZsm................zfzCFIQOXjF8fA..............P2hdvHI5Aiz7nzClKwX.XpgCsQZDwOIYlC9yq8D...............fFjdvHM5AijnGL...............5VzCFoQOXjjGkdvbIFC.SUbnMRxryeuZOAn0b4AWs1S................ZX5AijnGLRhdv...............n6QOXjD8fQRdT5AykXL.LUwg1HIW5BCp8DfVys141km44Vs1y................ZP5AijnGLRhdv...............n6QOXjD8fQRdT5AykXL.LUwg1HIh3mz7jG+H0dB...............PCROXjD8fQZzCF...............cK5AijnGLRytsGLWhw.vTEGZizHheRxnQ6T6I................MH8fQZzCFIQOX...............zsnGLRidvHI61dvbIFC.ScbnMRhH9IIm+bWp1S................ZX5AijnGLRhdv...............n6QOXjD8fQR1s8f4RLF.l5bu6c2ZOAn0HheRyoe9iW6I................MH8fQRzCFoQOX...............zsnGLRhdvHM6ldvlsE1ArmchmYsxY91eic0etO4uQuxiej4ej+6wwVakG4+Z1KdT9mkl5uev9Uev62uTJyT6Y.slS+7Gu7du6fZOCnU7DO4B0dB...............PCROXjF8fQRzCF...............cK5AiznGLRxtoGLWhwLU6oO4Zky7c9l0dFMhtz+r.sAGZijHheRxVaciZOA...............ngoGLRhdvHI5AC..............ftG8fQRzCFIY2zClqwd.XpTuisXsm.zZDwOI4JCtV4vGwClC..............PWhdvHI5AijnGL...............5dzCFIQOXjjcSOXtDiAfoR24N6T6I.slqL3Z0dBPq5Dm7n0dB...............PCROXjD8fQZzCF...............cK5AijnGLRyCqGLWhw.......................................zQ4RLF......................................fNJWhw.......................................zQ4RLF......................................fNJWhw.......................................zQ4RLF......................................fNJWhw.......................................zQ4RLF......................................fNJWhw.......................................zQ4RLF......................................fNJWhw.......................................zQ4RLF......................................fNJWhw.......................................zQ4RLF......................................fNJWhw.......................................zQ4RLF......................................fNJWhw+B+769w0dB.vDxcuynZOA...............nAoGLRyn6pOFxgdv...............naQOXjF8fQRzCF.6u3RL9WXyg2tbys2o1y..l.FzeXsm................zfzCFo4B8uZsm.zZzCF...............cK5AiznGLRhdv.X+EWhw+JtX+qU6I..S.C5eixn6Np1y................ZP5AijLn+0q8DfVidv...............n6QOXjD8fQRzCF.6u3RL9WQ+02n1S..l.FM5iKWn+Uq8L...............fFjdvHIW97aUt416T6Y.sB8fA..............P2idvHI5AijnGL.1ewkX7uhMGd6xGNbqZOC.XBXP+qW6I................MH8fQZtX+qU6I.sF8fA..............P2hdvHM5AijnGL.1+vkX7ulyt9kq8D.fIfKe9sJit6nZOC...............nAoGLRR+02n1S.ZM5AC..............ftG8fQRzCFIQOX.r+gKw3eMWp+l0dB.vDxGr9fZOA...............nAoGLRxlCuc4lauSsmAzZzCF...............cK5AijnGLRidv.X+AWhw+Zt01iJe3vsp8L.fIf9quQsm................zfzCFo4m7tWn1S.ZM5AC..............ftE8fQZzCFIQOX.r+fKw3OCu26dwZOA.XBXyg2tbys2o1y................ZP5Aijbo9aV6I.sF8fA..............P2idvHI5AijnGL.1evkX7mgA8uQsm..Lgbw9Wq1S.123vGYgZOAn03y6jFelG...........ftD8fQRt01iJe3vsp8LfVidvfcOsBPR74cRiOyC...........PWhdvHI5AiznGLX2Sq.TKtDi+LLZzGWtX+qV6Y..S.u265quC6Vewu7Ip8DfViOuSRdlma0xIN4Qq8L............fFidvHMmc8KW6I.sF8fA6d5igj3y6jD8fA...........PWidvHM5AijnGLX2SeLTKtDie.FzeXsm..LAbqsGU9vgaU6Y.6Kbm6rSsm.zZ74cRxSd7iT6I.............MN8fQR5+dWu1S.ZM5AC18zGCIwm2II5AC...........ftH8fQRzCFIQOXvtm9XnVls1CXZU+2+5ku7u8nxbyOWsmxTm+fem+jZOgOS+Veomtr1Se3F4WqEWbwx+i+a+eZjes1u3u2K+EJO8y7arm9q8u3+9eY4mcka1vKBlbN65Wt7keQwZBedN8ye7RobuZOCn0b9ycoRoLSsmAzJFMZmRobfZOC............nQoGLRxnQeb4h8u5dtGLX+F8fAOb5AiznGLRhdv............nKROXjD8fQZzCF7voGLpIUY843B8uZsm.zZFzeXsm.zZtT+Mq8Dfod8N1h0dBPq4SdnbHGexKoE............n6QOXjD8fQRzCF7voGLRhdvHM5AC...........ftJ8fQRzCFIQOXvCmdvnlbIF+4XP+qW6I.slA8uQsm.zZt01iJWzuQTvmq6bmcp8DfViGJmj3kzB............cY5AijnGLRhdvfGN8fQRzCFIQOX............zkoGLRhdvHI5ACd3zCF0jKw3OGW97aUFc2Q0dFPqXznOt7AqewZOCn0Ln+vZOAXp0gOxBkyetKU6Y.sFOTNIwKoE............5xzCFIQOXjF8fAOX5AiznGLRhdv............nKSOXjD8fQZzCF7foGLpMWhwODev5Cp8DfVyf9Wu1S.ZMC5eiZOAXp0oN8Z0dBPqxCkSR7RZA...........ftN8fQRzCFIQOXvCldvHM5AijnGL............55zCFIQOXjD8fAOX5AiZykX7CQ+02n1S.ZMW97aUFc2Q0dFPqXznOtbw9Ws1y.lJcnkls1S.ZMm94Odsm.zp7RZA...........ftN8fQRzCFIQOXvCldvHI5AiznGL............55zCFIQOXjD8fAOX5AiZykX7CwlCuc4lauSsmAzZtfCsQPN25+zZOAXpzVaciZOAn0z6XKV6I.sFujV............HA5AiznGLRhdvfOa5AijnGLRhdv............HA5AiznGLRhdvfOa5AiZykX7tvE6esZOAn079+0dHExwkO+VkQ2cTsmALU4vGYgxUF3rOjiO5i1r1S.ZMdIs............PJzCFIQOXjD8fAeZ5AiznGLRhdv............HE5AijnGLRhdvfOM8fwz.Whw6Bu265PajiMGd6xM2dmZOCn0bg99Z7vupSc50p8DfViGJmzbm63b9............jA8fQRzCFoQOXv8SOXjD8fQZzCF............oPOXjD8fQZzCFb+zCFSCbIFuKbqsGU9vgaU6Y.slK1W7ljiys9F0dBvTkCszr0dBPqwCkSZN+4tTsm.............zJzCFoQOXjD8fA2O8fQRzCFoQOX............jB8fQZzCFIQOXv8SOXLMvkX7tzYW+x0dBPqo+d3PaK06vSfk.Sd+rqbyxM2dmZOCXpwVaciZOAn03gxIIm94Odsm.............zpzCFIYuzCFrekdvf6mdvHI5AijnGL............RidvHI5AijnGL39oGLlF3RLdW5R82r1S.ZMaN71kOb3VOz+7VYkkK+9uxWs7+5+6+kxW7KcpVXYvjwE6esZOAXpvgOxBkqLv+9.4vCkSRdhmbgZOA............nUoGLRxtsGLnqPOXvmPOXjF8fQRzCF............oQOXjD8fQZzCF7IzCFSKbIFuKcqsGUtX+qV6Y.slyt9kef+w9heoeyx+x+M+gk+z+CeqxW4u+e2xiuzgZwkAMu9quQsm.LU3TmdsZOAn03gxIMdIs............PZzCFo4yqGLnqQOXvmPOXjD8fQZzCF............oQOXjF8fQRzCF7IzCFSKbIF+HXP+g0dBPq4R82799eu3hKT9Z+tekx+1u62p7O8O5eb449MOYkVFz71b3sK2b6cp8Lfp6PKMasm.zZ7P4jDujV............HU5Aij7q2CFzkoGL3SnGLRhdvHI5AC...........fToGLRhdvHI5AC9D5AioEtDieDLn+Mp8DfVys1dT4mdkgkS8ENY4exq9Or7c+duV4q869UJOwQWt1SClH9Iu6Ep8DfpaiqsQsm.zZ7P4jDujV............HU5Aij72zCFjB8fA5AirnGLRhdv............HU5AijnGLRidv.8fwzCWhwOBFM5iKWr+Uq8LfItk5c3xq7pub4O6+3+5x+py7GV967huPsmDLwco9aV6I.U0pO0xkqOz+d.4Xqs7Mffb3kzB............oROXjly8d97N4POXjN8fQZzCFIQOX............jJ8fQZzCFIQOXjN8fwzDWhwOhN25+zZOAXh43mb0x+t+7+Eke7Yeyx2+MdsxW3u0Iq8jfVys1dT4CGtUsmATMm3YOZsm.zZN7QVnbkAWq1y.ZMdIs............PxzCFIYPe+biRNzCFoSOXjD8fQZzCF............ISOXjD8fQRzCFoSOXLMwkX7inKe9sJit6nZOCnQ8098dwxa81ud4cN6aV9m+G+OprzxGt1SBphyt9kq8DfpY14uWsm.zZN0oWq1S.ZMdIs............P5zCFIYznOtbw9Ws1y.ZM5AijoGLRhdvHI5AC...........fzoGLRhdvHM5AijoGLll3RLdO3BNzFc.G+jqVNy29aT9Qm8GT9O+C+yJu3K8B0dRP00+8tdsm.TMC2XXsm.zZV3w8XPjCujV.............8fQVFzWe.jC8fQxzCFIQOXjD8fA............5AirnGLRhdvHY5AioIp0ZO3bquQsm.rm8huzKT9duwYJuyYeyxY9NeyxSeRQrA+MFM5iKWzuQTDnUepkKWe3l0dFPqwCkSRNzRyV6I.............UmdvHI8e+qWFc2Q0dFPqPOXjJ8fQZzCFIQOX............fdvHK5AijnGLRkdvXZiKw38fe1UtY4lauSsmArqsTuCWdkW8kK+ny9CJu0a+5ku9q9Uq8jfoVC5KjYxyId1iV6I.sFOTNoYqstQsm.............Tc5AizbAQ7SPzCFIROXjD8fQZzCF............nGLxidvHI5AiDoGLl13RLdO5h8uVsm.7Pc7StZ468Fmo7iO6aV99uwqUd5StVsmDL0aP+aTFc2Q0dFPqZ14uWsm.zZ7P4jjCejEJWYfmcE............JE8fQVFz+50dBPqQOXjH8fQRzCFIQOX............vujdvHI5AijnGLRjdvXZiKw38n9quQsm.7.8Ju5KWdq290KuyYeyxW+U+pkkV9v0dRv9FiF8wkKz+p0dFPqZ3FCq8DfViGJmjb5m+op8D............foF5Aijb4yuU4lauSsmAzJzCFIROXjD8fAHTAXN...B.IQTPTQRzCF............7KoGLRhdvHI5AiDoGLl13RLdOZyg21g1XpxwO4pky7s+FkezY+Aku+a7ZkW7kdgZOIXeqA8udsm.zZV8oVtb8gaV6Y.sFOTNIwKoE............3WROXjlK1+Z0dBPqQOXjD8fQZzCFIQOX............vujdvHM5AijnGLRhdvXZjKw3wvO4cuPsm.TdwW5EJuwO76Tdmy9lky7c9lkm9jqU6IA66c4yuUYzcGU6Y.shS7rGs1S.ZMdnbRiWRK............v8SOXjj9quQsm.zZzCFIQOXjD8fQZzCF............b+zCFIQOXjD8fQRzCFSibIFOFtTeAuQcrTuCW9m8G+6W9Qm8GTdq290K+C989sq8jfNmKz+p0dBPqXlC9yq8DfViGJmj3kzB............7ooGLRxlCuc4lauSsmAzZzCFoPOXjD8fQRzCF............7ooGLRhdvHM5AiTnGLlF4RLdLbqsGU9vgaU6YPP9s9ROa468Fmo7iO6aV92+m+GUd5StVsmDzY89+0dHExvkG3y5jiYm+d0dBPqwKoE............3SSOXjlO38tbsm.zZzCFoPOXjD8fQRzCF............7ooGLRidvHI5AiTnGLlF4RLdL8du6Eq8DH.uxq9xk25se8xewe4+oxW+U+pkkV9v0dRPm2lCuc4lauSsmALQ8LO2pkasysq8LfVyvMFV6I.sFujV............fOa5Aijbt0+Y0dBPqQOXj.8fQZzCFIQOX............vmM8fQRzCFIQOXj.8fwzJWhwioA8uQsm.cTG+jqVNy29aTduq+CKe+230Ju3K8B0dRPbtX+qU6I.STO4wORsm.zZV8oVtb8gaV6Y.sFujV..........f+er286OZc8c9d72vNCYl4xQn9C3jk5gJ3IlVqPRsVV7jszXWP5dRKJtV6tmfzCQb08F6rtsl8b1bxZ0atUrg6z1SaC6NZLoTRmJaCVJTGOngeIE4.hZ.5vv.LJLxfyvv.HTjyM1Ma1zcqkAtt994556mGO9CX99Jx3EyGx776G.f+ioGLxIm4TmOduAOYpmATXzCFkc5AibhdvH2nGL............3+X5AibhdvH2nGLJ6zCF0qbIFeE57m+BwgO3QS8LnDYNyclwJ65wisefmM9ZO9CDsOwJodRP1ZuutOemxsKdwyk5I.Elo8e45S8DfBiWRK............vuc5AibyA12am5I.EF8fQYmdvHmnGLxI5AC............9sSOXjazCF4D8fQYmdvndkKw3pf9O3fodBzfq8IUIdvNt6XaG3Yheb2eyXAK7NR8j.hHNyoNe7dCdxTOCnl4s62AwIe3P4jS9n230l5I.............00zCF4jibPWFZjOzCFkc5AibhdvHmnGL............3CmdvHmnGLxI5AixN8fQ8JWhwUA8evgiyetym5YPCnOwrtw3asxuVr2A6Jdxm9QhaXZSI0SB32vA12am5I.0DeraZxwYN8YS8LfBiCkSNooIbwTOA............ntldvHmblSc93vGzuO0jOzCFkU5AibidvHmnGL............3CmdvHmnGLxM5AixJ8fQ8LWhwUAm+7WHNjenMFCtukLuXCu12N9Eu12Mt+kL+TOGfODG4fCk5I.0DW+Tu5TOAnv3P4jaF7cGL0S.............pqoGLxM8eP+9kR9POXTVoGLxI5Aibidv............fOb5AibidvHmnGLJqzCF0ybIFWkz+AOQpm.04l5zlb7DO8CG68DcEqXke83Vl0LR8j.tDblSc93XuiClS4yEu34R8DfBiCkSN4icSSNNwf9GYE............9cQOXjS5+fCm5I.EF8fQYkdvHmnGLxI5AC............tznGLxI5AibhdvnrROXTOykXbUxa22Iiyetym5YPcn6ZgyIVYWOdr8C7rwx53dh1mXkTOIfwnd26QS8Dfpt2teeeM4CGJmbhWRK............vkF8fQN47m+BQO66vodFPgQOXTFoGLxI5Aibhdv............fKM5AibhdvH2nGLJizCF0ybIFWEcnC5+Ym+YsOoJwC1wcGa6.OS7Oz02HVvBuiTOIfq.8evgS8DfppO1MM43Lm9rodFPgwgxIm3kzB............boSOXjS5+fmH0S.JL5AixF8fQtQOXjSzCF............boSOXjSzCF4D8fQYidvndmKw3pn8uGGRI2Mm4Ny3asxuVr2A6Jdxm9QhaXZSI0SBnJ37m+Bwg8ODEkHS4Ft5TOAnv3P4ja7RZA............tzoGLxIucemLN+4NepmATHzCFkM5AibhdvH2nGL............3RmdvHmnGLxI5AixF8fQ8NWhwUQCM3YiQO0oS8Lnf09jpD22RlWrgW6aG+3t+lw8uj4m5IATCz69NVpm.T079uuedExGW+TcnbxGdIs.............iM5AibygDwOYD8fQYhdvHmnGLxI5AC............FazCF4F8fQNQOXTlnGLp24RLtJ6vGbfTOAJHScZSNdhm9gie4Ad1XEq7qG2xrlQpmDPMza22Iiyetym5Y.UE806QR8DfByEu34R8DfBiWRK............vXmdvHmz69d2TOAnvnGLJSzCF4D8fQNQOX............vXmdvHmnGLxI5AixD8fQ8NWhwUY680OZpm.0X20BmS7i69aFa+.OarrNtmn8IVI0SBnfbnC5y3ow2MeqSM0S.JTuc+9raxGdIs.............ic5AibxwemQiQO0oS8LfBidvnLPOXjazCF4D8fA............ic5AibhdvH2nGLJCzCFMBZJ0Cnr4Lm57w6M3IS8LnJq8IUIdn+x6N9xe06JtgoMkTOGfDo+CdhXRWqKtbZrMoqq0Xfim5U.Eia9VmZLvwObpmATX7RZA............F6zCF4lCevAR8DfBidvnLPOXjSzCF4F8fA............ic5AibidvHmnGLJCzCFMBbIFWCr2WWXbkEyYtyL9xKYdw8uj4m5o.TG3s6y+HTz368e+Sm5I.EFGJmbxG6llbL7ndoU.............WNzCF4jCtu2M0S.JL5Aix.8fQNQOXjSzCF............b4SOXjSzCF4D8fQYfdvnQfKw3ZfCt+Sj5IvUf1pzZLm+vOU7n+uVVbKyZFodN.0YbPEZz0WuGI0S.JLNTN4jqepWcL797Rq.............tbnGLxICM3YS8DfBkdvnQmdvHmnGLxI5AC............t7oGLxI5AibidvnQmdvnQfKwX3ew0c8WSbu+Yeg3S+GLyns1ZI0yA.np6lu0oFCb7Cm5Y.EFGJmbxEu34R8D...............fpH8fQtQOXjSzCF...............kK5AiFEtDiI68GdmelXte9YGe7O4Mk5o..TSMoqq0Xfim5U.ECGJmbSO6+fodB...............PUjdvHmnGLxM5AC..............fxE8fQiBWhwjkttq+Zh494mc7Y+7yNttI+QR8b..JDu+6e5TOAnv3P4jS7RZA..............fxG8fQNQOXjSzCF...............kO5AiFEtDiIq7w+j2T7Y+7yN9r24mI0SA.nv0WuGI0S.JLNTN4DujV...............n7QOXjSzCF4D8fA..............P4idvnQgKwXJ8ZqRqwsM6aM9S9S+iiqaxejTOmRmU045ieTmaH1xF2cpmB.7gXl29zhCejdS8LfBiCkSNwKoE...............JWzCF4F8fQNQOX...............TtnGLZj3RLlRqoM8oFK3K94hO8evLi1ZqkTOmRkC22whu+J5JVUmaHFYnQS8b.fKAs0terOxG27sN0Xfie3TOCnv3kzB...............kK5AibhdvH2nGL...............JWzCFMR7cqT57GdmelXte9YGe7O4Mk5oTpLxviFuvyuo3G04Fhsrwcm54..iQm7jCm5I.ElIccsFCb7TuBnX3kzB...............kO5AibhdvHmnGL...............JezCFMRbIFSovTm1jiG3O+KE+IKd9Qas0RpmSoxarqdhu2J9Iw5VyliQFZzTOG.3xPkqtk3c5efTOCnvLxHCk5I.+q5ceGsl902KoEpmb9y8AodBPgoRk1R8D.............fRJ8fQtQOXTOQOXjSzCF4D8fA.............0J5AiFMtDiog1bl6Lik0w8DKXg2QpmRoxHCOZ7BO+lhu+J5Jdyc0apmC.bEZF27ThCeDedN4AGJm5Is1ZKwV23aUSeFu+6e5Z5WeXr3kV2tR8DfByPmvm+B.............0F5AibhdvndhdvH2nGLxI5AC.............pUzCFMZbIFSCm1mTk39Wx7hk0whhaXZSI0yoT4M1UOw2aE+jXcqYywHCMZpmC.TkzV69Q9He3P4TO4Ctv3p4Oi958H07mAbonRk1hC0ywR8LfByKt1cl5I..............kT5AibhdvndhdvHmnGLxM5AC.............pUzCFMZ7crzv3SLqaLVVGKJ9iu6+qQ6SrRpmSowHCOZ7BO+lhu+J5JdycIvS.JiN4IGN0S.JLNTN0Sdo0sqZ5W+a9VmZLvwObM8Y.WpF5DmN0S.JLUpTIFZvSk5Y..............kT5AibhdvndhdvHmnGLxI5AC.............pkzCFMZTzE08tukLu3qrj4GyYtyL0SoTYKab2wOry0GqaMaNFYnQS8b.fZjJWcKw6z+.odFPgwgxodQkJsEGpmiUSeFejqukXfiWSeDvkrWbs6L0S.JLGs+gR8D.............fRJ8fQtQOXTuPOXjazCF4D8fA.............0J5AiFQtDiotzTm1jiGpiEEeku57i1mXkTOmRiQFdz3G9Ot936shth96yegE.4fYbySIN7Q5M0y.JDNTN0SF5Dmtl+L7RZg5EUpTIFZvSk5Y.EhlapoXsq9UR8L.............fRJ8fQNQOXTOQOXjSzCF4D8fA.............0R5AiFQtDiotxcsv4D2+RlerfEdGodJkJaYi6N9gct9X0ctgTOE.nf0V69w8He3P4TO4EW6Nqoe88RZg5IGs+gR8DfBSyMOgTOA.............nDSOXjSzCF0SzCF4D8fQNQOX.............PsjdvnQjuqkjq8IUIt+kLuXYcrn3Fl1TR8bJct8ou3n+9DyF.4pSdxgS8DfBiCkS8hJUpDCM3opoOCujVndQyM0Tr1U+JodFPg4M20gR8D.............fRL8fQNQOXTuPOXjSzCF4F8fA.............0R5AiFQp5hj4SLqaLVVGKJt+kL+TOkRMWfw.jul7u+Di2oe+8.jObnbpWbz9Gpl+L7RZg5EM27DR8DfBSqs1Rr0M9VodF.............PIkdvH2nGLpWnGLxI5Aibhdv.............fZI8fQiJUtPg69Vx7hGpi6ItkYMiTOE.fRsO5MdsQuG38R8LfBQkqtEGJm5BM2TSwl5dm07miWRKTu3f83ydIe7AWXbodB.............PIldvHmnGLpWnGLxM5Aibhdv.............fZI8fQiJWhwTHl5zlb7Pcrn3q7Umez9Dqj54..jEZZBWL0S.JLy3lmRb3izapmADM27DhgF7T0zmgWRKTun0VaI5dsuRpmATX1wl2epm..............ThoGLxI5Ai5E5AibhdvH2nGL.............nVROXznxkXL0T20BmS7PcrnXNyclodJ..YmAe2AS8DfBSas6nMTe3f8T6eYR3kzB0K9fKLtTOAnvToRawd1oO6E.............pczCF4D8fQ8B8fQNQOXjSzCF.............TqoGLZTorKp5ZeRUhG5u7tiu7W8thaXZSI0yA.HKM4e+IFmXv2K0y.JLu6.uapm.Ds1ZKQ2q8Up4OGujVndwN179S8DfByPm3zodB.............PIldvH2nGLpGnGLxM5Aibhdv.............fZI8fQiLktPUybl6Liu7RlWb+KY9odJ..YuO5MdsQuGvgTHO3P4Tu3Ctv3JjmyIO4vExyA9vToRawd1YuodFPgY6aZeodB.............PIldvHmnGLpWnGLxI5Aibidv.............fZI8fQiLWhwbEo8IUIVvBui3g53dhaYVyH0yA.f+EMMgKl5I.EFGJm5E6Xy6ul+Lpb0sDuS+CTyeNvuKCchSm5I.ElJUpDGpmik5Y..............kX5AibhdvndgdvHmnGLxI5AC.............p0zCFMxbIFykkoNsIGOTGKJ9Je04GsOwJodN..7aXv2cvTOAnv3P4TOnRk1h8rydq4OmYbySIN7Qp8OG32ksuo8k5I.Eli1+PodB.............PImdvHmnGLpGnGLxM5Aibhdv.............fZM8fQiLWhwLl8sV4WKt+kL+TOiFVuwt5I1y+ud7eCAfZlI+6Ow3DC9dodFPgwgxodvPm3zExyokqZ7ExyA9vToRk3P8brTOCnPzbSMEap6cl5Y.......j4FW76EiqJ8q763GWyUkuNL1bgKDwu9bUouVmebUmuP0wpVe+d0z4N2EhSOx4qJesN6YtPU4qS8rp02umCF+3ZN9fpzc1y3hp2uWIUqueOG7O+4xUm+P7hWn7+Y70iplet7EufKgK..fKO5AibidvndfdvHmnGLxI5AC......ndfdvZ7oGrwF8f03SOXW5zCViO8f03SOX...0CzCFM5p+9Wzi5d+m+X+mR8DZ3b39NVrtmeyw2aEcE822.wbl6LcIFC.0Leza7ZidOfCoPdvgxodw12z9JjmiWRKTO3n8OTpm.TXZt4IDCM3oR8L.......xbiOZIF+3ZI0yfq.m6LiKN2YDh7kplG2GI0S3emgG78igG78S8LZXLxftTNtT86EWU76UG9wC8s+Sl5Izv3zmbbQD0g+gHWxN1QFM0S....8fQVQOXTuPOXjSzCF4D8fA......TOPOXM9zC1XidvZ7oGrKc5AqwmdvZ7oGL..f5A5AiFctDigZjQFdz3Ed9ME+nN2PrkMt6TOG.HizzDtXpm.TXbnbpGToRk3P8brZ9ywKoEpGzbSMEap6cl5Y.ElC1y.odB.............PImdvHmnGLpGnGLxI5Aibidv.............fZM8fQiNWhwPU15Vylie1Z1br5N2PpmB.joNxg5O0S.JLNTN0CNZ+CUHOGujVndPyMOgXnAOUpmATHZs0VhtW6qj5Y..............kb5AibhdvndfdvHmnGLxI5AC.............JB5AiFctDigpf2XW8Dqpy0GqpyMDiLznodN.PF6icSSNFdzil5Y.ElAe2AS8DfXScumB443kzB0CNXOCj5I.ElO3BiK0S..............J4zCF4F8fQ8.8fQNQOXjSzCF.............TqoGLJCbIFCWlNbeGKV2yu436shth96SzN.P8gqepWcL79bHExGmXvgR8DHy0VqsECM3oJjm04d+2uPdNvuMM2TSQ2qcmodFPgYGad+odB.............PImdvH2nGLRM8fQNQOXjazCF.............TqoGLJCbIFCiAiL7nwK77aJ9QctgXKab2odN..+6L9wm5E.Pd4f8LPpm.TXF+3aN0S.JLs1ZKwd1YuodF.............PImdv.nXoGLxI5Aibhdv.............fhfdvnLvkXLbIXcqYywp5b8wOeMaI0SA...pSzbSMEcu1cl5Y.Elcr48m5I.ElSNzYS8D...............fpH8fQtQOXjSzCF..............bowkXL7awarqdhu2J9Iw5VyliQFZzTOG...nNy3GeyodBPgo0VaI1yN6M0y.JLaeS6K0S................phzCF4D8fQtQOX..............vkFWhwv+FGef2Kd4Wbaw11zthm86zcpmC...TGaGad+odBPg4jCc1TOAnvbUWUk3P8brTOC...............nJROXjSzCF4D8fA..............W5bIFS16zm9rwubq6NV2O8+az2A5OhHhVas0DuJ...ndVqs1Rrmc1apmATX19l1Wpm.TXdmiLTpm................TEoGLxM5Aibhdv..............fKctDiIasis85wFewsE6XaudpmB...zf4jCc1TOAnvbUWUk3P8brTOCnvrot2Spm................TEoGLxI5Aibidv..............fKctDiIq7V64W8udwEe5QOSpmC...zfZ6aZeodBPg4cNxPodBPgosVaKFZvSk5Y................UQ5AibhdvHmnGL..............XrwkXLkdGef2K9Y+SuT7K25qGG+cOQpmC...zf6ptpJwg54XodFPgYScumTOAnvbvdFH0S................phzCF4F8fQNQOX..............vXiKwXJkN8oOa7xu31hWt6sE8cf9S8b...fRj24HCk5I.El1ZssXnAOUpmATHZtolhtW6NS8L...............fpH8fQNQOXjSzCF..............L14RLlRkWt6WM9kac2wN11qm5o....kTap68j5I.ElC1y.odBPgY7iu4TOA...............nJSOXjSzCF4D8fA..............ictDiog2HCOZ7+9Q+NQe8bnnxjFWpmC...ThUoRkXnAOUpmATHZtolhtW6NS8LfByN179S8D...............fpH8fQNQOXjazCF..............L1M9TO.3JU6SrR70e7EGK9O+KFW20eModN...PIVu6+XodBPgo4lmPpm.TXZs0Vh8rydS8L...............fpH8fQNQOXjSzCF..............b4ooTO.nZ3Fl1ThaXZyKt2+r4E80a+wK+haKd4te03zidlTOM...njn4lZJ5ds6L0y.JLu5qruTOAnvb1y7qS8D...............fpH8fQtQOXjSzCF..............b4wkXLkNS6FmZr3GbQwhevEE6XaudrwWbawN11qm5YA...M3Zt4Ij5I.ElVaskXO6r2TOCnvroteyTOA...............nJROXjSzCF4F8fA..............WdbIFSo1sM6aMtsYeqwoO8YiW9E2V7xcusnuCzepmE...z.5Uek8k5I.Elydlecpm.TXpTos3P8brTOC...............nJROXjSzCF4D8fA..............W9bIFSVns1ZIVvWbtwB9hyMN9.uW7y9mdo3Wt0WON96dhTOM...nAPqs1Rrmc1apmATX1T2uYpm.TXNZ+Cm5I................UQ5AibidvHmnGL..............3xmKwXxNW2j+HwhevEEK9AWTris85w125tiWo6WM0yB...pic1y7qS8DfBSkJsEGpmik5Y.ElM08dR8D...............fpH8fQNQOXjazCF..............b4ykXLYsaa12Zbay9ViGXY2a7K25tiW9E2V7V64Wk5YA...0Y1T2uYpm.TXNZ+Cm5I.ElJUpDCM3oR8L...............fpH8fQNQOXjSzCF..............bkwkXLDQzVasDe167yDe167yDGef2K17KuiXWuZ+Q+8MPpmF...jXUpzVbndNVpmATX1T26I0S.JL8tee9N...............kI5AibidvHmnGL..............3Jy3S8.f5MW2j+HwW5O4OJ19Ad13G282LtukLun8IUI0yB...Rji1+vodBPgoRkJwPCdpTOCnPzbSMEcu1cl5Y................UQ5AibhdvHmnGL..............3JWSod.P8r4L2YFyYtyLhHhU045i0slMG+70rkDuJ...nHsot2Spm.TXNZ+Ck5I.ElladBodB...............PUldvHmnGLxI5AC..............txM9TO.nQw8uj4G+Cc8MhscfmIdhm9gioNsIm5IA...0XUpTIFZvSk5Y.EhlapoXsqdqodFPg4M20gR8D...............fpH8fQNQOXjazCF..............bkykXLLFcCSaJwx53dhsefmM1vq8siGri6NZeRUR8r...fZfi1+PodBPgo4lmPpm.TXZs0Vhstw2J0y................phzCF4D8fQNQOX..............P0gKwX3JvsLqYDO4S+HwdGrqXkc83wcsv4j5IA...UIM2TSwZW8VS8LfByatqCk5I.ElO3BiK0S................phzCF4F8fQNQOX..............P0QSod.PYwBV3cDKXg2QLxviF+v+w0Gqpyed7l6p2TOK...3xTyMOgTOAnvzZqsDaciuUpmATXdo0sqTOhqTaXC..f.PRDEDUA...............nJROXjSzCF4F8fA..............UGiO0C.JaZehUhk0w8D+hW66Fa6.OS7fcb2wTm1jS8r...fwn2bWGJ0S.JLevEFWpm.TXpTos3P8brTOC...............nJROXjSzCF4D8fA..............UOtDiYL6qtnuQr7m3YhC2me49+c4Fl1Thm7oejX6G3YiU10iG22RlWpmD...bIn0VaI15FeqTOCnv7RqaWodBPgYnSb5TOA...............nJROXjazCF4D8fA..............UOtDiYLajgFMV9S9bwrm9CDcrzmJ1xF2cpmTCgErv6HVwJ+5wdOQWwW+wWbpmC...7g3Ctv3R8DfBSkJsEGpmik5Y.ElWbs6L0S................phzCF4D8fQtQOX..............P0iKwXthr5N2Pbu24iE29zWbrpNWeLxvil5IU2q8IVIlybmYpmA...7g3kV2tR8DfByPm3zodBPgoRkJwPCdpTOC...............nJROXjSzCF4D8fA..............UWtDiopn+9FHdzkt73SO8EGcrzmJNbeGK0SB...3xRu66nwg5wYZHObpSd13EW6NS8LfBSu62muC..............PYhdvHmnGLxM5AC..............ptbIFSU0HCMZr5N2PL6o+.w8dmOVrt0r4TOI...fwjstw2J0S.JL6Ym8FCM3oR8LfBS2dIs...............PohdvHmnGLxM5AC..............ptZJ0CfxqsrwcGaYi6Nl5zlb7UVx7hG5u5di1mXkTOK......................................HaL9TO.J+5uuAhk+jOWbyWyhhNV5SEaYi6N0SB......................................xBtDioPs5N2Pbu24iE+QepGNVUmqO0yA......................................J0bIFSR7l6p23QW5xia9ZWT728W+chC22wR8j......................................fRGWhwjTiLznwOXEOeL6o+.w+iE8Mh0slMm5IA......................................kFtDiotwOeMaIV5hdh31m9hiu+J9IwHCOZpmD......................................zPykXL0c5uuAhG+u96Fe5ou3nik9TwarqdR8jZns2SzU7DO8CGehYciodJ......................................TvbIFScqQFZzX0ctgXdep+h3duyGKVUmqO0SpgT6SrRrrNtm3W7Ze2XCu12NdvNt6n8IUI0yB.....................................fBfKwXZHrkMt63QW5xia9ZWTr7m3YhC22wR8jZHcKyZFwS9zORr2A6JVYWOdbWKbNodR......................................TC4RLlFJiLznwxexmKl8zefnik9TwV13tS8jZXsfEdGw+PWeiXumnq3Id5GN9Dy5FS8j......................................nJykXLMrVcmaHt267whae5KNVUmqOF8TmI0SpgT6SrRrrNtm3W7Ze2XCu12NdvNt6n8IUI0yB.....................................fp.Whwzvq+9FHdzkt73+9+s+l3Y+AcEGef2K0Spg0sLqYDO4S+HwdGrqXkc83wcsv4j5IA.....................................vUflR8.fpkSMxoi08S2Xrte5FiO9m7lhuvW5yE21ru0TOqFVKXg2QrfEdGwHCOZ7BO+lhu+J5Jdyc0apmE......................................iAtDioT5s1yuJdq87qhq65ulXte9YGKXgetns1ZI0ypgT6SrRb+KY9w8uj4GGtuiEe+UzU7yd9MG822.odZ......................................76v3S8.fZoi+tmH9w+veVrr+z+l36thmK5q29S8jZncCSaJwS9zORr8C7rwJ65wi6aIyK0SB.....................................fODtDiIa7Jc+pwe6e0ee729n+8wK28ql54zvaAK7NhUrxudr2SzU7sV4WKZeRUR8j......................................32fKwXxN8cf9i+Oq34hk8m8+Ld1ePWwwG38R8jZn09DqD2+Rle7Im0LR8T......................................32PSod.Ppb5QOSrte5Fi08S2Xbay9ViuvW5yEe7O4Mk5YA......................................UMtDigHhcrsWO1w1d835t9qI9BK7yEy8yO6n01ZI0yB......................................th3RLF9233u6Ihm8GzU7BO+KEi6hWU7PcbOwsLqYj5YA......................................WVFepG.TO5zid1X0ctgXdep+h3duyGKVUmqO0SB......................................FybIFC+NrkMt63QW5xiae5KNV9S7Lwg66XodR......................................vkDWhwvkn96afX4O4yEyd5OPzwRepXKab2odR......................................vGJWhwvkgU24Fh68Ner31m9hiU045iQFdzTOI......................................3eGWhwvUf96af3QW5xiO8zWb728W+chC22wR8j......................................f+UtDigpfQFZz3GrhmOl8zef3duyGKV2Z1bpmD......................................DMk5A.kMaYi6N1xF2cL0oM43qrj4EOze08FsOwJodV......................................jgFepG.TV0eeCDK+Iet3lulEEcrzmJdic0SpmD......................................YFWhwPAX0ctgXdep+h3O5S8vwp5b8odN....v+e169OF4t99NO968Gy5c1wyr6lcs8WW14b8RUyUnw9DgTG6dWcDWL3ToHSbD0WUD3KVfDDc2YAlbmT0ILP0Uo6.LZ+GhaA4TiUzEJhMXUoV.miqtQEeNjXc1ovUhRL0BrJ3BD65r.I7q6OnzPACrF186mY994wi+KAzpWIYxL6f+97yG.................................HS3RLlyZm2JWdpmPWqG+vOYbsa41hO9XaLtgq6qEO0wd1TOI......................................pvbIFyYse+a+qDOwKLcbS63pcgF+gzoO4LwcM08GqZxqH9xa7FiCr+ij5IA.....................................PEjKwX9Po4vMhqZqeg3aencF66P2QbYadcQyQZj5Y0U5A26Ahu3E8UiO0jWdbmS8shSepYR8j......................................nhvkXLejc9q7bio100GOwyOcb66ZawpW6JR8j5Jc7ichX6W2NiKbxKO15Vt03wN7ON0SB.....................................ftbtDiYN0l17EG22CeKwAO5cGa6F9Rw4rrEm5I004zmbl3d289h0cAek3KdQe03d18Ck5IA......vrRO9idhLiWySNwq2A..............nZQq.ja7ZdxId8N..........vYhmpDlWzdYKI111uh3QO5dhcM81iKayqK0SpqzA1+QhqcK2V7ol7xia6lt63oN1yl5IA......v6o95ognlIazaLPzaOKH0y.JM80SyTOA...............XNjdvHmnGLxM5AC..........3LwSMHy6V+FVSL0tt93IdgoiaZGWcbdqb4odRccN9wNQba272HV0jWQr0sbqwA1+QR8j.......3co2XAh3mrQu8rfn2XvTOCnTzaLPzaLfClH...............pPzCF4D8fQNQOX...........uW7DkPoo4vMhqZqeg3aencF66P2QbYadcQyQZj5Y004d289hu3E8UiO6Eb0w8r6GJN8olI0SB......fn2XfHhdDwOYidiED8D8KhexBu0ARjClH...............pFzCF4F8fQNQOX...........uW7DTQRb9q7bio100GOwyOcb66ZawpW6JR8j5573G9IiqcK2VbgSd4wMbces3oN1yl5IA......jwdqPlEwO4f25PZIBQ7Sdn23e7PqvASD...............UB5AibhdvH2nGL..........f2KdhAI41zlu339d3aIN3Qu63J25kFmyxVbpmTWkSexYh6Zp6OV0jWQ7EunuZ7.68QR8j.......xPuUPyQHhep9d6uFWD+T081OjVbvDA..............P0fdvHmnGLxI5AC..........38imlD5XzdYKIt4cbMwidz8D6Z5sGWxFVcpmTWmCr+iDaYi2T7ol7xi6bpuUb5SMSpmD......PF3sGz7a9uVD+Ts81OjVDwOUcuyChndhZIZI...............vbA8fQtQOXjSzCF..........v6GO8TzQZ8aXMwWe5aLdhWX53l1wUGmyxVbpmTWkierSDa+51Y7w+XaL15Vt03wN7ON0SB......nB6cGzb+wa+Pr.pRdmGRKQHhep1d6GRKQ7teOe...............n6hdvHmnGLxM5AC..........38iKwX5n0b3FwUs0uP7nGcOw9NzcDW1lWWzbjFodVcUt2cuuXcWvWI9rWvUG2ytenTOG......fJn2YPyu4+dCjfk.y+NSA6KheppNSGRKu4646fIB..............ftU5AibhdvHmnGL..........fOHtDioqw4uxyMlZWWe78N5dhaeWaKV8ZWQpmTWkG+vOYbsa41hO9XaLtsa5tim5XOapmD......PEvYJn4HDwOUWm4CoEQ7S0z606k6fIB..............ftS5AibidvHmnGL..........fOHtDioqSygaDaZyWbbeO7sDG7n2cbka8RiyYYKN0ypqwoO4LwscyeiXUSdEwWdi2Xbf8ejTOI......ftXu2AMKhepdduNjV9E+0fpkyzgzRDNXh...............nakdvHmnGLxM5AC..........3ChKwX5p0dYKIt4cbMwidz8D27N9ODexU8IR8j5p7f68.wW7h9pwmZxKOtyo9VwoO0LodR.......cYduBZ9M+qIhepVd+B0WD+T079eHs3fIB..............ftQ5AibhdvHmnGL..........fYCWhwTYrlOy+p3598tx3N+e9eOt7qbiw3K5ik5I0033G6Dw1utcFW3jWdr0sbqwScrmM0SB......nKv6WPyQHhepdd+OjVDwOUKePuGtClH...............5tnGLxM5Aibhdv...........lMbIFSkyPCMXr9O+ZiotqsG+W+u8eL92bQ+FwPMpm5Y0U3zmbl3d289hUM4UDewK5qF2ytenTOI......fNXevAMKhepN9fNjV9E+8.UCueGRKQ3fIB..............ftM5AibhdvH2nGL..........fYi9S8.f4S+Z+5+Jwu1u9uR7hu3KGeu+OGIdf+z+h3XG83odVcENv9ORbf8ej3Vuo8D+6175hem+8WRzdYKI0yB......nCxGTPyu4eOCDud7yJg0.yulMA52aOKHd82vq2o62r6PZ4sNXhdixXR...............vGQ5AibhdvHmnGL..........fYqdS8.fxvPCMX7acQ+Fwevs+eNl5NuwX8e90FC0ndpmUWgierSD21M+MhUM4UDacK2Zbf8ejTOI......fN.uY.+u+AM+K96C59M6NjVlc++KfNcy1269MObK...............fNc5AibidvHmnGL..........fYq9S8.fx13Kdz3xuxMFW9Utw36evePr++WGL99G7Gj5Y0U3d289h6c26KNuUt73p15Fie6K82LZNbiTOK......fDnun9r5uueQD+uw75df4S8ECEy1CihdiAhWO9YyuCBlmMaNjVh3MObKd82vq2A..X91qG+73MhWYN4mUOQeQuwfyI+rX1q+E7FQsZyM+rdsWKhe9KUsOzLesXl4reV8EyMOmq0WXsXgMma9eD+4+7WKN0yWs+9z0W3b2+7feoeZ0906ud7xwaDu1bxOqdiAidh9lS9YsnkNzbxOmHh3u+u6Emy9Y0IZf5uQz2by+0d7ydodhWet4kCbVX3wVPLv.yM+Ohm74d43UdkWeN4mE........LWSOXjSzCF4F8fA..PmE8f08SOXmczCV2O8fM6oGrte5Aq6mdv....9nykXLYsO4p9DwmbUeh34NwOI9dG7Hwe9d+Khm6u+ER8r5383G9IiqcK2VbCW2NiMs40EW0V2XpmD......Poa1+fBKhe59cV75cQ7Skvr8PZY1c3V....ez7FwqDu1aL2D7aOQ+Qu83PqnrUqVDC1btIh+W8mmAGZEyQudOhH5qm4lCshE1rVL9RmcGjuePdwS+JU9Csh4pWuGQ0+Pq30diWJdi3UmS9Y0SO0lyNzJlqd8dDU+CshELzaD8OvbyOqW4Uh30esp8q46DMxGaAwPyQGLQ+zS+JNzJ........nCldvHmnGLxM5AC..fNI5Aq6mdvN6nGrte5Aa1SOXc+zCV2O8fA...7QmKwXHhX7EOZr9O+Zi0+4Wa7+6u9GEG36bn36rueXb5SNSpmVGsSexYh6Zp6Otqot+TOE......fNX81y.h3mrQuwbzSmLzk3MOXh94odF...............vbD8fQNQOXjazCF..........j25M0C.5z7q8q+qDa4Z9chu2Q2Sb66Zaw4sxkm5IA......PWsdiEj5I.kndbvUPVo2d7d7...............TknGLxK5Ai7hdv..........f7lKwX38PygaDaZyWb7sOzNi8cn6HtxsdoQyQZj5YA......PWHQ7SdQD+jSbvDA..............PUidvHunGLxI5AC..........xatDigYgyekmaby63Zhm34mNt8css3R1vpS8j.......nqhH9ImHhexKNXh...............npQOXjSzCF4E8fA..........4LWhwvYoMs4KN95SeiwAO5cGa6F9Rw4rrEm5IA......PGOQ7SdQD+jWbvDA..............P0hdvHunGLxK5AC..........xWtDigOjZurkDaa6WQ7nGcOw88v2RbYadcodR.......zASD+jWDwO4DGLQ...............T0nGLxK5Aibhdv..........f7kKwXXNvpW6Jho100GOwKLcb66Zaw4sxkm5IA......PGGQ7SNQD+jWbvDA..............PUidvHmnGLxK5AC..........xUtDig4PMGtQroMeww29P6L12gti3J25kFMGoQpmE.......cDDwO4EQ7SdwASD...............UK5Ai7hdvHunGL..........HO4RLFlmb9q7biadGWS7DO+zwsuqsEWxFVcpmD.......IlH9IuHhexINXh...............npQOXjWzCF4D8fA..........4IWhwPIXSa9hiu9z2Xbvid2w1tguTbNKawodR.......jDh3mbhH9Iu3fIB..............fpF8fQNQOXjWzCF..........jibIFCkn1KaIw119UDO5Q2Srqo2dbYadcodR.......TpDwO4kdhdh9S8HfRSO8TK0S................lCoGLxK5Ai7hdv..........f7iKwXHQV+FVSL0tt93IdgoiaZGWcbdqb4odR.......TB5I5I5K0i.JM81iCpExGNXh...............npQOXjWzCF4D8fA..........4GWhwPh0b3FwUs0uP7sOzNi8cn6HtrMutn4HMR8r.......XdSu8LXpm.TZDwO4jdh9bvDA..............PEidvHmnGLxI5AC..........xOtDigNHm+JO2Xpcc8wS77SG29t1Vr50thTOI.......lyIhexIh3mbiClH...............pVzCF4D8fQtQOX..........PdwkXLm09q++9iiSepYR8Lp71zlu339d3aIN3Qu6Xa2vWJNmks3TOI.......lSHhexMh3mbhClH...............pVzCF4F8fQNQOX..........PdwkXLm0190sy3i+w1X7k23MF2yteHWnwyyZurkDaa6WQ7nGcOwtld6wks40k5IA......vGYh3mbhH9Im3fIB..............fpG8fQNQOXjSzCF..........jWbIFyGZO3dOPbsa41bgFWhV+FVSL0tt93IdgoiaZGWcbdqb4odR.......7ghH9ImHhexMNXh...............nZQOXjSzCF4F8fA..........4CWhwLmvEZb4p4vMhqZqeg3aencF66P2QbYadcQyQZj5YA......vrlH9I2HheNSFrdsTOg4ENXh3LoQKutf7RU883A............f7jdvH2nGLNSppsBnGLNSzCF4lp56wC........v6jKwXly81uPi+rWvUG24Teq3oN1yl5YUYc9q7bio100Geuitm31201hUu1Uj5IA....P1Xv50hQFanTOCnz7K+qNdpm.ULcxQ7WLwvodBTwHheNS9k+UGK0SXdgClHNSVTQSQ7SVonseeR...........fNM5AibidvXtldvHmnGLNSzCF4D8fQtQOX.........4BWhwLu5wO7SFa+51YrpIuBWnwyyZNbiXSa9hi66guk3fG8tiqbqWZbNKawodV.....ToMdwBS8DfRyadHsTO0yfJlN4H9mXxQS8DnhQD+blL3PU2CAsN4ClHRmIVtOek7QQ6VodB............7NnGLxI5Ai4C5Aibhdv3LQOXjazCF4D8fA........jKbIFSowEZb4o8xVRby63ZhG8n6I10zaOtjMr5TOI.....pjDzL4DAFx7gN0H9azZAQyVhsl4dh3myjhIplQM2IevDQ5Tzd3TOAnzTu9.w3KwgcI...........PmD8fQNQOXLePOXjazCFmI5AibhdvHmnGL........fbgKwXRh24EZ7Mbces3wN7ON0ypRZ8aXMwWe5aLdhWX53l1wUGmyxVbpmD.....UBiL1PQ85Cj5Y.kFAFx7kd6oyKp41NjVXdRuge2Ad2FunYze+Uu+n6eyClnp2+4hOZpUqunXB+dkjO78n............5bnGLxMdNFY9hdvHmnGLNSzCF4D8fQtw2iB........HG3IDgj6wO7SF20T2ertK3qDepIubWnwySZNbi3p15WHdzitmXeG5NhKayqKZNRiTOK.....5ZULQqTOAnzTLwvQsZ8k5YPEUuQm0gVQ+82aLdQyTOCpn5I5O5I79o7OWsZ8UYeemNwClHRuh19tTjOVTE8fIB...........najdvHmnGLlOoGLxI5AiyD8fQtQOXjSzCF........PNvepnzQ43G6DtPiKAm+JO2Xpcc8w26n6It8cssX0qcEodR.....zUo+96MVZ6QR8LfRy3EKL0SfJrdh9idiZodF+SFunoCoElW0WOMR8DnCzDSNZpmv7h9Budm2sQGqQLX8NmO6GluUzd3TOA...........frmdvH2nGLlOoGLxM5AiyD8fQNQOXjazCF........PUmKwX5X8NuPi25Vt03A16ij5YUozb3Fwl17EG22CeKwAO5cGW4Vuzn4Hdvw.....3ChfSHmLX8ZwhJZl5YPkWOod.+SppgiSmidBGJJ7t0r0fQiVKH0yXdPmy6uSmEemJxI98KA...........ROO6hjSzCFkiNmdA775x7M8fwYhdvH236TQNwueI........PUmKwX5Jb7ich3d289hsrwaJ93isQWnwyCZurkD27Ntl3Id9oicM81iKYCqN0SB....fNVBNgbhfBImzn0BhlsFL0y.HSszI7YtjOJZ2J0S.JM0qOPLxXCk5Y............j0zCF4D8fQNQOX.ojdvHmnGLxI5AC........npykXLccN8ImwEZ77r0ug0De8ouw3fG8tiaZGWcbNKawodR.....zwXjwFJpWefTOCnzHnPxIBFGHkbPQQNod8AhwWxBS8LfRSwD9dU............ohdvH2nGLxI5ACHkzCF4D8fQtQOX.........UYtDioq1a+BM9RW6+oXmS8Mh+xG96Fu3K9xodZUBsW1RhqZqeg3QO5dh66guk3x175hlizH0yB....fjRnIjSFeIKzgzBYEAiCjRE9fIVZ...H.jDQAQ0p0WT3vygLhO2kbx3EMi962ioE...........PJnGLxI5AibimKcfTROXja74tjSzCF........PUV+od.vbke5oew367ve2367ve23ObpuQ7IW0mHtvO8JhK7SuhXngFL0yqq2pW6JhUu1UDm9TyD+Y2+eUbmSMc73G9IS8r.....nT0e+8FKs8HodFPoQHgjSJlX3nVs9R8L.xbEsaEOySepTOCnTrn+wH9e0W80S8Tf4c0p0WLdQSuGO...........PISOXjazCF4D8fAzIPOXjSzCF4D8fA........Tk0apG.Le46eveP7GN02Htpe2+KwN9Ctq3u7g+twK9hubpmUWulC2H1zlu33aencFG7n2cbka8RilizH0yB....fRw3EMS8DfRyf0qEKxq4IiTztUpm..wni0HFrdsTOCnz3PRibxDSNZpm............P1QOXjSzCF4F8fAzIPOXjazCF4D8fA........TU4RLlrv67BM9A9S2e7bm3mj5Y00q8xVRby63Zhm34mNNuUt7TOG.....l2IvDxIBHjbxf0qEiNViTOC.hH7YvjW7crHmzr0fQiVKH0y............Hq3YUjbhmEcxI5ACnShOClbhuiE4D8fA........TU4RLlry2+f+fXO20zwVupaL98t1+GtPimiL7HMS8D.....XdUiVKHZ1ZvTOCnzTztUpm.TZlX4BlEnygOClbR85CDiL1PodFPoYoS3fIB...........nrnGLxMdVzImnGLfNI9LXxI5Aibidv.........phbIFSV6XG83tPiA....fYk1BZlLxHiMTTu9.odFPoons3AA5bTu9.w3KYgodFPooXBGTKjO76cB...........TdzCF4D8fQtwykKPmD8fQtQOXjS76cB........TE0epG.zo3XG83wdN5zwdtqoie0+kSF+R+R+Kh07YVQb9q7bS8z.....fDq+96MFunYpmATZDNH4jhIFNpUquTOC.9mon8vwy8r+zTOCnTLdQyn+G6Dwq9pudpmBLuqVs9hhIFNdlm9TodJ............UZ5AibidvHmnGLfNQ5AibhdvHmnGL........fpndS8.fNQO0w96hsec6LV2E7UhO0jWdbCW2WKdrC+iS8r.....fDY7hlBZlrQ+82arz1ij5Y.klwKVXpm..uKKpnYLX8ZodFPonVs9bHARVonsCIP...........f4a5AibhdvH2nGLfNQ5AibhdvH2nGL........fpFWhwvGfierSD20T2uKzX.....xXSL4nodBPoon8vodBPoYv50hEIRVfNTNTcHm36bQNYzwZ3fIB...........XdlmMQxI5Aibhdv.5joGLxI9NWjSzCF........PUiKwX3rvY5BM9.6+HodV.....v7nFsVPzr0fodFPoQvfjSbHs.zIymISNoYqAiFsVPpmATZlX4dOd...........f4K5Aibim8bxI5ACnSlOSlbhdvH2nGL........fpDWhwvGRu0EZ7W7h9pwGerMFacK2Z7.68QR8r.....f4XKcBAMS9XjwFJpWefTOCnzTztUpm..umpWefXjwFJ0y.JMsEwOYjwW5BS8D............przCF4D8fQtQOX.cxzCF4F8fQNQOX.........UItDig4.m9jyD26t2WrkMdStPiA....nhonsCsBxGESHfexGiujE5PZAnimOalbx3EMS8DfRS85CDiuDGbE............yGzCF4DOy4jSzCFP2.e1L4D8fQNQOX.........UItDig4XtPiA....n5nXhgiZ05K0y.JE82euwRaORpmATZbnDAzMXosGI5ue+w5SdnVs9hhI74yjO76iB...........L2SOXjSzCF4FO+s.cCzCF4D8fQtwuOJ........PUgmtEXdza+BM9WpuKI9xa7Fi6Y2OTb5SMSpmF.....LKTztUpm.TZFunYpm.TZFrdsXQdMOPWBeFM4DeGLxIKpnYLX8ZodF............UJdVDIm3YMmbhdv.5l3ynIm36fQNQOX.........UEtDigRzCt2CDW6Vts3i+w1nKzX.....5vMX8Zwni0H0y.JMSL4nodBPoon8vodB.Lq4ynImL5XMDwOYkwKVXpm............PkgdvH23YMmbhdv.5l3ynImnGLxM5AC........nJvkXLjHtPiA....ny1DKWbfjOZzZAQyVCl5Y.klh1sR8D.XVqYqAiFsVPpmATZ7cwHm3fIB...........XtimAQxI5Aibidv.5lnGLxM9tXjSzCF........PUfKwXnCva+BM9ydAWcbmS8shm5XOapmE.....Ysh1Cm5I.kl1BCjLx3KYgQ85Cj5Y.vYEeVM4jwW5BS8DfRS85CDiL1PodF............UB5AibhmwbxI5ACnajOqlbhdvHmnGL........fp.WhwPGlG+vOYr8qamwpl7JbgFC....PhTLwvQsZ8k5Y.kh96u2X7hlodFPoY7BgvBz8wmUSNod8AhwWhOul7QwDsR8D............55oGLxI5Aibidv.5F4ypImnGLxM5AC........namKwXnC167BMF.....JGBZlbx3EMcHsP1n+96MVZ6QR8L.3rVsZ8EESLbpmATZJZ606jOVZ6Qh962ivE...........vGE5AibhdvHmnGLftU5AibidvHmnGL........ftc9S7D5vcIaX0wsuqsEeq+22VpmB.....YgAqWKVTQyTOCnzLwjil5I.kFAvBzMqncqTOAnzrnhlwf0qk5Y.klw8OGB...........fOzzCF4F8fQNQOX.cyzCF4D8fQtQOX.........cy5O0C.3c6R1vpi0ug0D+1W5uYzb3FodN.....jUDzL4jFsVPzr0fodFPowgzBP2rQGqQLX8ZwK+RuRpmBTJFuXgwS+j+jTOCnTLwjiFOySepTOC...........ftR5AibhdvH2nGLftY5AibidvHmnGL........ftYtDigN.MGoQr9MrlXMqcEt3hA....HwJZ2J0S.JMKcBGRKjOFYrgh50GH0y.fORlX4iF+nG+DodFPoXhIG0gVAYilsFLZzZAwL+C+rTOE...........ftN5AibhdvHmnGLfp.8fQNQOXjSzCF........P2LWhwPh7VWbwetMrlX8aXModN.....PDw3KYgBZlrRQaGZEjOJlvgRDP2uh1C6PqfrQ85CDiL1PwIe9WL0SAJEsW9nweygelTOC...........ftJ5AibidvHmnGLfp.8fQNQOXjazCF........P2JWhwPIxEWL.....c1DvO4jhIFNpUquTOCnTze+8FKs8HodF.7QVsZ8EiujEFO2y9SS8TfRQwDsbnUP1X7hlQ+O1IhW8Ue8TOE...........ftF5AibhdvHmnGLfpB8fQtQOXjSzCF........P2JWhwv7LWbw.....zcXv50hEUzL0y.JMEsak5I.kFGJQ.UIEsG1gVAYik1dj3GIhexD0p0WLdQy3Yd5Sk5o............zUPOXjazCF4D8fATknGLxI5Aibhdv.........5V4RLFlGbNKawwZ9LqzEWL.....cQDzL4jAqWKFcrFodFPow6wCTkrnhlwf0qEu7K8JodJPonn8vwS+j+jTOCnTTztkCsB...........fYIsBPNQOXja7d7.UI5AibidvHmnGL........ftQtDig4HmyxVb74tz0DaZyWbb9q7bS8b.....fyREsak5I.klIV9nodBPooQqEDMaMXpmA.yoJZOb729CetTOCnT3Pqfbxni0vASD...........vrjdvHmnGLxI5ACnJROXjSzCF4D8fA........zMxkXL7QfKtX.....pFFYrgh50GH0y.JMEsGN0S.JMscHs.TAUztkCsBxFMaMXzn0BhY9G9YodJPoXhkOZ7id7Sj5Y............zQSOXjazCF4D8fATEoGLxI5Aibidv.........513RLFNK4hKF....fpmhIZk5I.klhIFNpUquTOCnTze+8FiWzL0y.f4b0qOPLxXCEm74ewTOEnTzd4iF+MG9YR8LfRQQ6gcnU............7APOXjSzCF4D8fATUoGLxM5Aibhdv.........513RLFlENuUt7XMelU5hKF....fJn96u2XosGI0y.JMiWrvTOAnzLdQSGRK.UVESzxgVAYiwKZF8+XmHd0W80S8Tf4c0p0WL9RVX7bO6OM0SA...........nijdvH2nGLxI5ACnJSOXjSzCF4D8fA........zswkXL7d37V4xiMs4KIV+ktln8xVRpmC.....LOon8vodBPoYv50hEUzL0y.JMSL4nodB.LuYosGI9Qh3mLQsZ8EiWzLdlm9TodJPonn8vNzJ............dOnGLxI5Aibidv.pxzCF4D8fQtQOX.........cSbIFCuMKaxyI9stnUEepO8JiwVzHodN.....PIPPyjSbHsPNoQqEDMaMXpmA.yqJZOb7zO4OI0y.JEEsa4PqfrwhJZFCVuV7xuzqj5o............zwQOXjSzCF4D8fAjCzCF4D8fQNQOX.........cSbIFS16st3huvUshX7EKPA.....xIiL1PQ85Cj5Y.klh1sR8DfRS6k6el+.UeSL4nNzJHaL5XMDwOYkh1CG+s+vmK0y............nihdvH2nGLxI5ACHGnGLxI5Aibidv.........5V3RLlrjKtX.....HhHJlP.+jOFeIKzgzBYkwKZl5I.v7t50GHZzZAwL+C+rTOEnTLwxGM9QO9IR8LfRQQ6VNzJ............dGzCF4D8fQtQOX.4.8fQtQOXjSzCF........P2BWhwjM9jq5SDW3mdEwE9oWQLzPCl54......IV+82arz1ij5Y.klh1Cm5I.klhIFNpUquTOC.JEsW9nweygelTOCnTTzdXGZEjMpWefXjwFJN4y+hodJ............cDzCF4F8fQNQOX.4D8fQNQOXjSzCF........P2BWhwTo4hKtbb5SMSbpSd5TOC.....NqLdQyTOAnzLX8Zwh7ZdxHEsak5I.PoY7hlQ+O1IhW8Ue8TOEXdWsZ8EiujEFO2y9SS8TfRQwDsbnU............7OROXjSzCF4F8fAjSzCF4D8fQtQOX.........cCbIFSkiKt3xyA1+Qhu4ten3A16iDm9jyj54.....vYkIlbzTOAnzTzd3TOAnzLX8Zwni0H0y.fRSsZ8EiWzLdlm9TodJPonn8vNzJHarz1iD+HGLQ............QD5Ai7hdvHmnGLfbidvH2nGLxI5AC........nafKwXpDtjMr5328Kut3e8+1OoKt34YO0wd13At+GI9ilZ533G6DodN.....7gRiVKHZ1x+bjHeTztUpm.TZlX4NTh.xOSL4nNzJHarnhlwf0qEu7K8JodJPonn8vwS+j+jTOC...........fjROXjazCF4D8fAjizCF4D8fQtQOX.........c5bIFSWolizHV+FVS741vZh0ug0j54jEtmc+PwCr2GIdv8dfTOE.....9HqsflIiLxXCE0qOPpmATZJZObpm..ktlsFTD+jUJZOb729CetTOCnTLwji5Pq............xd5AibhdvH2nGLfbjdvH2nGLxI5AC........nSmKwX5Z3hKt78XG9GG+QS8shGXuORb5SNSpmC.....yYFbnZodBPoYjwFJ0S.JU0p0Wpm..IwfC4Pqf7wHiUO0S.JMNDBA...........zCF4E8fQtQOX.4J8fQNQOXjSzCF........PmNWhwzQyEWb46zmZl3a9G+PwezTSGG+XmH0yA.....................................fOBbIFSGGWbwowCr2GItmc+PwCt2Cj5o......................................vbDWhwzQ3bV1hiO2ktlXSa9hiyekmapmS13wN7ONtmc+Pw8r68Em9jyj54......................................vbLWhwjLt3hSiSepYhu4e7CE2ytev3wO7Sl54......................................v7HWhwTpbwEmNOvdej3OeuORbu6deodJ......................................TRbIFy7NWbwoyScrmMtyolN9yu+GIN9wNQpmC......................................kLWhwLu37V4xiMs4KIVymYEt3hKYm9TyD+Y2+eUbmSMc73G9IS8b......................................HgbIFybl25hKd8W5Zh1KaIodNYmCr+iDeyc+Pw8t68k5o......................................PGBWhw7QhKt3z5oN1yF+I+wOX7M289hierSj54......................................PGFWhwbVyEWbZc5SMS7mc++Uwext2Wbf8ejTOG......................................5f4RLlyZ+929WIV8ZWQpmQ14.6+Hw2b2OT7.68QhSexYR8b....9+yd2ewVm2222w+VQJJcJCCY.FhSQlgqlKPPcbk7luRZWnk.D6zqbTCBbAFZsWARQVuwvyIWlD2scWRZpxEoC1ColXX.VNHxha.1TRKNVFvTRY0RlTjBqRQ+ghgl8HMkw+niDkpI4tosXcv1jRmCO+d98760qqLLeL4G.ef7iIva7E.................................fLfiXLTgMyzMiQOzXwKr+CFyN8US8b......................................Hy3HFCUPGX3iDiNxXwgG43odJ......................................jwbDigJhoF+BwKr+WMFcjwhkluUpmC......................................0.NhwPBszBshW9kNRbfgObb1wuTpmC......................................0LNhwPBL5HiEGX3iDGdjim5o......................................PMliXLzkL03WHNvvGINvvGMVZ9VodN......................................T.bDigMQKsPq30NzaGu39OXb1wuTpmC......................................EFGwXXSvniLV75iLV7iG9nodJ......................................TvbDigNjYltY7h6+fwqenwhYm9podN......................................fiXLzNVZgVwqcn2Ndw8ev3rieoTOG......................................3eDGwX3dvwO1DwKO7QhQGYrXo4ak54.......................................efbDigMnYltY7JuzgiWd3iFyN8US8b......................................f0kiXL7QXoEZEu1gd63UF9nwwO1DodN......................................vcEGwX3CvLSOW7c+S+uFiNxXwRy2J0yA......................................tm3HFC+c9ee0+Owe0ImHd8Qdyn0MtU7Z+3Sm5IA......................................sEGwXJdu0a7yi+pSLQ7Nm7L+C+8ZznQBWD......................................zY3HFSQZ5KMa75+2dy3cN4Yha15VodN......................................vlBGwXJF27lKGu0O8jwa8FmLl9hyl54.......................................a5bDio16cN4Yhi8SOY7Nm7LodJ......................................PWkiXL0RSeoYi25mdx3sdiedbyV2J0yA......................................RBGwXpMZciaEuyO+Lwn+2eyX5KNapmC......................................jbNhwj8FcjwhWejwhod2+Ww8c+8m54.......................................UFNhwjklY5lwKt+CFu9gFKlc5qFQDwCsq6OwqB......................................pVbDiIarzBshW6Puc7JCez33GahTOG......................................nxyQLlJuierIhWd3iDiNxXwRy2J0yA......................................xFNhwTIMyzMiW4kNb7xCezX1ouZpmC......................................jkbDioR4.Cej3UF9nwwO1DodJ......................................P1yQLljapwuP7B6+UiQGYrXo4ak54.......................................0FNhwjDyLcyXzCMV7B6+fwrSe0TOG......................................nVxQLltpCL7QhQGYr3vib7TOE......................................n1yQLlMcSM9EhCL7QhCL7QikluUpmC......................................TLbDiYSwRKzJd4W5HwAF9vwYG+RodN......................................PQxQLlNpQGYr3.Cej3vib7TOE......................................n34HFSaaloaFu39OXbfgOZrz7sR8b.......................................963HFy8jkVnU7ZG5siWb+GLN63WJ0yA......................................3CfiXL209lO6OzgKF......................................x.NhwbWyALNuLvP8G6Yu6Ld3c8OK9rOxuUL3PerMkeNNt0......................................UONhwPM0t26Niu5yru3K9D6oq7yavgFnq7yA.....................................fMNGwXnl4g10Nh+Ce++jX26cmodJ......................................jXNhwPMxW4o9Bw+wu++1XfA6O0SA.....................................fJ.GwXnl3wehcG6+G80S8L......................................nBYKod..suO8C7Iieve42H0y......................................fJFGwXnF3q+s+ChAFr+TOC......................................pXbDigL2m9A9jwS9TOVpmA......................................UPNhwPl628KsmTOA......................................pnbDigL2d16tR8D......................................nhxQLFxbCNzGK0S......................................fJpdS8..ZOO7i7f2UO+LS2LF8PiEKN+RwjiewXw4a0Q1wjiegNx2G......................................5bbDigL2.C1+F54VZgVwSuumON9wlXSdQ......................................TUrkTO.f1yTieg08YlY5lw99bOmCXL.....................................PgwQLFxbKNeq08YF6MGON63WpKrF......................................pRbDigL2ju6EV2mYriMQWXI......................................T03HFCYtIGe8OhwCNT+cgk......................................PUiiXLj4FcjwhkVn0G4yrm8tqtzZ......................................nJwQLFxbKMeq3E9y+IejOy+x+U6Jdncsitzh......................................npvQLFpAdgevghoF+Bene8AFr+3U+YeOGxX.....................................fBiiXLTCrz7shm4ey2IVZgVenOy.C1e7+3T+mhu+O54bLiA.....................................JD8l5A.zYb1wuTruO2yEu5O66ECLX+enO2S9TOV7jO0iEQDwLS2L9kWtYGQ8TOsB...B.IQTPT4m+27Y+gwYG+RcjuW......................................zY3HFC0Hmc7KEe9+4es3f+ruab+Ov8stO+8+.22F541HFbnA5Hee......................................nyYKod..cV+wOyuWG6vDC.....................................Pdq2TO.fNiAFp+3fuw2I9r65AS8T......................................nhXKod..cFuzAedGvX......................................9GwQLFpA9JO0WH18d2YpmA......................................ULNhwPMvW+a+Gj5I......................................PEjiXLj4d7mX2w8+.2WpmA......................................UPNhwPlaO6cWodB......................................TQ4HFCYtG9QdvTOA......................................pnbDigL2Gen9S8D......................................nhp2TO.f1ymcWO3c0yO5HiES8t+hXxwuXr37s5X6XxwuPG66E......................................cFNhwPlaoEZECLX+q6yM03WHd5887wrSe0tvp......................................nJXKod..smIe2KrtOyLS2L9897eCGvX.....................................fBiiXLj4txk+aV2m4UdoCGKMeqtvZ......................................nJwQLFxbicrI1.OyY5BKA.....................................fpFGwXHyM5HiEKsPqOxm4iOT+co0......................................PUhiXLj4VZ9VwK7m+S9Hel8r2c0kVC......................................UINhwTab8qtTpmPx7B+fCESM9E9P+5+9O8iEe5G3S1EWDcC8ss9R8DftlUVcsTOA...............nCpj6AixjdvnjnGL...............pWzCFkF8fQIQOXPYwQLlZilyMer8FaO0yHIVZ9VwSuumOVZgVefe8AFr+3kd0m2gLtlY0UR8BftmY9EWO0S................5fJ4dvnLoGLJI5AC..............f5E8fQoQOXTRzCFTVbDioV4FKbmTOgjY1ouZruO2yEyLcyOvu9mcWOX7+7h+Wh+z+ruV7P6ZGc40wlgyO0G7+tFpiN63yD8ss9R8L...............fNnRtGLJO5AiRhdv...............n9QOXTRzCFkD8fAkkdS8.fNoycl2KdnG8Sk5Yz08beq+0+C+0idnwhe+m9whAFr+Ovm8q9L6K9pOy9hHh33GahN1F9lO6OLN63Wpi88i02kOey329Q9Mhku0xodJPWwpqj5E................cRkZOXTlzCFkF8fA..............P8hdvnjnGLJM5ACJGNhwTqzbt4iGswNhacqak5ozU8be6+v6o+418d2YGaCCNz.cruWrwciEtSzaeodEP2w4mpYriOymH0y................5PJ0dvnboGLJI5AC..............f5E8fQoQOXTRzCFTN1RpG.zoc8q0J0S.5ZN2YduTOAnq4xmuYz217+UN...............0I5AiRhdvnjnGL...............pezCFkD8fQIQOXP4vQLlZmIO0UR8DftllyMeznQiTOCnq4lK89odB...............PGjdvnjnGLJM5AC..............f5E8fQIQOXTZzCFTFbDio1o0hK6k1nnb8q0J0S.5ZN2YduTOA...............nCROXTZzCFkD8fA..............P8hdvnznGLJI5ACJCNhwTKM2LKj5I.cMSdpqj5I.cMMma9X6M1dpmA...............zAoGLJI5AiRhdv...............n9QOXTRzCFkD8fAkAGwXpkN8ItXzSu8j5Y.cEsVb4nQiFodFPWyu5Z2L0S................5fzCFkD8fQoQOX...............TunGLJI5AiRidvf5OGwXps5omsl5I.cMW+ZsR8DftlIO0UR8D...............fNL8fQIQOXTRzCF...............0O5AiRhdvnjnGLn9yQLlZqY9EWO0S.5ZN4adtnmd6I0y.5JZs3xQiFMR8L...............fNH8fQIQOXTRzCF...............0O5AiRhdvnjnGLn9yQLlZqyN9LQeaquTOCnqomd1Zpm.z0b8q0J0S................5fzCFkF8fQIQOX...............TunGLJM5AiRhdvf5MGwXp0VckTu.n64pytXpm.z0L4otRzSu8j5Y................cP5AiRhdvnjnGL...............pezCFkD8fQIQOXP8Vuod.vloyOUyXGelOQpmwltu7m+aj5IDSN9ER8DJdm9DWLd7u7Ni6b66j5o.a5Zs3xQO8r0Xk22uMJ...............pKJkdvfHzCFkE8fA..............P8idvnjnGLJI5ACp2bDioV6xmuY7Y148U6eosierIR8DnhXUuuFEjqN6hwP+S5K0y................5PJkdvf+d5AiRhdv...............ndQOXTZzCFkD8fA0WaI0C.1rcykd+TOAnq47S0L0Sfr2pod.aXm9DWL5o2dR8LH6kOelGZe97N.............T8oGLJI5Ai1W9zJfdvnyHe9LOz974c.............n5SOXTRzCFsu7oU.8fQmQ97Y9RhiXL0dm6LuWpm.z0b4y2L5aa8k5YPFakX4Hmdosd5YqodBj4d+0Zk5I.cM97N.............jCzCFkD8fQ6ROXTZzGCkDedG.............xA5AiRhdvncoGLJM5ioZxQLlZulyMer8FaO0y.5ZtysymWvjpob5k19qmXtTOAxbqE2I0S.5Z74c.............HGnGLJM5Ai1kdvnjnOFJI97N.............jCzCFkF8fQ6ROXTRzGS0jiXLEge00tYpm.z0b124Wl5IPlKmdosKe9lQeaquTOCxXqE9E6P4XsXsX031odF..............qK8fQIQOXztzCFkD8fQIQOX.............PtPOXTRzCFsK8fQIQOXUSNhwTDl7TWI0S.5ZZN27w1ar8TOCxX41Kss5JodAj6VM9aS8DftlUWa4TOA.............f0kdvnjnGLZW5AiRidvnjnGL.............HGnGLJI5Ai1kdvnznGrpGGwXJBsVb4nQiFodFPWyMV3NodBj4xoWZahS5WDEsmUW6lodBPWyZw6m5I..............rtzCFkF8fQ6ROXTRzCFkD8fA.............4.8fQoQOXztzCFkD8fU8zapG.zsb8q0J90+Xk2c6dfg5Od3c8fwd16uS7wGZf3gejGbS4my27Y+gwYG+RaJeu4t24Ny6EOzi9oR8LHis5Z2L1xu1fodFaHMma93eQieyX4asbpmBYJQ7SIYsX0TOA.............fMjRsGLJS5Ai1kdvnjnGLJI5AC.............xE5AiRhdvncoGLJI5Aq5wQLlhwjm5Jwt+7OXrx6uRpmRWwi+D6Ndxm5whu3SrmtxOuAGZftxOG1XZN27wi1XGwst0sR8THSkauz1MV3NQu8k5UPtRD+TZVItYzS7qm5Y..............7Qpz5AixldvncoGLJI5AiRidv.............fbfdvnjnGLZW5AiRhdvpd1RpG.zszZwkid5YqodFa5dncsi3m7Fem3u7fOeW6.FS0z0uVqTOAxX41Kscty7dodBj4VItYpm.z0r5Z2N0S..............XcUJ8fA+8zCFsC8fQoQOXTRzCF.............jCzCFkF8fQ6POXTZzCV0hiXLEkqN6hodBap9JO0WHd0e12K18d2YpmBU.Sdpqj5IPla0HehZt4byGMZzH0yfLlH9ojrVrRpm..............vFRcuGL3+W5Ai1kdvnjnGLJI5AC.............xE5AiRhdvncoGLJI5AqZwQLlhxoOwEid5smTOiME6du6L1+O5qGCLX+odJTQzZwki9111S8LHisxZ2L0S3tx0uVqTOAxXh3mxxZQDql5Q..............rtpy8fA++SOXztzCFkD8fQYQOX.............PdPOXTRzCFsK8fQIQOXUKNhwTb5omsl5IzwMvP8Guzq97odFTAc0YWL0SfLVt8RaSdpqj5IPVSD+TVVIxqeQT.............P4pN1CF7gQOXzNzCFkE8fQYQOX.............PtPOXTRzCFsC8fQYQOXUINhwTb9qmXtTOgNt+8+YesXfA6O0yfJnSehKF8zaOodFjsVK0C3tRqEWNZznQpmAYLQ7SIY00tSpm..............vFRcrGL3Cidvn8nGLJK5AiRhdv.............fbgdvnjnGLZO5AixhdvpNbDio3b4y2L5aa8k5Yzw7oefOY7jO0ik5YPEVO8r0TOAxXqD2H0S3txbyrPpm.YLQ7SIYsX0TOA.............fMj5VOXv5QOXzNzCFkD8fQIQOX.............PtPOXTZzCFsC8fQIQOXUGNhwTjVckTufNme2uzdR8Dnhalew0S8DHikauz1oOwEid5smTOCxTh3mxxZwpweapGA.............vFRcpGLX8nGLZG5AiRhdvnrnGL.............HenGLJI5Ai1gdvnjnGrpCGwXJRSbxqj5Izwrm8tqTOAp3N63yD8ss9R8LHSkiuzVO8r0TOAxVh3mxxpqsbpm..............vFRcpGLX8nGLZG5AixhdvnrnGL.............HWnGLJI5Ai1gdvnrnGrpBGwXJRMma9X6M1dpmQGwfC8wR8DHCr5JodAjuxuWZ6pytXpm.YLQ7SIYs3NodB..............aH0odvfMB8fw8N8fQYQOXTRzCF.............jKzCFkF8fw8N8fQYQOXUC8l5A.oxMV3NQu8k5Uz99m9ade20+yb7iMQL1a9tczcbkK+2zQ+9Qm04mpYriOymH0yfL0pqsbrkessl5Yrgc5Sbw3w+x6LtysEiM28DwOkj0hUS8D..............1vpK8fAaD5Ai1gdvnjnGLJI5AC.............xI5AiRhdvncnGLJI5AqZvQLlh04Ny6EOzi9oR8LZa2+CrwOhweq+c+EwAF9nwRy2ZSbQTEc4y2L9sejeiX4asbpmBYnb7k1VckTu.xUh3mRypwsisDaK0y..............XcUW5AC1HzCFsC8fQIQOXTZzCF.............jKzCFkD8fQ6POXTRzCV0vVR8.fTo4byGMZzH0ynsMyzM2PO2y7G8ci+y6+PNfwErarP98hlTMjiuz14mZi8mMBePVMtcpm.z0r5Z9EXB.............4g5ROXvFkdv3dkdvnznGLJI5AC.............xE5AiRidv3dkdvnznGrzyQLlh10uV9ePe+kWd8+ODO03WH9wCeztvZnJ6bm48R8DHikauz1kOeynus0WpmAYJQ7SIYs38S8D..............1vpC8fAaT5Ai1gdvnjnGLJI5AC.............xI5AiRhdvncnGLJI5AK8bDionM4otRpmPaax28Bq6yL1aNQWXIT00bt4is2X6odFjoxwWZ6N2d0TOAxTh3mRxZg+rR.............HeTG5AC1nzCFsC8fQIQOXTRzCF.............jSzCFkD8fQ6POXTRzCV54HFSQq0hKGMZzH0ynsL1wFecelEmeotvRHG7qt1MS8DHSkiuz1YemeYpm.YJQ7SoYkv6G..............4g5POXvcC8fw8J8fQIQOXTZzCF.............jKzCFkF8fw8J8fQIQOXomiXLEu4lYgTOg1xgG43wLS27i7Y93CMPWZMT0M4otRpm.Ypb7k1ZN27w1ar8TOCxTh3mRxpqc6TOA.............fMrbuGL3tgdv3dkdvnznGLJI5AC.............xI5AiRhdv3dkdvnznGrzxQLlh2oOwEid5smTOi1x25Y+K9H+5ewuzd5RKgptVKtbznQiTOCxT43KsciEtSpm.YJQ7SIYsXkTOA.............fMr5POXvFkdvncnGLJI5AiRhdv.........3+K6c2EacWemmG+q8ww1m55IYmYWR0xjIPyEcEvPPUZ2UIUZyrUCOz4lvChkQZ0R5fVpf4hxzR4xcxD1dGOsoWzoBFQwSTk3A0.4lN.YTWhV0jfnSB1jDUR.SbRMYryFF+PbFm.9b1K5NzVfjXe747+24+42qW2fD9j+++.bv4erz6yO....JSzCF4D8fwxgdvHmnGrzxgXLDQToxJR8DVVdkcsu34F5Uune80r1UGO3e4+0BbQzN6LmdtTOAJoJiOz1A1+nodBTRIhexK0iHpk5Q..............rnU16ACVJzCFMJ8fQNQOXjWzCF.............TtnGLxI5AiFkdvHmnGrzxgXLDQL43yj5Irr8stmGKd4cs2K5W+A25cGa6wuuXvUMPAtJZG85u1QiJ8TI0yfRnx3CsM2LyGUqVM0yfRIQ7SdYg3bodB..............KZcB8fAKV5AiFkdvHunGLxK5AC.............JSzCF4D8fQiROXjWzCVJ4PLFhHN39GM5sudS8LV1tmaeawSs8W7h90u2G31he9n6H11ieewF1z0GW4ZuhBbczNoRkUj5IPoT47g1NyomK0SfRJQ7SNoV8Kj5I..............rn0ozCFrXoGLZL5Ai7hdvHmnGL.............nLQOXjazCFMF8fQdQOXoSOod.P6hZKjl666uvqTn2uAW4.w89.2VbuOvs0Tut2wW8gh8smQZpWSZclb7YhU8u1evbV5VHNWTI97odFKIG5.mH9O7e5pR8LnDpV8KDU5J0q.JF0Kg+Pn.............f7Vp5ACRA8fQiROXjSzCF4D8fA.............kM5AibhdvnQoGLxI5AKc5N0C.ZWbrCOQpm.TXN39GMpzSkTOCJgpU+BodBKYyMy7Qu80epmAkPh3m7R8nV7godD..............KZ5AibhdvnQoGLxI5Ai7hdv.............fxE8fQNQOXznzCF4D8fkNNDig++N9wlH5sudS8LfBSWg+PJrzUVensIGelTOAJkDwO4kZ0mO0S..............XQSOXjazCFMB8fQdQOXjWzCF.............TlnGLxM5AiFgdvHunGrTwgXL7a3by9QodBPg4XGdhTOAJkJmOz1A2+nQkd7GLmkNQ7SNodbgTOA.............fkD8fQNQOXzXzCF4E8fQNQOX.............PYidvHmnGLZL5Ai7hdvRCGhwvugi9Vuepm.TXN9wlH5sudS8LnDpr9PaUprhTOAJgDwO4j5QsTOA.............fkD8fQNQOXznzCF4D8fQNQOX.............PYidvHmnGLZT5AibhdvRCGhwvugIN0TQ+U6O0y.JL0VH0Kfxnx5Cs81ibpTOAJgDwO4lZw4S8D..............VzzCF4F8fQiPOXjSzCF4F8fA.............kI5AibidvnQnGLxI5AKMbHFCeBmc5x4u4KzHF40OQpm.kPk0GZ63Gahn295M0yfRHQ7SNoV84S8D..............VRzCF4D8fQiPOXjazCF4D8fA.............kM5AibhdvnQnGLxM5Aq34PLF9DNv9GM0S.JLSbpoh9q1epmAkPk0GZq1BodATFIhexI0iOJ0S..............XIQOXjSzCFMJ8fQNQOXjSzCF.............T1nGLxI5AiFkdvHmnGrhmCwX3SXtYlOlc5x4u4KzHN6zWH0SfRnx5CscrCOQpm.kPh3mbR8nVpm..............vRhdvH2nGLZD5AibhdvHmnGL.............nrQOXjazCFMB8fQNQOXEudR8.f1QGX+il5I.EFuemFQY8g1N9wlH9mOqePTrzHhexMKDmKpDetTOC.............fEM8wPNw62oQnGLxI5Aibidv.............fxF8wPNw62oQnGLxI5Aq30cpG.zNZtYlO0S.JLd+NMhx7CsMwolJ0SfRnEhyk5I.ElZ08CyA.............JWzGC4DuemFgdvH2nGLxI5AC.............JazGC4DuemFgdvH2nGrhUOod.Pt6eakaN0S.fFxBw4hJwmK0y.JD0pe9nRWd+NEuO5BE+OTn5wBE98DhHhpUql5I.ElJ8TINxvmL0y..............xH5AibhdvHUzCF4D8fQNQOX.............PQSOXjSzCVwp6TO...JmpU+7odBPgQD+jJGX+ilf6Z8Hhh+CKC3LmdtTOAnvToxJR8D.............fLidvHmnGLRE8fQNQOXjSzCF.............TzzCF4D8fUrbHFC.PCwCsQdQD+T7pVsZL2Lymj68Bw4Rx8k7UkdpDu9qczTOCnvbx24LodB.............PlQOXjWzCFEO8fQNQOXjazCF.............TzzCF4E8fUjbHFC.PCxCsQdQD+TzNyomKY26Z0uPxt2jmpTYEodBPgo295MNxvmL0y..............xN5Ai7hdvnnoGLxI5Aibhdv.............fzPOXjWzCVwwgXL..MLOzF4DQ7SQpROUhW+0NZxt+0iER18l7zIemyj5I.ElZ9Vr.............PhnGLxI5AihjdvH2nGLxI5AC.............RE8fQNQOXEmdR8..V9d+EdkK4W+N9pOTru8LRCe8ux0dEwe5VtwHhH9cV0fw0cCq6S8Z9529eUL6Ty0v2CfxoZ0uPToqTuBnXHheJRUprhTOgnV7gQ2Q52Ac95sudiiL7uH0y.JLi75mH0S..............xT5AibhdvnHoGLxI5Aibidv.............fTQOXjSzCVwwgXLvk03iMY7M9KtiXvUNvE80bKadiwKLztKvUAzNndTK0S.JTh3mhxjiOSpmPTq97Q2c486z5UyOCHxH8Ws+XhSMUpmA.............jozCF4F8fQQQOXjSzCF4D8fA.............ojdvH2nGrhQ2od..kCG5Me2K4W+5V+5Jnk.zdodTK9vTOBnvTq97odBjA5sudiCt+QS8Lh5wER8DHSbrCOQpm.TXN6z9dq.............PJoGLxK5AihfdvH2nGLxI5AC.............RK8fQdQOXECGhw.MEW2M3PLFxUdnMxIh3mhPsER8B9UpG0R8DHCze09iieLenUP93nu06m5I..............YN8fQNQOXTDzCF4D8fQtQOX.............PpoGLxI5AqX3PLFno32+pVcpm.Ph3g1HmHheJBG6vsOA7WKNepm.c3N6zdNBxGUqVMl3TSk5Y..............YN8fQNQOXTDzCF4D8fQNQOX.............P6.8fQNQOXECGhw.KJW2MrtK4WeMq0gXLjq7PajaDwOsR8Ws+33GqM5Csh5ym5IPGti9Vuepm.TXNyomK0S..............POXjczCFsR5AibidvHmnGL.............ncfdvH2nGrVOGhw.WVa6wuuXvUNPpmAPaLOzF4DQ7SqzYm9BodB+VpGeTpm.cvpVsZLwolJ0y.JDU5oRbnCbhTOC.............fHB8fQdQOXzJoGLxI5Aibhdv.............f1I5AibhdvZ85I0C.3R6ZV+UGqbUCtrtFW6M7EanecabS+gwsbqek3ZW+5VV2efNe0pOezcW8k5Y.EBQ7SqzQeq2O0S32R8nVpm.cvNyomK0S.JLUprhXtY7C5D.............ZOnGLxI5AiVI8fQNQOXjSzCF.............zNQOXjSzCVqmCwXnM2+ym3OO1vlt9k003ge76uIsF.9r4g1HmHheZUpVsZLwolJ0y3SYg3bQk3yk5YPGlJ8TINzANdpmATXlb7YR8D..............9X5AibhdvnUQOXjSzCF4F8fA.............sSzCF4D8f050cpG.Pmg8smQR8D.RHOzF4lEhyk5IPGnyb54R8D9LUq94S8DnCTkJqHlal4S8LfBQu80abv8OZpmA.............vGSOXjazCFsB5AibhdvHmnGL..........CX7NRA..f.PRDEDU...ncidvH2nGrVKGhw.MESO0YS8D.RLOzF4DQ7SyVkdpDG5.mH0y3yT8XgTOA5.M43yj5I.ElZ91n.............PaH8fQNQOXzroGLxM5Aibhdv.............f1Q5AibhdvZsbHFCzTr28Lbpm.Ph4g1HmHheZ1pTYEwbyLepmwEQ8HhZodDzAo295MN39GM0y.JLG6vSj5I..............7onGLxI5AilM8fQNQOXjazCF.............zNROXjSzCVqkCwXflh+tWZuodB.IlGZi7hH9o4ZxwmI0S3RZg3bodBzAolGYfLR+U6ON9w7gVA.............z9QOXjWzCFMW5AibhdvHmnGL.............nckdvHunGrVIGhw.KaO2PuZL9XSl5Y.jbdnMxKh3mlkJ8TIN39GM0y3RpV8Kj5IPGjicXA7S93rS66eB.............sqzCF4E8fQyhdvH2nGLxI5AC.............ZeoGLxK5Aq0wgXLvxxrSOW7naaGodF.sI7PajSDwOMKcEUR8DtrpGKj5IPGhd6q233GyGZEjON5a89odB..............WT5AibhdvnYQOXjSzCF4F8fA.............syzCF4D8f053PLFXY4a9m8Hw3iMYpmAPaBOzF4DQ7SyxwNb4Hf+ZwGl5IPGfyM6Gk5I.ElpUqFSbpoR8L..............tnzCF4D8fQyhdvHmnGLxI5AC.............Z2oGLxI5Aq0omTO.fxoSN1Dwe1ss03HC+dodJ.sQ7PajapEeXzcrhTOCJw5sudiierRxGZE0mO5tKuemkmi9Vuepm.TXNyomK0S..nk6Cq+OE0ilyGLY8z0JitidaJWKnUXgXtXg5mqobs5J5IVQW+qZJWKnU4B0OcS6Z0aW+aZZWK.........n4ROXjazCFKW5AibidvHmnGL.HGnGLxI5Aibidv.........HOnGLxM5Aq0vgXLvRxgG9cimb6uX7BCs6TOEf1TdnMxIh3mkqyMayItqhP83BodBTxUsZ0XhSMUpmATXNzANQpm..............vkkdvHmnGLVtzCF4D8fQtQOX.............PYfdvHmnGrVCGhwPatmcnWM16q8lWxWyCt069R90etgd03Wd7+wFdCSO8bwgeyQiCM76FyN0bM70AHO3g1HmHheVtN5a89odBKZ0iZodBTxclS6OKA4id6q+XtYlO0y..............3xROXjSzCFKW5AibhdvHmnGL.............nrPOXjSzCVqgCwXnM2KLzturulK2gX7yOzti8smQZVSBfKIOzF4DQ7yxQ0pUiIN0TodFKI0hyGcG8k5YPI0gNvIR8DfByjiOSpm..............vhhdvHmnGLVNzCF4F8fQNQOX.............PYgdvHmnGrVitS8...nyhGZibSs37odBTRclSOWpmvRVs5ym5IPIUu80eL2Ld+C4gJ8TIN39GM0y..............XQQOXjazCFMJ8fQNQOXjSzCF.............TlnGLxM5Aq4ygXL..McdnMxIh3mF0gNvIR8DVxpGeTpm.kTSN9LodBPgoqnRpm..............vRhdvHmnGLZT5AibhdvHmnGL.............nrQOXjSzCVymCwX..Z57PajSDwOMhd6q+XtYJeeux5QsTOAJgpzSk3f6ezTOCnvbrCOQpm..............vRhdvHmnGLZD5AibhdvH2nGL.............nrQOXjSzCVyWOod..Ke+hCe73e5+6LWzu9zSMaAtF.7PajWDwOMhIG+h+ras6VHNWTI9bodFThzUTI0S.JL81WuwwOlOzJ.............fxE8fQNQOXzHzCF4D8fQNQOX.............PYjdvHmnGrlOGhwPGf+cW6UEmbrIhm+Ydk3YGZ2w3iMYpmDPlyCsQtQD+rTTomJwA2+nodFMrZ0mOpzk2uyh2wNr.9IebtY8CqG.............JezCF4F8fwRgdvH2nGLxI5AC.............JizCF4F8f0b0cpG.PywZV6piGbq2c7Fiti3G+Sej3N2xMl5IAj4VHNWpm.TXpU+7odBThToxJR8DVV7Chhkhd6q233GyGZEjON5a89odB..............MD8fQNQOXrTnGLxI5Aibidv.............fxJ8fQNQOXMWNDigNPaXSWer8m96Du8GryXaO98EWy5u5TOIfLjGZibR8XgTOAJQd6QNUpmvxT8H7AWAKRW37duB4i9q1eLwolJ0y..............ngnGLxI5AikB8fQNQOXjSzCF.............TloGLxI5Aq4xgXLzAavUNPbuOvsE+8G3GD69.e+3N2xMFCtpAR8r.xDdnMxK0S8.njn295MN9wlH0yXYagX9TOAJINx+vuL0S.JLevoOWpm..............PCSOXjWzCFKN5AibidvHmnGL.............nLSOXjWzCVyTOod..Eiqc8qK19S+chYmdt3m7R+r34GZ2w91yHodV..PV4BmuVpm.TX5uZ+wDmZpTOCnvbnCbhTOA...............nIROXjSzCF4F8fA..............ji5N0C.nXM3JGHtqsbSwO9m9HwqO5ea7e+At0XvUMPpmE..jENx+vuL0S.JLevoOWpm.TXpVsZL2Lym5Y................MQ5AibhdvHmnGL..............fbkCwXHisl0t53ge76Od6yry3o24ViadyaH0SB..5X0e09iIN0TodFPg4PG3DodBPg4Tmb5TOA...............nIROXjazCF4D8fA..............jq5I0C.n8vsr4MF2xl2XbxwlHd9m4UhmcncGiO1jodV..PGiO3zmK0S.JLUqVMlal4S8LfBQkdpDGb+il5Y................MQ5AibhdvHmnGL..............fbV2od..sWVyZWc7fa8ti2XzcDO8N2Zbma4FS8j..fNBG5.mH0S.JLm5jSm5I.ElJUVQpm................zjoGLxI5Aibhdv...............xYNDiAtntkMuwX6O82Id6OXmw1d76Ktx0dEodR..PoT0pUi4lY9TOCnPTomJwA2+nodFPg4sG4TodB...............PSjdvHmnGLxM5AC..............Hm4PLF3xZvUNPbuOvsEuwn6H18A99wctkaLFbUCj5YA..kFm5jSm5I.ElJUVQpm.TX5sudiierIR8L...............flH8fQNQOXjSzCF..............PtygXLzA3o19KFGd32sPtWW65WWr8m96D+7Q2Q7DO8CFWy5u5B49B..kUU5oRbv8OZpmATXN46blTOAnvTagTu................nYROXjazCF4D8fA..............j65I0C.X4aqe6ePDQDW4Zuh3qcqaL9Za9qDaXSWeK8dN3JGHtqsbSwcskaJN4XSDO012Y7bCs6X1olqkdeA.fxlJUVQpm.TX5sudiiL7uH0y.JLi75mH0S................ZhzCF4D8fQtQOX...............4ttS8..ZdFerIi+ls+Rwc7Uen3K86c6wCbOOZ7x6Zus766ZV6piG9wu+3sOyNim3oev3l27FZ42S..nr3juyYR8DfBSsER8BfhS+U6Ol3TSk5Y................MQ5AibhdvHmnGL...............hnmTO.fViYmZt3EFZ2wKLztiHh3l27FhaYyaL9St0uRL3JGnkceuqsbSwcskaJN4XSDO+y7JwyNztiwGaxV18C..Zm0ae8FGY3eQpmATXF40OQpm.TXN6zWH0S................ZhzCF4F8fQNQOX...............DQ2od..EiWYW6K9V2yiEeoe2aO9i+x2W7Ta+EiSN1Dsr62ZV6piGbq2c7Fiti3Id5GLtx0dEsr6E..ztp1BodAPwo+p8GSbpoR8LfByA1+nodB...............PSjdvHmnGLxM5AC...............GhwPV5HC+dwV+1+f3+3W7ti+8ew+awe429uNN7vuaK69cWa4lh2XzcDa6wuuXvUMPK69...saF40OQpm.TXN6zWH0S.JLUqVMlal4S8L...............flH8fQNQOXjSzCF...............+JNDigL23iMY72r8WJtwu7ed7k98t83AtmGMd4cs2Vx85defaK96OvecbMq+paIWe..ncR+U6Ol3TSk5Y.ElCr+QS8DfByYN8bodB...............PSjdvH2nGLxI5AC..............feEGhw.er0r1qHtt0ut3Zug00BuGqNdw+2OVbma4FaY2C..ncvYm9BodBPgoZ0pwbyLepmATHpzSk30esil5Y................MQ5AibhdvHmnGL...............905I0C.Hstl0e0wcskaNtkaciwZV6pKj64fqbf369D2eb327chiL76UH2S..nncf8OZpm.TXNyomK0S.JLUprhTOA...............nISOXjSzCF4D8fA..............vulCwXHCckq8Jhu1stw3t1xMEW65WWR1vfqbf3G9haK9i+x2eL6TBbC.fNKUqVMlal4S8LfBQkdpDu9q8KR8LfByIemyj5I................MQ5AibhdvH2nGL...............90bHFCYh1gCt3Oo0r1UGeiu4sFO1C+iR8T..flpyb54R8DfBSkJqH0S.JL81WuwQF1GRK...............zIQOXjSzCF4D8fA..............vuMGhwPGrAW0.wsr4MFesMuw3V17FS8b9L8M9Kti3I+duTL6TB6D.fNCezEpEG5.mH0y.JLSN9LodBPgo1BodA...............PyjdvH2nGLxI5AC..............feaNDigNLo3fK9jiMQrl0t5F5W6fq7Ws2WXnc2jWE..jF+ed0ij5I.EliL7IS8DfB0teoQR8D.......fLT2Q+QWcshlx0pqn6lx0gkly+O2U7geXy4ZUegtZNWn1X8z0JS8D9TpTo48u26t6N++a3rePm++L1rzSWCF0iZMkqU2Qy42qfklyMc2QWUp2TtVezE7+6jBMyuuby72u....fhidvHmnGLxM5AC.......RA8fU9oGrkF8fU9oGrEO8fU9oGrxO8fA...r74PLF5PbyadCwsr4MF20VtoB6d9bC8pwyOzti8smQhqbsWQ7MdfaO9S+52TL3JGXIcc13ltdGhw............vmgthJQWQkTOCVFpsPD0xfOrIZV5N5M0S3SYgEZNAoGQD0p07tVsq9ny686KVcE8D92VkaK7QQDej+qXYVy76K2L+8K..............nbROXke5AaoQOXke5AawSOXke5Aq7SOX....KeNDigN.u8Gryk7AGbi5jiMQ77OyqDO6P6NFerI+3+9iO1jwV+1+fXqe6ePbma4Fiu6Sb+K5M8GbUegV0bA.....................................xZNDigN.EwAX791yHwyNzqFuvP69x9Zegg1c7x6ZuwN+oORbsqecW1W+F1z02LlH......................................eBNDiAtjdtgd03o19NiiL76sj90M6TyE29W8ghe9n6nPNjkA.....................................3SygXLvmxIGah34elWIdxu2KEyN0bM70Y1olK9IuzOKtqsbSMw0A.....................................vhkCwXfO191yHwSt8cFuxt1WS6Z9KO9+XS6ZA.....................................vRiCwXHyM6zyE+jW5mEO511QL9XSl54......................................PSjCwXHScxwlHdpsuy34FZ2wrSMWK6976rpAaYWa......................................tzbHFCYlWdW6Mdtgd03U109Jj620cCq6x9Z12dFo.VB.....................................P9wgXLjAlc54hm8Yd03I29NiwGaxB8duXNDimdpyV.KA.....................................H+3PLF5fcxwlHdzssi3k20diYmZtjrguzu6sGQDwF1z0GQDwF2ze3u5u9GcCwuypFHt10utXu6Y3jrM.....................................fNcNDigNPu7t1a7Ta+Ei8smQR8T9X+Ka4e4u9XO7OJkyA.....................................HK3PLF5PL6zyEO4+qeb7rCs6X7wlL0yA.....................................f1.NDigN.Ov87nwKLztS8L......................................nMS2od..KeN.iA.....................................3yhCwX.......................................5P4PLF......................................fNT8j5A.zZcMq+piM9Gs93ZW+5h+fq5KzxtO+O9Ve+3HC+dsrqO......................................KcNDigNPCtpAhuw27Vi+Ke8aNVyZWcgbOW4pFrPtO......................................r34PLF5vbyadCw26G9PwfqbfTOE......................................RLGhwPGj6bK2Xr8m96j5Y......................................PahtS8..ZNb.FC.....................................vmjCwXnCvUt1qH9tOw8m5Y......................................PaFGhwPGfu2O7ghAW4.odF......................................zlwgXLTxckq8JhMroqO0y......................................f1PNDigRtu1stwTOA......................................ZS4PLFJ413lVepm.......................................sobHFCkbqbUe9TOA......................................ZS0SpG.vxy0cCqaI85O4XSDu7Ks2XlolM16ddql1NNzvuaS6ZA.....................................PygCwXnjavUNvh50M6zyEe8a6uJ12dFoEuH......................................ZWzcpG.vxygG9cWTuta6+7C5.LF.....................................Hy3PLFJ4lYp4trul8smQhiL76U.qA.....................................f1INDigRt89Zu4k80bn27cKfk......................................P6FGhwPI2e2t16k80LyTyV.KA.....................................f1MNDigRtiL76E6aOibIeM+9W0WnfVC......................................sSbHFCc.dzssiK4W+O4V+JwfqZfBZM......................................ztvgXLzAXe6Yj3w11e6E8qO3JGHd3G+9JvEA.....................................P6.GhwPGhG6g+QwyMzqdQ+520Vto3G+Sej3JW6UTfqB.....................................fTpmTO.H2sgMc8Msq0yOztiUtpOebKadiWz60aL5NhWdW6M16dFNN7aNZS6denge2X1olqoc8......................................X4ygXLjX+3e5iT32yaYya7hdPG2ntiu5CE6aOizTul......................................r7zcpG........................................zZ3PLF9+wd2O+HYWk2wgOyL0spNbqhtZeaU0TUWVccaRWkDoa.EkMlMHwBjxtHwBVDEP4ufHEj2BYOKhRVEkEIAkMIKRDYERIRQ3EwihhDXiLr.hskCACXIq3gIl.YrmNKPAL1imed6yo666yyJK6Vk9Jb4Qc2Tetu......................................POkiXL.......................................8TNhw......ETU0fROAHa79chDueG..............f9G8BPj386DId+N............PD3HFC.....THSapS6secomAjM+le7iJ8DfrY6oKK8D...............fNjdvHZzCFQhdv.............h.GwX.....fBocy7ROAHalsX2T8jQkdFP1zt85kdB...............PGROXDI5AinQOX.............QfiXL.....PgbjGZEDHdHsPjr7vlT8XOjV..hfoM0kdBP1LawtkdBPVUOYmROA..........fKXzCFQhdvHRzCF.PbnGLhD8fQznGL........3AiiXL.....PAzd77T0vAkdFPVTUMvCsBBki1LqzS..fLY6IGT5I.YyrE65A0BgxlSVV5I...........bAhdvHRzCFQidv..hC8fQjnGLhF8fA........OXbDiA.....Jf1sBZl3v62IRpmrSZ058K8L..HSpmLJs7vlROCHa7fZgH4HO.NA..........dGzGCQh2uSjnGL.fXQOXDM5AiHQOX........vClAkd.Pzcim4aV5IzIt4abqROA....3Ri5I6jlsXZomAjMsh7f.o8XOjV..hli1LK8puxqW5Y.Ywp0Mou9yNHc6a+VkdJv4tpgCRsGOO8xe2eTomB..........PgoGLhF8fQjnGL.f3QOXDI5AiHQOX........vCFGwXnv9zexmtzS.....Hy1bxxROAHal1Tm1qYbomAjMsaudom...Y1p06mppDwOwP0vAoUqaDwOgwAqeBueG..........POXDJ5AinQOX..widvHRzCFQidv........f6uqV5A......DMGsYdom.jMaO4fROAHaVdXSpd7nROC..Jf1syJ8DfrYyodXbRbrZ89o5I6T5Y...........TX5AiHQOXDI5AC.HtzCFQhdvHRzCF........b+4HFC.....jQsGOOUMbPomAjEUUCRqV2T5Y.YyS586..g01SWU5I.YydMiSSapK8Lfro8XOXh..........fHSOXDI5AinQOX..wkdvHRzCFQidv........f6MGwX.....fL5f0OQom.jMqV23gzBgQU0fT6l4kdF..TH0iGklsX2ROCHa789Rjzt85kdB...........EjdvHRzCFQhdv..hM8fQz368kHQOX........v8lOsvvkb+c+yeozIerOT5EdtW787O6Y+ZO2u3u9u4K+Ok99uxqkyoA....7tTOYmzp06W5Y.YylSWV5I.YS61YkdB..TXsalmdsevMK8Lfr3nMySeia7RkdFPVTOdTZ4gMoW8Ud8ROE..........fLSOXDM5AiHQOX..nGLhD8fQjnGL........3dyQLF5Alrac5o9Dej2ye+24eu+7+zuRNmD....vcQ6wBZl3XZScZulwkdFP1r8zUkdB..TXqV2j95O6fzsu8aU5o.m6pFNH0d77zK+c+QkdJPVbzlYdnU...........AjdvHRzCFQidv..POXDI5AinQOX........v6uqV5A.734tc7huat0a7lmyKA....39oc60K8DfrY6IGT5I.YyrE6lpGOpzy..fBqZ3fzp0MkdFP1zt0CmShiUq2OUUMnzy...........HyzCFQhdvHRzCF..ojdvHdzCFQhdv........f2eNhwvkbeqm+EuueM25lNfw....Pos7vFAMSnHVOhj1MyK8D..3BhMmtrzS.xlYKllpmrSomAjMdPs...........whdvHZzCFQhdv..3+mdvHRzCFQidv........f6NGwX3Rte7ab+OPwS1sNCKA....3d4nM9PsSbzd77T0vAkdFPVTUMvCsB..9E1qYbZZi++mk3n8X+9NHN1d5pROA..........fLROXDI5AiHQOX..7NoGLhF8fQjnGL........3tyQLFtj6q9O7u7.80cvg9fh.....kR8jcRqVueomAjMsa86hh3v62A.3cyCzJhj1sWuzS.xl5wiRyVraomA..........PFnGLhF8wPj386..7toGLhD8fQjnGL........3tyQLFtj6q9Ud1GnOaaYsx...H.jDQAQkte6emO947R.....d+zdrflINpmrSZ1hokdFP1HJU..d2Nx2e.AR83QokG1T5Y.YieFP..........HFzCFQhdvHZ7YAD.f2M8fQjnGLhF+Lf........v6kiXLbI22+Udsze6W9e79908zewOa5C+Qayvh.....d2Z2d8ROAHa1bxxROAHal1Tm1qYbomA..WvTMbPp8XQMSbbzFOrNINVstIUUMnzy...........3bldvHRzCFQhdv..3tQOXDM5AiHQOX........v6kiXLzC7E9C+yReqm+EumeMS1sN8m7W9zoISqyzp.....RoTZ4gMo5wiJ8Lfr4nMhyi3X6IGT5I..vETsaEwOwwp06KheBipgCRqV2T5Y...........bNROXDM5AiHQOX..79QOXDI5AiHQOX........v6kiXLzCbq23MS+A+9eozst4adO+59M9nenze0e+eT5fC8AjB....xkmzGhcBj1immpFJTIhgpJgJA.v6uYKllpmrSomAjMdPsPjr4zkkdB...........mizCFQhdvHRzCF..2K5AinQOXDI5AC........9U4HFC8De6m+kS+VG86ktwy7MumecO0m3ij92do+5ze7ewmO8TehORZxz5LsP....HdppFjZ2Luzy.xFQJQjrZciGRK..bOs4DQMSbr8zUkdBP1rWy3zzFeda..........f9H8fQznGLhD8fA.v8idvHRzCFQhdv........feU9zTB8.e9uvu6u3u9Y+ZOWZ054om7v6cPLelO2mJ8Y9bepNaCe5O4SeeOfx....PzHfehj5I6jlsXZomAjMaNUDp..busZ89ouwMdoROCHKpGOJMawtoW6GbyROEHKZ2L2eFO..........zCoGLhD8fQznGL..tezCFQhdvHZzCF........7K4HFC8.e9u3mszS.....3tX6oqJ8Dfro8XOjVHNl1Tm1qYbomA..WvUOdTZ4gMoW8Ud8ROEHKZ2L2CsBBii7Pq...........5kzCFQhdvHRzCF..OHzCFQidvHRzCF........7Kc0RO......f9nYK1MUOdTomAjMsaudom.jMaO4fROA..tj3nMd3tQbztYdppZPomAjEUCGjZOddomA..........PGROXDM5AiHQOX..7fROXDI5AiHQOX........vujiXL.....v4f1M9PqSbr7vFOjVHTVstozS..fKIVsd+T8jcJ8Lfrw2qLQR6VOXh..........f9D8fQjnGLhFeFWA.3AkdvHZ78JSjnGL........3myQLF.....niUUMvCsBBki1HRChi1immpFNnzy..fKQN3vmnzS.xlMmtrzS.xlYKl5ASD..........zSnGLhF8fQjnGL..dXoGLhD8fQjnGL........3myQLF.....ni0tU.+DG0S1IsZ89kdFP13OiG.fGVaOcUom.jM60LNMsotzy.xlMm3A0B..........zGnU.hD8fQz3OiG.fGV5AiHQOXDM5AC........bDiA.....5bsalW5I.YS6wB3m3ndxNoYKlV5Y..vkL0iGklsX2ROCHa1dxAkdBP13A4I..........zOnGLhD8fQjnGL..dTnGLhF8fQjnGL........vQLF.....nSMsoNsWy3ROCHaZ2d8ROAHa1bxxROA..tjxC2PhjUqaJ8Dfrod7nzxC8dd..........3xL8fQznGLhD8fA.viJ8fQjnGLhD8fA........Nhw......cpsmbPom.jMKOrIUOdTomAjMGI1T..dD0tYdppZPomAjEUCGjZO126LwwQalU5I...........7XPOXDI5AinQOX..7nROXDI5AinQOX........DcNhw......cjppAoUqaJ8Lfr4I89cBj1immpFJzT..dz4mWjHocqH9INVsd+T8jcJ8L...........dDnGLhF8fQjnGL..db4mWjHQOXDI5AC.......fnyQLF.....nirZciflILppFjZ2Luzy.xFQ2A.viqMmtrzS.xlYKlJheBkCN7IJ8D...........dDnGLhD8fQznGL..dboGLhD8fQznGL........hLeB5gdfO8m7oK8DRuvy+hkdB....PwI.IhDA7SjTOYmzrESK8L..3Rt8ZFml1TmdiW+MK8TfrXyIKSeia7RkdFPVr8zUouyK7pkdF...........OjzCFQhdvHRzCF..cA8fQznGLhD8fA.......Pj4HFC8.23Y9lkdB....P3MsoNsWy3ROCHa1d5pROAHa1bhGJQ..zM1dxAo+0m46T5Y.Ywp066gVAgQ83QoYK1M8Z+faV5o...........7.ROXDM5AiHQOX..zUzCFQhdvHRzCF........Q1UK8.......5C1dxAkdBP1Lawto5wiJ8LfrY058K8D..nmX05lTU0fROCHKpGOJs7vlROCHaZ2LuzS...........3gfdvHRzCFQidv..nqnGLhD8fQznGL........hJGwX.....fNvp0hvf3PDFDIKOrwCoE..5LUCG3mejP4nMyJ8DfrocybOXh..........fKQ744iHQOXDI5AC.ftjdvHZzCFQhdv........HpbDiA.....dL0d77T0PefzIFppF3gVAghH6..nq0t02eAwwp06mpmrSomAjMdvDA..........WNnGLhD8fQznGL..5Z5AiHQOXDM5AC.......fHxQLF.....3wjfiHR79chj5I6jVsd+ROC..5YlsXpH9ITZO1OGIwwlSWV5I...........7.PeLDId+NQhdv..37fdvHZzCFQhdv........HhbDiA.....dLTOYmzrESK8Lfrocy7ROAHaDWG..mW1bhnlINZ2d8ROAHa1qYbZZScomA..........v8fdvHZzCFQhdv..37hdvHRzCFQhdv........HhbDiA.....dLHzHhjoM0o8ZFW5Y.Yi35..37xQdXvQfTOdTZ1hcK8LfrY6IGT5I...........bOnGLhD8fQznGL..NunGLhD8fQznGL........hFGwX.....fGCBMhHQzEDIKOrIUOdTomA..8TUCGjVdXSomAjMs98mPfrZcSppZPomA..........v6C8fQjnGLhD8fA.v4I8fQznGLhD8fA.......Pz3HFC.....7Hp834opg9.nSLTUMHsZsn5HNNZyrROA..5478aPjztYtH9ILpF52gB..........bQkdvHRzCFQiOe1..bdy2uAQhdvHRzCF........QiiXL.....vin1sBLh3X05FOjVHL94OjV1uzy..fdtUq2OUOYmROCHa76QgHw62A.........fKl745fHQOXDI5AC.fbPOXDM98nPj386........DINhw......OBpmrSZ1hokdFP1r4zkkdBP1HtH..xk1i88cPbztYdom.jMyVL0ClH..........3BF8fQznGLhD8fA.PtnGLhD8fQjnGL........hDGwX.....fGABKhHYZScZulwkdFP1r8zUkdB..DDsaudom.jM60LNMsotzy.xlMm3A.J..........bQhdvHRzCFQidv..HWzCFQhdvHZzCF........QgiXL.....vi.gEQjr8jCJ8DfrY1hcS0iGU5Y..PPTOdTZ1hcK8LfrwOeIQxQalW5I...........7NnGLhDed8HRzCF..4jdvHZ7yWRjnGL........hBGwX.....fGRKOrQPyDJqV2T5I.YSqnh..Hy78ePjrZcSppZPomAjEUCGjVdnemJ..........vEA5AinQOXDI97XC.Pt46+fHQOXDI5AC.......fnvQLF.....3gzQalU5I.YS6wySUCETDwgnQA.H2Z2LWD+DFUCG3AiHgheOh..........vEC9bbPjnGLhF8fA.PtoGLhD8fQz32iH........QfO0C......OjFNxuVMhi5IiJ8D...n2qc6rz24Ed0ROCHKZ2NK8xe2eTomAjEqVuepdxNo27V+zROEfK4tS5mld6y9e5jWqqdkpz0Ri6jWKdvM7W6rznOvYcxq0ae6qj9I+3qzIuVWTc6y9u5rWqpqrWm75bkqjR29+8Ncxq0YcyaEtPaRS27+VkRozsd8q1IuNWe0toq+jevN405+9l+rz+92905jWq2N8emtyY2tSdsFbkIoqzQIhzUueOB9.evyRWqpa9Or+I27po29s5jWpzG6odxt4EJkRO2M9dc1q0EQmcV28d9q1M+QV7P5W+COKMd2t4y1vO768iS+v+ya1IuV.....vEK5AiHQOX...b9SOXDI5AiHQOX.cE8fc4mdvd3nGrK+zC1CN8fc4mdvt7SOXW9oGL...JOe55A.........fBZ6oq7PqfvX1hoh3mPo83YoW3q+eT5Y.bI2Yo2NcVpaJX8NmkRWqe+7N3BoqcsTZvvt5U6rTJ0u+Whc0626RmcVJUMraJQ91+r2tSdctHq6d+d2YmOPUZul5ROi2i6b1s6r2yeV5Nc1e5PW898H3ZUm0Yum+JW6rT5s5l+s3Ew2ueQ0UtR28d96348RQLd2Qc164eiWuadXwA.........P+ldvHRzCFQidv.5B5A6xO8f8vQOXW9oGrGb5A6xO8fc4mdvt7SOX...Td9MI...........ET83QooBIf.YyIKK8Dfroc60K8D...............fNjdvHZzCFQhdv........nuyQLF..........JrgCGT5I.YyddHsPfTOdTom................zwzCFQhdvHRzCF........8cNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.......................................8TNhw.......................................zS4HFC......................................POkiXL.................................7+wd2c8zXWY4wg2PwXJyKiMUvDM2NR8sy8y0yW8bGIiTrFIHpsPtIBQraB3lfApNAp4pVJJpegR4n8xm8544Cf0eo5bvRV0Os.....fFkiXL.......................................MJGwX.......................................ZTNhw.......................................znbDiA......................................nQ4HFC......................................PixQLF......................................fFkiXL.......................................MJGwX.......................................ZTNhw.......................................znbDiA......................................nQ4HFC......................................PixQLF......................................fFkiXL.......................................MJGwX.......................................ZTNhw.......................................znbDiA......................................nQ4HFC......................................PixQLF......................................fFkiXL.......................................MJGwX.......................................ZTNhw.......................................znbDiA......................................nQ4HFC......................................PixQLF......................................fFkiXL.......................................MJGwX.......................................ZTNhw.......................................znbDiA......................................nQ4HFC......................................PixQLF......................................fFkiXL.......................................MJGwX.......................................ZTNhw.......................................znbDiA......................................nQ4HFC......................................PixQLF......................................fFkiXL.......................................MJGwX.......................................ZTNhw.......................................znbDiA......................................nQ4HFC......................................PixQLF......................................fFkiXL.......................................MJGwX.......................................ZTNhw.......................................znbDiA......................................nQ4HFC......................................PixQLF......................................fFkiXL.......................................MJGwXfMFe+7aidBPUM9nQQOAnZ1dq2E8D...............fNjdvHazCFYhdv...............nsnGLxF8fQlnGL9b3HFCrwX88OUlbxwQOCnddcmnW.TMe229CQOA...............nCoGLRG8fQhnGL...............ZK5AizQOXjH5AiOGNhw.aTd7gWhdBP0bw4KidBP0r35UkwGMJ5Y................cH8fQlnGLxD8fA..............P6QOXjI5AiLQOX74vQLFXixYSupLX2AQOCnJVb8pxjSNN5Y.0yq6D8B...............fNjdvHSzCFoidv...............nonGLxD8fQ5nGLdibDiA1nr99mJiGOJ5Y.UyiO7RzS.plKNeYzS................5P5AirQOXjI5AC..............f1hdvHazCFYhdv3sxQLFXiyc27bzS.plyldUzS.plEWup7ES9Pzy................5P5AiLQOXjI5AC..............f1idvHSzCFYhdv3sxQLFXiyzSmWFr6fnmATEqu+oxIe4jnmATMOu9SQOA...............nCoGLxD8fQ1nGL...............ZK5AiLQOXjM5Ai2BGwXfMRiFMJ5I.Uyc27bzS.plyldUzS................5X5AiLQOXjI5AC..............f1idvHSzCFYhdv3svQLFXizkytM5I.UyzSmWFr6fnmATEqu+oxjSNN5Y................cH8fQlnGLxD8fA......Xhl+zA...B.IQTPTA.......P6QOXjI5AiLQOX7V3HFCrQZ9rkkCNb+nmATMiGOJ5I.Uype7iQOA...............nCoGLxF8fQlnGL...............ZK5AirQOXjI5Ai+UbDiA1XMb3dQOAnZVb0OE8DfpY5oyKC1cPzy................5P5AiLQOXjI5AC..............f1idvHSzCFYhdv3eEGwXfMVe229CQOAnZNe5UkCNb+nmATMiGOJ5I................cH8fQlnGLxF8fA..............PaQOXjI5AirQOX7OiiXLvFqEWupL9HeIF4wvg6E8Dfp4tadN5I................cH8fQ1nGLxD8fA..............PaQOXjM5AiLQOX7OiiXLvlsW2I5E.UykytM5I.UyzSmWN3v8idF...............PWROXjH5AiLQOX...............zfzCFIhdvHSzCF+y3a+A1ncw4KKe3+3cQOCnJlOaY4+9+4+rr5t+RzSAphgC2q7vOsN5Y....PPd7urcYq28oN4y5W9qa0IeN74YmsNr7oxqcxm01k+sN4yYS0GeZqxO+ycym0mdo6dd26gucaWdeYqs5lmS2prcm74rI6mtcy64gM02C2TsyVihdB76zl36g.......PNnGLxD8fQ1nGL...fbSGJ8e5A6saSsCEuG91oGrOOahcnro9d3lJ8f0+sI9dH.......jC5AiLQOXjM5Ai+QbDiA1ns35Uk+v+0en7i+4aidJPc7puZl73xY2VF9uG8J....HJu7KkR4WDSYe1VkcJ9Wv2lWeoTdcCLxcuG91sU4cksJ9OU0a0u7wMumq1TeObS01kAQOA9cZS78P.......HGzCFoidvHQzCF...PtoCk9O8f81so1gh2Ce6zC1mmMwNT1TeObSkdv5+1DeOD.......xA8fQ5nGLRD8fw+HaG8..3ekmW+onm.TMWb9xnm.TMymsrbvg6G8L...............fNjdvHSzCFYhdv...............n8nGLxD8fQlnGL9GwQLFXi2YSuJ5I.UyhqWUFeznnmATM6r86idB...............PGROXjI5AirQOX...............zVzCFYhdvHazCF+83HFCrwa88OUlbxwQOCnZ94O5qmIOt37kQOA...............nCoGLxF8fQlnGL...............ZK5AirQOXjI5Ai+d7WAA5EV8ieL5I.UyYSuJ5I.UyhqWUFeznnmA...............zgzCFYhdvHSzCF...............sG8fQlnGLxD8fweONhw.8BSOcdYvtChdFPUr99mJSN43nmATOutSzK................5P5AiLQOXjN5AC..............flhdvHSzCFoidv32vQLFn2X73QQOAnZd7gWhdBP0L8a99nm................zwzCFYhdvHSzCF...............sG8fQlnGLxD8fwukiXLPuwc27bzS.plu9qlUFr6fnmATEqu+oxjSNN5Y................cH8fQlnGLxD8fA..............P6QOXjI5AiLQOX7a4HFCzaL8z4kCNb+nmATMiGOJ5I.UyiO7RzS................5P5AirQOXjI5AC..............f1hdvHazCFYhdv3WyQLFnWY3v8hdBP0b2MOG8Dfp4roWE8D...............fNldvHSzCFYhdv...............n8nGLxD8fQlnGL90bDiA5Utb1sQOAnZld57xfcGD8LfpX88OUN4KmD8L...............fNjdvHSzCFYhdv...............n8nGLxD8fQlnGL90bDiA5UlOaY4fC2O5Y.UynQihdBP0b2MOG8D...............fNjdvHazCFYhdv...............nsnGLxF8fQlnGL9abDiA5c1Y62G8Dfp4xY2F8DfpY5oyKC1cPzy................5P5AiLQOXjI5AC..............f1idvHSzCFYhdv3uwQLFn24hyWF8DfpY9rkkCNb+nmATMiGOJ5I................cH8fQlnGLxF8fA..............PaQOXjI5AirQOXTJNhw.8PKtdUY7Q9RLxigC2K5I.Uye5OdazS................5P5AirQOXjI5AC..............f1hdvHazCFYhdvnTbDiA5qdcmnW.TMe229CQOAnZlOaY4fC2O5Y................cI8fQhnGLxD8fA..............PCROXjH5AiLQOXTJNhw.8TS+luO5I.UyhqWUFeznnmATMCGtWzS................5P5AiLQOXjM5AC..............f1hdvHSzCFYidvvQLFnWZ88OUlbxwQOCnddcmnW.TMWN61nm................zgzCFoidvHQzCF...............sE8fQ5nGLRD8fgiXLPu0iO7RzS.plKNeYzS.pl4yVVFeznnmA...............zgzCFYhdvHSzCF...............sG8fQlnGLxD8fgiXLPu0YSuJ5I.UyhqWUlbxwQOCnddcmnW................zgNa5UkA6NH5Y.UgdvHczCF...............ME8fQlnGLRG8fkZNhw.8Vqu+oxIe4jnmATMO9vKQOAnZt37kQOA...............nCs99mJiGOJ5Y.UidvHSzCF...............sE8fQ1nGLxD8fkaNhw.8Z2cyyQOAnZNa5UQOAnZVb8pxWL4CQOC...............nCoGLxD8fQlnGL...............ZO5AiLQOXjI5AK2bDiA50ld57xfcGD8LfpX88OUlbxwQOCnZdd8mhdB...............PGROXjI5AirQOX...............zVzCFYhdvHazCVd4HFCz6Md7nnm.TMq9wOF8Dfp4roWE8D...............fNldvHSzCFYhdv...............n8nGLxD8fQlnGr7xQLFn26O8GuM5I.UyzSmWFr6fnmATEqu+oxjSNN5Y................cH8fQlnGLxD8fA..............P6QOXjI5AiLQOX4kiXLPu27YKKGb39QOCnZFOdTzS.plGe3knm................zgzCFYidvHSzCF...............sE8fQ1nGLxD8fkSNhw.MggC2K5I.Uyhq9onm.TMe8WMqLX2AQOC...............nCoGLxD8fQlnGL...............ZO5AiLQOXjI5AKmbDiAZBWN61nm.TMmO8pxAGtezy.plwiGE8D...............fNjdvHSzCFYidv...............nsnGLxD8fQ1nGr7wQLFnILe1xx3i7kXjGCGtWzS.pl6t44nm................zgzCFYidvHSzCF...............sE8fQ1nGLxD8fkONhw.siW2I5E.UykytM5I.UyzSmWFr6fnmA...............zkzCFIhdvHSzCF...............MH8fQhnGLxD8fkONhw.MiKNeYzS.pl4yVVN3v8idFP0LZznnm................zgzCFYhdvHazCF...............sE8fQlnGLxF8fkKNhw.MiEWup7ES9Pzy.plc198QOAnZtb1sQOA...............nCoGLxF8fQlnGL...............ZK5AirQOXjI5AKWbDiAZJOu9SQOAnZt37kQOAnZlOaY4fC2O5Y................cH8fQlnGLxD8fA..............P6QOXjI5AiLQOX4hiXLPS4roWE8DfpYw0qJiOZTzy.plcGrWzSn24ca+tnm.TM9gLHat6OuN5I.............vua5AiLQOXjM5A6ymdvHSzCFYidv.............ZA5AiLQOXjM5A6yWesGLGwXflx56epL4jiidFP07yezWkSd7G++9gnmPuyhq9onm.TMCG5Gxf7X7QiJKtdUzy.............fe2zCFYidvHSzC1mO8fQlnGLxD8fA............zJzCFYidvHSzC1mu9ZOX9Ka.MmGe3knm.TMmM8pnm.TMKtdUY7QihdF8FGb39ky82HHQ9tu0OjAIxq6D8B.............nynGLxD8fQlnGrOO5AirQOXjJ5AC............ngnGLxD8fQlnGrOO84dvbDiAZNe8WMqr8V9yajCqu+oxjSNN5Y.0iHceyFNbunm.TMiOZTYw0qhdFP0L8a99nm..............cF8fQlnGLRG8f8loGLxD8fQ1nGL............fVhdvHSzCFoidvdy5y8f4awAZRO9vKQOAnZ77NYxEmuL5Izab4raidBP83GvfDYxIGWVe+SQOC.............5T5igLwy6jI5A6sSOXjJ5AiDQOX.............sH8wPl34cxD8f810m6ASYO.Mou9qlE8Dfpwy6jIKtdUYw0qhdFa7FeznxY+uWD8LfpwOfAYhefZ............fVj9XHS77NYhdvdazCFYidvHSzCF............PKReLjIddmLQOXuM88dv1N5A....crW2I5E.UyjSN1OdAowfcGTNa5UQOC...............nKoGLRD8fQlnGL...............ZP87dvbDiA..nwbw4KidBP073CuD8DfpY73Qk02+Tzy................5P5AiLQOXjI5AC..............f1SeuGLGwX...ZHSN43xhqWE8LfpXvtCJmM8pnmATM2cyyQOA...............nCoGLxD8fQ1nGL...............ZKsPOXNhw...zPd7gWhdBP0Ld7nx56eJ5Y.UwAGteY5oyidF...............PGROXjI5AiLQOX...............zdZgdvbDiA..nQLX2AkyldUzy.pl6t44nm.TMCGtWzS................5P5AirQOXjI5AC..............f1RqzCliXL...MhwiGUVe+SQOCnJN3v8KSOcdzy.plKmcazS................5P5AiLQOXjM5AC..............f1RqzCliXL...Mh6t44nm.TMCGtWzS.plwGMpLe1xnmA...............zgzCFYhdvHSzCF...............smVoGLGwX...Z.Gb39komNO5Y.UykytM5I.0yq6D8B...............fNjdvHazCFohdv...............nozR8f4HFC..PCX3v8hdBP0L9nQk4yVF8Lfp4hy87N...............sD8fQlnGLxF8fA..............Paok5AyQLF..fFvkytM5I.0yq6D8BfpYxIGWVb8pnmA...............zgzCFohdvHQzCF...............smVpGLGwX...54N3v8KymsL5Y.UyEm64cxiGe3knm................zgzCFYidvHSzCF...............skVqGLGwX...541Y62G8Dfp4Kl7gxhqWE8Lfp4roWE8D...............fNjdvHSzCFYidv...............nszZ8f4HFC..PO2EmuL5I.Uyyq+TzS.plS9xIk02+Tzy................5P5AiLQOXjI5AC..............f1Sq0CliXL...8XewjOTVb8pnmATMmM8pnm.TM2cyyQOA...............nCoGLxF8fQlnGL...............ZKsXOXNhw...zi875OE8Dfp4jubRY88OE8LfpXvtCJSOcdzy................5P5AiLQOXjI5AC..............f1SK1CliXL...8XmM8pnm.TM2cyyQOAnZFMZTzS................5X5AiLQOXjI5AC..............f1SK1CliXL...8Tm7kSJqu+onmATEC1cPY5oyidFP0b4raidB...............PGROXjI5AirQOX...............zVZ0dvbDiA..nm5tadN5I.UynQihdBP0bvg6WlOaYzy................5P5AiLQOXjI5AC..............f1Sq1CliXL...8PC1cPY5oyidFP0b4raidBP0ry1uO5I................cH8fQ1nGLxD8fA..............Paok6AyQLF..fdnQiFE8Dfp4fC2uLe1xnmATMWbtm2A..............nknGLxD8fQ1nGL...............ZKsbOXNhw...zCc4raidBP0ry1uO5I.UyWL4CkEWuJ5Y................cH8fQlnGLxD8fA........++s2cPuswUVZX3KFvhT1EEDUJYpHopGQJ.QtQZy7+eY1kjEsP.RZDidb5Ldbr6NNFtii6fFIyrHalEMFDaScOEqyyyufu.PPDQ326A......FeFy8f4HFC..vdl4G1VdxieQzy.pl+7W4y6jG+i27+D8D...............fcH8fQ1nGLxD8fA..............v3xXuGLGwX...1yLa5CidBP0r33iJO+YuJ5Y.UyWd2SidB...............vNjdvHSzCFYidv...............XbYr2CliXL...6Y95u36hdBP07O+Y+YqjGOZ4Ik2752F8L...............fcH8fQlnGLxD8fA..............v3yXuGL0+...vdjEGeT44O6UQOCnZ9x6dZzS.plW88+bzS................1gzCFYidvHSzCF...............iKYnGLGwX...1i7O+Y+uvSd7nkmTdyqeazy.phoylVt6SeRzy................1gzCFYhdvHSzCF...............iOYnGrw++EB..vHxWd2SidBP07pu+midBP0rXwQQOA...............XGSOXjI5AiLQOX...............L9jgdvbDiA..XOwiVdR4Mu9sQOCnJlNaZ4tO8IQOCnZ9lu9kQOA...............XGROXjI5AirQOX...............LtjkdvbDiA..XOwq99eN5I.UyhEGE8DfpY9gskm73WD8L...............fcH8fQlnGLxD8fA..............v3SV5AyQLF..f8.SmMsb2m9jnmATMeyW+xnm.TMyl9vnm................rCoGLxF8fQlnGL...............FWxTOXNhw...rGXwhihdBP0L+v1xSd7KhdFP070ew2E8D...............fcH8fQlnGLxF8fA..............v3Rl5AyQLF..f8.eyW+xnm.TMyl9vnm.TMKN9nxye1qhdF...............vNjdvHSzCFYhdv...............X7IS8f4HFC..v.27CaKO4wuH5Y.UyW+EeWzS.pmecRzK................1gzCFYidvHUzCF...............iJYqGLGwX...F3dvCdXzS.plEGeT44O6UQOCnZt6y+1nm................rCoGLxD8fQ1nGL...............FWxVOXNhw...Lv8m9ieWzS.pmecRzK.plGs7jxad8aidF...............vNjdvHUzCFIhdv...............X7Ia8f4HFC..v.1hiOp77m8pnmATM284eazS.ple5G+knm................rCoGLxF8fQlnGL...............FWxXOXNhw...Lj8qShdAP07nkmTdyqeazy.phoylV9rO4wQOC...............XWROXjH5AiLQOX...............LBkvdvbDiA..X.6tO+aidBP07S+3uD8DfpYwhihdB...............vNldvHSzCFYhdv...............X7Ii8f4HFC..v.0iVdR4Mu9sQOCnJlNaZ4y9jGG8Lfp44O8uG8D...............fcH8fQlnGLxF8fA..............v3RV6AyQLF..fApe5G+knm.TMKVbTzS.pl4G1V9p6dZzy................1gzCFYhdvHSzCF...............iOYsGLGwX...FflNaZ4y9jGG8Lfp44O8uG8Dfp4AO3gQOA...............XGROXjM5AiLQOX...............Ltj4dvbDiA..X.ZwhihdBP0L+v1xWc2SidFP07m9ieWzS................1gzCFYhdvHazCF...............iKYtGLGwX...Ff9g+1+H5I.UyCdvCidBP0r33iJO+YuJ5Y................6P5AiLQOXjI5AC..............fwmL2CliXL...CLyOrsb2m9jnmATM+kG+xnm.TO+5jnW................rCoGLxF8fQpnGL...............FUxdOXNhw...Lv7fG7vnm.TMKN9nxSd7KhdFP07m+JedG..............fwD8fQlnGLxF8fA..............v3R16AyQLF..fAl+xieYzS.pmecRzK.plGs7jxye1qhdF...............vNjdvHUzCFIhdv...............X7I68foNH...FP9u9OeY4IO9EQOCnJ9g+5aJ+ve8MQOCnZdw+8OF8D...............fcH8fQlnGLxF8fA..............v3hdvbDiA..XPI6+AJjKO+YuJ5I.U0Wc2SidB...............vNjdvHSzCFYidv...............XbQOXkx+VzC........................................te3HFC......................................vHkiXL.......................................iTNhw.......................................LR4HFC......................................vHkiXL.......................................iTNhw.......................................LR4HFC......................................vHkiXL.......................................iTNhw.......................................LR4HFC......................................vHkiXL.......................................iTNhw.......................................LR4HFC......................................vHkiXL.......................................iTNhw.......................................LR4HFC......................................vHkiXL.....6wZO7fnm.TMK5ZidBP0362A..............X7Qu.jI5AiLw2uC.............6CbDiA....XO04W1UZmOK5Y.UyM+G+6QOAnZ74c...............FWzCFYi9XHS74c.............XefiXL.....6o9Cq5hdBP0r95SKSmMI5Y.UQSyjRuuiG..............fQE8fQlnGLxD8fA.............6KbDiA....XOTSyjx5MmF8LfpY81kQOAnZ5W0UZl5QZA..............fwB8fQ1nGLxD8fA.............6KbDiA....XOj.9ISZO7fxxyVD8LfpYysmG8D...............fcH8fQlnGLxF8fA.............6KbDiA....XOz1a6idBP0r4FA7Sdrnqsbb27nmA...............rCoGLxD8fQlnGL.............XehiXL.....6YVd1Qk14yhdFP0zu5jnm.TMau4hnm....oxxyNJ5I.Uy4W1E8DfpZQWazS..........nTJ5Ai7QOXjI5AC..f5ROXjI5AirQOX........0giXL.....6YVu4znm.TMmeYmGoERillIk9UBHB..fZZyMmG8Dfp4i5Z8vUPp3wAE.........FJzCFYhdvHSzCF...0mdvHSzCFYidv........pCGwX.....1izzLwiVAoxUaVF8DfpoeUWoY5jnmA...oxzYSJqu1u0B4wevikHIR+ptRSieqE.........HV5AirQOXjI5AC..f5SOXjM5AiLQOX........0giXL.....6QVuU.+jGsGdPoe0IQOCnZ7c7...DiKV8QQOAnZVu4TQ7SZzLcRo2C0B.........DLsBPlnGLxFeGO...wPOXjI5AtGpHLB..KDQRDEDUiLQOX........0giXL.....6QVu4znm.TMquV.+jGsGdPY4YKhdF...jR8qNozd3AQOCnZ7nIRlr41yidB.........PxoGLxD8fQlnGL...hidvHazCFYhdv........t+4HFC....vdhEcski6lG8LfpY81ON5I.UylaDPA...QxCmHYx1a6idBP0bb2bOLQ.........PXzCFYidvHSzCF...wROXjI5AiLQOX........2+bDiA....XOw1atH5I.Uy4W1UZmOK5Y.UyUaNM5I...Pp4gSjLoc9rxht1nmATMdrPA........fnnGLxD8fQ1nGL...hkdvHSzCFYidv........te4HFC....vdfllIk9UcQOCnZtZyxnm.TMqu9zRyzIQOC...Rs14yJmeoe6ExCOPtjIdrPA........fHnGLxF8fQlnGL...hmdvHazCFYhdv........te4HFC....vdf9UcBZlz32djVNI5Y.Uy5sdjV...XHvCnHYR+ptRSieuQxgloSJqu1CWA.........TW5AiLQOXjM5AC..fgA8fQlnGLxD8fA.......b+xQLF....f8.at87nm.TMB3mLo8vCJKOaQzy....JkR+pSDwOoQyzIk9UcQOCnZtX0GE8D.........fjQOXjI5AiLQOX...LbnGLxD8fQ1nGL.......f6ONhw.....Lvsnqsbb27nmATMausO5I.Uyla7nDA..vPhGRQxDOTtjI8qNozd3AQOC.........HIzCFYidvHSzCF...CK5AiLQOXjI5AC.......39iiXL.....Cbau4hnm.TMKO6nR67YQOCnZ5WcRzS....9+vCoHYxwcyKK5ZidFP0r9ZOLQ.........PcnGLxD8fQ1nGL...FVzCFYhdvHazCF.......v8CGwX.....F35W0E8DfpY8lSidBP0b9kcdjV...Xfoc9rxxyNJ5Y.UieKFxj0a+3nm..........jD5AiLw+FjHSzCF...CO5AirwuECYhdv........te3HFC....v.15qOszLcRzy.phllIBkfT4pMKidB...v+B9aSIStxm2IQZmOqb9kdjnA........f6W5AiLQOXjM5AC..fgI+sojI5AiLQOX........2ObDiA....X.a8VAMSd3y6jIsGdPoe0IQOC...3eg9UcklFOhnjCMSmTVesGtBxCOhn.........v8M8wPl3y6jI5AC..fgK8fQlnGLxF8fA.......r64HFC....v.U6gGTVd1hnmATMausO5I.Uy5qEHA...CUMSmT5W0E8LfpwCIJYR+pS7vDA.........2azCFYidvHSzCF...CW5AirQOXjI5AC.......X2yQLF....fApM2bdzS.plEcsk14yhdFP0rd6GG8D...f+er4V+tLjGKOaQo8vChdFP03gZA.........tunGLxD8fQ1nGL...F1zCFYhdvHazCF.......vtkiXL.....CTWs4znm.TMau4hnm.TMmeYmGoE...F3NtadYQWazy.pl0WKhexis21G8D.........fQJ8fQlnGLxD8fA..vvmdvHazCFYhdv........1sbDiA....X.Z80mVZlNI5Y.UQSyjR+ptnmATMWsQHP...rOXsGTTRj0a+3nm.TMsymUVd1QQOC.........XjQOXjI5AirQOX...rePOXjI5AiLQOX........6VNhw.....L.sdqflIO5W04QZgz32djVNI5Y....+NbkGsBRj14yJmeoGUTxCOLQ.........vtldvHSzCFYhdv...X+gdvHSzCFYidv........1cbDiA....Xfo8vCJKOaQzy.plM2ddzS.pFOJQ...r+nY5jx5qE0L4wUa72rRdzupqzz3gzE.........1MzCFYidvHSzCF...6OzCFYidvHSzCF.......vtiiXL.....CLatQ.+jGK5ZKG2MO5Y.Uy1a6idB...v6.O7bjI8qNQD+jFMSmT5W0E8L.........fQB8fQlnGLxF8fA..v9E8fQlnGLxD8fA.......r63HFC....v.S+pShdBP0r8lKhdBP0r7riJsymE8L...f2AKOaQo8vChdFP03gZgLYysd.oA........fcC8fQlnGLxD8fA..v9G8fQ1nGLxD8fA.......ra3HFC....v.x4W1InYRillIk9UcQOCnZVu4znm....7dXyMhZl7X6s8QOAnZNtadYQWazy..........1yoGLxD8fQ1nGL...1OoGLxD8fQlnGL.......fcCGwX.....FPtZyxnm.TM8q5JMSmD8LfpnoYhGsB...1S0u5jnm.TMsymUVd1QQOCnZ760..........enzCFYhdvHSzCF...6uzCFYhdvHa760........7gyQLF....fAh1COPDDjJq25QZg7vm2A..X+U67YkyurK5Y.UiH9IStxm2A........fO.5AirQeLjI97N...6uzCFYidvHSzCF.......vGNGwX.....FHVesflIOZO7fxxyVD8LfpY6s8QOA...3CvUa761PdrdyokllIQOCnJZlNor9ZObE.........v6G8fQlnGLxF8fA..v9M8fQlnGLxD8fA.......7gyQLF....fAh0a+3nm.TMat47nm.TMK5ZKsymE8L...fO.8qNozd3AQOCnZ5W0E8DfpY8VOLQ.........v6G8fQlnGLxD8fA..v9O8fQ1nGLxD8fA.......7gwQLF....fAfyurSPyjJWs4znm.TMau4hnm....rCbwkeTzS.plM25AGk7X4YK7vDA.........uyzCFYidvHSzCF...iC5AiLQOXjI5AC.......3CiiXL.....C.WsYYzS.pl0WeZoY5jnmATEMMSJ8q5hdF...vNv1a6idBP0bb27xht1nmATMatwC0B.........7tQOXjI5AiLQOX...LdnGLxD8fQ1nGL.......f2eNhw.....DreKn4ShdFP0rdqGoExi9UcdjV...Xjnc9rxxyNJ5Y.Uy1atH5I.Uieid.........3cgdvHazCFYhdv...X7POXjM5AiLwuQO.......v6OGwX.....Bl.9ISZO7fxxyVD8LfpYysmG8D...fcn0aNM5I.US+ptnm.TMsymUN+RelG.........98QOXjI5AirQOX...LtnGLxD8fQlnGL.......f2eNhw.....Drs21G8DfpYyMB3m7XQWa43t4QOC...XGZ8lSKMMShdFPUzLcRY80dnVHOtZiGXZ.........32G8fQlnGLxD8fA..v3idvHSzCFYidv........d+3HFC....PfVd1Qk14yhdFP0zu5jnm.TMau4hnm....bOneUWzS.pl0aEwO4Q+pSJsGdPzy..........F3zCFYidvHSzCF...iS5AiLQOXjI5AC.......38iiXL.....AZ8lSidBP0b9kcdjVHMZZlHjM...Fo1b64QOAnZVd1BQ7SpbwkeTzS..........F3zCFYhdvHSzCF...iW5AiLQOXjM5AC.......3cmiXL.....AooYhGsBRkq1rL5I.US+ptRyzIQOC...3dvwcyKK5ZidFP0r4FOTKjGausO5I..........CX5AirQOXjI5AC..fwK8fQ1nGLxD8fA.......7t6+EXBgcDVtu8xA.....IUjSD4pPfIH" ],
					"embed" : 1,
					"id" : "obj-163",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 712.0, 307.0, 100.140000000000001, 10.0 ],
					"pic" : "Macintosh HD:/Users/nao/git/RhythmVAE_M4L/images/ui-background1.png",
					"presentation" : 1,
					"presentation_rect" : [ -34.978898000000001, 0.0, 1679.1400000000001, 169.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"midpoints" : [ 30.5, 631.5, 267.166666666666629, 631.5 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"order" : 2,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"midpoints" : [ 30.5, 631.5, 146.803234501347646, 631.5 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 7 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 212.803234501347674, 335.75, 95.0, 335.75 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 8 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"order" : 0,
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 1138.5, 152.496353149414062, 1052.0, 152.496353149414062 ],
					"order" : 1,
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"order" : 1,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 1138.5, 114.878646850585938, 1230.66666666666697, 114.878646850585938 ],
					"order" : 0,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"midpoints" : [ 1230.66666666666697, 228.314323425292969, 1230.66666666666697, 228.314323425292969 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 30.5, 232.185676574707031, 95.0, 232.185676574707031 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"order" : 1,
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"order" : 4,
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"order" : 3,
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 2,
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"order" : 0,
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 1 ],
					"midpoints" : [ 1230.66666666666697, 459.5, 1377.833333333333258, 459.5 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 2 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"order" : 1,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"order" : 0,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"order" : 2,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"order" : 3,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"order" : 7,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"order" : 6,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"order" : 4,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"order" : 5,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"order" : 8,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"source" : [ "obj-130", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 30.5, 171.496353149414062, 95.0, 171.496353149414062 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"order" : 1,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 2 ],
					"midpoints" : [ 409.75, 172.841014862060547, 427.5, 172.841014862060547 ],
					"order" : 0,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 1 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-148", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"source" : [ "obj-148", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-148", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-148", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-148", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-148", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-148", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-148", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.501961, 0.501961, 0.501961, 0.901961 ],
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 4 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 3 ],
					"midpoints" : [ 636.0, 191.466014862060547 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"order" : 0,
					"source" : [ "obj-156", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"midpoints" : [ 392.75, 693.0, 266.166666666666629, 693.0 ],
					"order" : 1,
					"source" : [ "obj-156", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"order" : 0,
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"order" : 1,
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 1 ],
					"source" : [ "obj-158", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 1 ],
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-160", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-162", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 0 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"midpoints" : [ 1780.5, 411.128646850585938, 1557.0, 411.128646850585938 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 1 ],
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-184", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 635.5, 360.223308563232422, 95.0, 360.223308563232422 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-186", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-186", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"source" : [ "obj-187", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 1772.0, 750.5, 1401.5, 750.5 ],
					"source" : [ "obj-187", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-192", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 1 ],
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-193", 0 ],
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 1 ],
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 2 ],
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"order" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 517.5, 358.75, 95.0, 358.75 ],
					"order" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 8 ],
					"source" : [ "obj-201", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"source" : [ "obj-203", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 7 ],
					"source" : [ "obj-207", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 6 ],
					"source" : [ "obj-208", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"midpoints" : [ 1250.66666666666697, 885.0, 1660.833333333333485, 885.0 ],
					"source" : [ "obj-209", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-209", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 5 ],
					"source" : [ "obj-210", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 4 ],
					"source" : [ "obj-211", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 3 ],
					"source" : [ "obj-212", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 2 ],
					"source" : [ "obj-213", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 1 ],
					"source" : [ "obj-214", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"source" : [ "obj-215", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 2 ],
					"order" : 1,
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 3 ],
					"order" : 0,
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"midpoints" : [ 697.5, 144.341014862060547, 636.0, 144.341014862060547 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 517.5, 149.341014862060547, 517.5, 149.341014862060547 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"midpoints" : [ 1402.5, 558.5, 1699.0, 558.5 ],
					"source" : [ "obj-231", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-221", 0 ],
					"source" : [ "obj-231", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"midpoints" : [ 95.0, 401.75, 123.64285714285711, 401.75 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 1 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 347.0, 440.0, 611.5, 440.0 ],
					"order" : 1,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"midpoints" : [ 1135.0, 474.0, 1328.5, 474.0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"order" : 0,
					"source" : [ "obj-38", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-38", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 2 ],
					"order" : 1,
					"source" : [ "obj-38", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 1 ],
					"source" : [ "obj-38", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-38", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 281.222222222222229, 495.5, 300.666666666666629, 495.5 ],
					"source" : [ "obj-38", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 141.555555555555543, 475.75, 98.166666666666657, 475.75 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-38", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-38", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 2 ],
					"order" : 2,
					"source" : [ "obj-38", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 1 ],
					"source" : [ "obj-38", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"midpoints" : [ 1634.5, 793.5, 1416.5, 793.5 ],
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"order" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 2 ],
					"midpoints" : [ 1477.0, 489.75, 1427.166666666666742, 489.75 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 30.5, 677.083328247070312, 11.75, 677.083328247070312, 11.75, 363.0, 95.0, 363.0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"midpoints" : [ 1854.0, 754.121353149414062, 1634.5, 754.121353149414062 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 737.48541259765625, 153.371353149414062, 517.5, 153.371353149414062 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"order" : 0,
					"source" : [ "obj-60", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 1,
					"source" : [ "obj-60", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 392.75, 358.125, 95.0, 358.125 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-196", 0 ],
					"order" : 0,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"order" : 1,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 2 ],
					"midpoints" : [ 1619.0, 364.091014862060547, 1566.0, 364.091014862060547 ],
					"source" : [ "obj-69", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 155.303234501347674, 563.0, 30.5, 563.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 1 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 271.166666666666629, 336.5, 95.0, 336.5 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 2 ],
					"midpoints" : [ 529.935566663742065, 511.0, 610.493555545806885, 511.0, 610.493555545806885, 306.25, 552.75, 306.25 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 2 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 1 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 3 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 123.64285714285711, 336.185676574707031, 95.0, 336.185676574707031 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-93", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"midpoints" : [ 146.803234501347646, 688.5, 118.166666666666657, 688.5 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 20.5, 323.935676574707031, 95.0, 323.935676574707031 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 4 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 5 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 6 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "", 0 ],
					"source" : [ "obj-38", 8 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1" : [ "live.step[1]", "live.step", 0 ],
			"obj-100" : [ "live.numbox[12]", "live.numbox[5]", 0 ],
			"obj-112" : [ "live.numbox[13]", "live.numbox[5]", 0 ],
			"obj-116" : [ "live.menu[1]", "live.menu", 0 ],
			"obj-122" : [ "live.menu[2]", "live.menu", 0 ],
			"obj-123" : [ "live.numbox[14]", "live.numbox", 0 ],
			"obj-142" : [ "live.tab[2]", "live.tab[2]", 0 ],
			"obj-144" : [ "live.tab[1]", "live.tab[1]", 0 ],
			"obj-147" : [ "shuffle[1]", "shuffle", 0 ],
			"obj-15" : [ "live.menu", "live.menu", 0 ],
			"obj-150" : [ "live.text[7]", "live.text[7]", 0 ],
			"obj-151" : [ "live.button", "live.button", 0 ],
			"obj-154" : [ "noise range", "noise", 0 ],
			"obj-157" : [ "live.step[2]", "live.step", 0 ],
			"obj-161" : [ "live.grid[1]", "live.grid", 0 ],
			"obj-162" : [ "live.tab[4]", "live.tab[3]", 0 ],
			"obj-164" : [ "live.text[16]", "live.text[16]", 0 ],
			"obj-179" : [ "live.text[17]", "live.text[16]", 0 ],
			"obj-18" : [ "live.grid", "live.grid", 0 ],
			"obj-195" : [ "live.numbox[16]", "live.numbox[16]", 0 ],
			"obj-197" : [ "transition", "Transition", 0 ],
			"obj-2" : [ "live.text[3]", "live.text", 0 ],
			"obj-201" : [ "live.text[6]", "live.text[6]", 0 ],
			"obj-203" : [ "live.button[4]", "live.button[4]", 0 ],
			"obj-207" : [ "live.text[8]", "live.text[6]", 0 ],
			"obj-208" : [ "live.text[9]", "live.text[6]", 0 ],
			"obj-210" : [ "live.text[10]", "live.text[6]", 0 ],
			"obj-211" : [ "live.text[11]", "live.text[6]", 0 ],
			"obj-212" : [ "live.text[12]", "live.text[6]", 0 ],
			"obj-213" : [ "live.text[13]", "live.text[6]", 0 ],
			"obj-214" : [ "live.text[14]", "live.text[6]", 0 ],
			"obj-215" : [ "live.text[15]", "live.text[6]", 0 ],
			"obj-22" : [ "pictslider", "pictslider", 0 ],
			"obj-221" : [ "live.button[1]", "live.button[1]", 0 ],
			"obj-24" : [ "X", "X", 0 ],
			"obj-25" : [ "live.menu[3]", "live.menu", 0 ],
			"obj-28" : [ "Y", "Y", 0 ],
			"obj-35" : [ "shuffle", "shuffle", 0 ],
			"obj-55" : [ "timeshift", "timeshift", 0 ],
			"obj-60::obj-22" : [ "pictslider[1]", "pictslider", 0 ],
			"obj-62" : [ "live.numbox[5]", "live.numbox[5]", 0 ],
			"obj-63::obj-6" : [ "loadPath", "loadPath", 0 ],
			"obj-65" : [ "live.numbox", "live.numbox", 0 ],
			"obj-66" : [ "z-popup-button", "z-popup-button", 0 ],
			"obj-67" : [ "live.text", "live.text", 0 ],
			"obj-68" : [ "live.text[1]", "live.text", 0 ],
			"obj-69" : [ "live.tab", "live.tab", 0 ],
			"obj-73" : [ "live.numbox[6]", "live.numbox[5]", 0 ],
			"obj-75" : [ "live.text[2]", "live.text", 0 ],
			"obj-78" : [ "live.tab[3]", "live.tab[3]", 0 ],
			"obj-83" : [ "live.numbox[3]", "live.numbox", 0 ],
			"obj-87" : [ "live.numbox[7]", "live.numbox[5]", 0 ],
			"obj-9" : [ "live.text[4]", "live.text", 0 ],
			"obj-90" : [ "live.numbox[8]", "live.numbox[5]", 0 ],
			"obj-96" : [ "live.numbox[9]", "live.numbox[5]", 0 ],
			"obj-97" : [ "live.numbox[10]", "live.numbox[5]", 0 ],
			"obj-98" : [ "live.numbox[11]", "live.numbox[5]", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "ui-background1.png",
				"bootpath" : "~/git/RhythmVAE_M4L/images",
				"patcherrelativepath" : "./images",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "rhythmvae.js",
				"bootpath" : "~/git/RhythmVAE_M4L",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "makenote_for_me.maxpat",
				"bootpath" : "~/git/RhythmVAE_M4L/subpatches",
				"patcherrelativepath" : "./subpatches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "shuffle_metro.maxpat",
				"bootpath" : "~/git/RhythmVAE_M4L/subpatches",
				"patcherrelativepath" : "./subpatches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "count_for_me.maxpat",
				"bootpath" : "~/git/RhythmVAE_M4L/subpatches",
				"patcherrelativepath" : "./subpatches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "setup_1_16.maxpat",
				"bootpath" : "~/git/RhythmVAE_M4L/subpatches",
				"patcherrelativepath" : "./subpatches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "list_dup.maxpat",
				"bootpath" : "~/git/RhythmVAE_M4L/subpatches",
				"patcherrelativepath" : "./subpatches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "M4L.api.ObserveTransport.maxpat",
				"bootpath" : "C74:/patchers/m4l/LiveAPI resources/abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "tap",
				"default" : 				{
					"fontname" : [ "Lato Light" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
